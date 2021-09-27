/*-----------------------------------------------------------------------------
 *
 * coarse_grained_rewrite.c
 *
 *
 *      AUTHOR: xing_niu
 *
 *
 *
 *-----------------------------------------------------------------------------
 */

#include "common.h"
#include "configuration/option.h"
#include "model/node/nodetype.h"
#include "log/logger.h"
#include "mem_manager/mem_mgr.h"
#include "model/query_operator/query_operator.h"
#include "model/query_operator/operator_property.h"
#include "model/expression/expression.h"
#include "provenance_rewriter/prov_utility.h"
#include "provenance_rewriter/coarse_grained/coarse_grained_rewrite.h"
#include "model/list/list.h"
#include "model/set/hashmap.h"
#include "metadata_lookup/metadata_lookup.h"
#include "provenance_rewriter/prov_schema.h"
#include "parameterized_query/parameterized_queries.h"
#include "sql_serializer/sql_serializer.h"
#include "sql_serializer/sql_serializer_postgres.h"

#define MAX_NUM_RANGE 10000
#define COMMA "-"

typedef struct AggLevelContext
{
	HashMap *opCnts;
} AggLevelContext;

static void loopMarkNumOfTableAccess(QueryOperator *op, HashMap *map);
static HashMap *bottomUpPropagateLevelAggregationInternal(QueryOperator *op, psInfo *psPara, AggLevelContext *ctx);

QueryOperator *
addTopAggForCoarse(QueryOperator *op)
{
    List *provAttr = getOpProvenanceAttrNames(op);
    List *projExpr = NIL;
    int cnt = 0;
    List *provPosList = NIL;
//    List *opParents = op->parents;

    HashMap *map = (HashMap *) getHeadOfListP((List *) GET_STRING_PROP(op, PROP_LEVEL_AGGREGATION_MARK));
    FOREACH(char, c, provAttr)
    {
        List *levelandNumFrags =  (List *) getMapString(map, c);
        int level =  INT_VALUE((Constant *) getNthOfListP(levelandNumFrags, 0));
        int numFrags =  INT_VALUE((Constant *) getNthOfListP(levelandNumFrags, 1));
        provPosList = appendToTailOfListInt(provPosList, cnt);
        AttributeReference *a = createAttrsRefByName(op, c);
        FunctionCall *f = NULL;
        if(getBackend() == BACKEND_ORACLE)
        {
			f = createFunctionCall(ORACLE_SKETCH_AGG_FUN, singleton(a));
			projExpr = appendToTailOfList(projExpr, f);
        }
        else if(getBackend() == BACKEND_POSTGRES)
        {
			//if(getBoolOption(OPTION_PS_SET_BITS))
			if(level == 0)
			{
				f = createFunctionCall(POSTGRES_SET_BITS_FUN, singleton(a));
				CastExpr *c = createCastExprOtherDT((Node *) f, POSTGRES_BIT_DT, numFrags, DT_STRING);
				projExpr = appendToTailOfList(projExpr, c);
			}
			else
			{
				f = createFunctionCall(POSTGRES_FAST_BITOR_FUN, singleton(a));
				projExpr = appendToTailOfList(projExpr, f);
			}
        }

        //FunctionCall *f = createFunctionCall ("BITORAGG", singleton(a));
        //projExpr = appendToTailOfList(projExpr, f);
        cnt++;
    }

    AggregationOperator *newOp = createAggregationOp(projExpr, NIL, op, NIL, provAttr);
    newOp->op.provAttrs = provPosList;

    switchSubtrees((QueryOperator *) op, (QueryOperator *) newOp);
    op->parents = singleton(newOp);
//    newOp->op.parents = opParents;

    return (QueryOperator *) newOp;
}


void
markTableAccessAndAggregation(QueryOperator *op, Node *psPara)
{
	FOREACH(QueryOperator, o, op->inputs)
	{
		if(isA(o,TableAccessOperator))
		{
			DEBUG_LOG("mark tableAccessOperator.");

			/* mark coarsePara info */
			SET_STRING_PROP(o, PROP_COARSE_GRAINED_TABLEACCESS_MARK, psPara);

		}
		if(isA(o,AggregationOperator))
		{
			DEBUG_LOG("mark aggregationOperator.");
			SET_BOOL_STRING_PROP(o, PROP_PC_SC_AGGR_OPT);
			//SET_BOOL_STRING_PROP(o, PROP_COARSE_GRAINED_AGGREGATION_MARK);
		}

		markTableAccessAndAggregation(o, psPara);
	}
}

void
autoMarkTableAccessAndAggregation(QueryOperator *op, Node *psPara)
{
	FOREACH(QueryOperator, o, op->inputs)
	{
		if(isA(o,TableAccessOperator))
		{
			// TableAccessOperator *tableOp = (TableAccessOperator *) o;
			DEBUG_LOG("mark tableAccessOperator.");

			/* mark coarsePara info */
			SET_STRING_PROP(o, PROP_COARSE_GRAINED_TABLEACCESS_MARK, psPara);
			//AUTO_HISTOGRAM_TABLEACCESS_MARK
		}
		if(isA(o,AggregationOperator))
		{
			DEBUG_LOG("mark aggregationOperator.");
			SET_BOOL_STRING_PROP(o, PROP_PC_SC_AGGR_OPT);
			//SET_BOOL_STRING_PROP(o, PROP_COARSE_GRAINED_AGGREGATION_MARK);
		}

		autoMarkTableAccessAndAggregation(o, psPara);
	}
}


void
markUseTableAccessAndAggregation(QueryOperator *op, Node *psPara)
{
	FOREACH(QueryOperator, o, op->inputs)
	{
		if(isA(o,TableAccessOperator))
		{
			DEBUG_LOG("mark use tableAccessOperator.");
			SET_STRING_PROP(o, USE_PROP_COARSE_GRAINED_TABLEACCESS_MARK, psPara);
		}
		if(isA(o,AggregationOperator))
		{
			DEBUG_LOG("mark aggregationOperator.");
			SET_BOOL_STRING_PROP(o, PROP_PC_SC_AGGR_OPT);
			SET_BOOL_STRING_PROP(o, USE_PROP_COARSE_GRAINED_AGGREGATION_MARK);
			//SET_BOOL_STRING_PROP(o, PROP_COARSE_GRAINED_AGGREGATION_MARK);
		}
		markUseTableAccessAndAggregation(o,psPara);
	}
}


void
markAutoUseTableAccess(QueryOperator *op, HashMap *psMap)
{

	FOREACH(QueryOperator, o, op->inputs)
	{
		if(isA(o,TableAccessOperator))
		{
			DEBUG_NODE_BEATIFY_LOG("QueryOperator :", (Node *) o);
			SET_STRING_PROP(o, AUTO_USE_PROV_COARSE_GRAINED_TABLEACCESS_MARK, psMap);
		}

		markAutoUseTableAccess(o, psMap);
	}
}


//void
//propagateLevelAggregation(QueryOperator *op)
//{
//	//R -> 1, S-> 1....
//	HashMap *map = NEW_MAP(Constant,Node);
//	bottomUpPropagateNumAggregation(op);
//}

void
bottomUpPropagateLevelAggregation(QueryOperator *op, psInfo *psPara)
{
	AggLevelContext *ctx = NEW(AggLevelContext);

	ctx->opCnts = NEW_MAP(Constant,Constant);
	bottomUpPropagateLevelAggregationInternal(op, psPara, ctx);
}

/**
 * @brief      propagate information about provenance sketch attributes (how many levels of aggregation and how many fragments.
 *
 * @details
 *
 * @param
 *
 * @return     void
 */
static HashMap *
bottomUpPropagateLevelAggregationInternal(QueryOperator *op, psInfo *psPara, AggLevelContext *ctx)
{
	HashMap *provAttrInfo = NEW_MAP(Constant,Node);

	// table access, determine provenance sketch attributes and append to list of provInfo hash maps
	if(isA(op, TableAccessOperator))
	{
		int cnt = mapIncrPointer(ctx->opCnts, op);
		TableAccessOperator *tbOp = (TableAccessOperator *) op;
		DEBUG_LOG("table-> %s", tbOp->tableName);
		/*propagate map: prov_R_A1 -> (level of agg, num of fragments)*/

		/*get num of table for ps attr*/
		int numTable = 0;
		if(HAS_STRING_PROP(op, PROP_NUM_TABLEACCESS_MARK))
			numTable = INT_VALUE(getNthOfListP((List *) GET_STRING_PROP(op, PROP_NUM_TABLEACCESS_MARK),cnt));

		/*get psInfo -> attrName and num of fragments*/
		//psInfo* psPara = (psInfo*) GET_STRING_PROP(op, PROP_COARSE_GRAINED_TABLEACCESS_MARK);
		if(hasMapStringKey((HashMap *) psPara->tablePSAttrInfos, tbOp->tableName))
		{
			List *psAttrList = (List *) getMapString(psPara->tablePSAttrInfos, tbOp->tableName);

			FOREACH(psAttrInfo,curPSAI,psAttrList)
			{
				int numFragments = LIST_LENGTH(curPSAI->rangeList);
				char *newAttrName = CONCAT_STRINGS(PROV_ATTR_PREFIX,
												   strdup(tbOp->tableName),
												   "_",
												   strdup(curPSAI->attrName),
												   gprom_itoa(numTable));

				List *vl = LIST_MAKE(createConstInt(0), createConstInt(numFragments-1));
				MAP_ADD_STRING_KEY(provAttrInfo, newAttrName, (Node *) vl);
				DEBUG_LOG("tableAccess mark map: %s -> count: %d, numFragments: %d", newAttrName, 0, numFragments-1);
			}
		}
		APPEND_STRING_PROP(op, PROP_LEVEL_AGGREGATION_MARK, provAttrInfo);
		return provAttrInfo;
	}

	// process children first (may do this multiple times for operators have multiple parents
	FOREACH(QueryOperator, o, op->inputs)
	{
		HashMap *childMap = bottomUpPropagateLevelAggregationInternal(o, psPara, ctx);
		unionMap(provAttrInfo, copyObject(childMap));
	}

	// if this is an aggregation we have to adapt increment number of aggregation levels
	if(isA(op, AggregationOperator))
	{
		DEBUG_LOG("table-> aggregation");
		FOREACH_HASH_ENTRY(kv, provAttrInfo)
		{
			List *v = (List *) kv->value;
			Constant *firstV = (Constant *) getNthOfListP(v, 0);
			incrConst(firstV);
		}
	}

	DEBUG_LOG("operator %s mark map: %s", NodeTagToString(op->type), nodeToString(provAttrInfo));
	APPEND_STRING_PROP(op, PROP_LEVEL_AGGREGATION_MARK, provAttrInfo);
	return provAttrInfo;

}



void
markNumOfTableAccess(QueryOperator *op)
{
	//R -> 1, S-> 1....
	HashMap *map = NEW_MAP(Constant,Constant);
	loopMarkNumOfTableAccess(op, map);
}

static void
loopMarkNumOfTableAccess(QueryOperator *op, HashMap *map)
{
	FOREACH(QueryOperator, o, op->inputs)
	{
		if(isA(o, TableAccessOperator))
		{
			TableAccessOperator *tOp = (TableAccessOperator *) o;
			Constant *ctableName = createConstString(strdup(tOp->tableName));
			int num = 0;
			if(MAP_HAS_STRING_KEY(map, tOp->tableName))
			{
				num = INT_VALUE((Constant *) MAP_GET_STRING(map, tOp->tableName));
				num++;
				MAP_ADD_STRING_KEY(map, tOp->tableName, createConstInt(num));
			}
			else
				MAP_ADD_STRING_KEY(map, tOp->tableName, createConstInt(1));


			int pnum = INT_VALUE((Constant *) MAP_GET_STRING(map, tOp->tableName));
			DEBUG_LOG("table: %s, num: %d", ctableName->value, pnum);

			if(HAS_STRING_PROP(o, PROP_NUM_TABLEACCESS_MARK))
			{
				SET_STRING_PROP(o, PROP_NUM_TABLEACCESS_MARK,
								appendToTailOfList(
									(List *) GET_STRING_PROP(o, PROP_NUM_TABLEACCESS_MARK),
									createConstInt(pnum)));
			}
			else
			{
				SET_STRING_PROP(o, PROP_NUM_TABLEACCESS_MARK, singleton(createConstInt(pnum)));
			}
		}

		loopMarkNumOfTableAccess(o, map);
	}
}

psInfo*
createPSInfo(Node *coarsePara)
{
	psInfo* result = makeNode(psInfo);
	List *coarseParaList = (List *) coarsePara;

	Constant *psType = (Constant *) getNthOfListP(coarseParaList, 0);
	result->psType = STRING_VALUE(psType);

	List *tablePSList = (List *) getNthOfListP(coarseParaList, 1);
	HashMap *map =  NEW_MAP(Constant,Node);

    FOREACH(KeyValue, tablesKV, tablePSList) //R-> [A 1,2,3,4 '101'] [B 1,2,3,4 '110'], S->......
    {
		List *attrPSInfoList = NIL;
		char *tableName = STRING_VALUE(tablesKV->key); //R
		FOREACH(List, l, (List *) tablesKV->value) //[A 1,2,3,4 '101'] [B 1,2,3,4 '110']
		{
			psAttrInfo *curPSAI = createPSAttrInfo(l, tableName);
			attrPSInfoList = appendToTailOfList(attrPSInfoList, curPSAI);
		}
		MAP_ADD_STRING_KEY(map, tableName, (Node *) attrPSInfoList);
    }
    result->tablePSAttrInfos = map;

    DEBUG_LOG("psInfo psType: %s", result->psType);
    HashMap *testMap = result->tablePSAttrInfos;
    List *listPSInfos = (List *) getMapString(testMap, "customer");
    FOREACH(psAttrInfo, psif, listPSInfos)
    {
     	DEBUG_LOG("psInfo attrName: %s", psif->attrName);
     	FOREACH(Constant, c, psif->rangeList)
     	{
     		if(c->constType == DT_INT)
				DEBUG_LOG("psInfo rangeList: %d", INT_VALUE(c));
     		else if(c->constType == DT_STRING)
     			DEBUG_LOG("psInfo rangeList: %s", STRING_VALUE(c));
     	}
	}

	return result;
}

psAttrInfo*
createPSAttrInfo(List *l, char *tableName)
{
	psAttrInfo *result = makeNode(psAttrInfo);

	Constant *attrName = (Constant *) getNthOfListP(l, 0);
	Constant *rangeList = (Constant *) getNthOfListP(l, 1);

	result->attrName = STRING_VALUE(attrName);
	result->rangeList = (List *) rangeList;
	if(LIST_LENGTH(result->rangeList) == 1)
	{
		int numRanges = INT_VALUE((Constant *) getNthOfListP(result->rangeList, 0));
		DEBUG_LOG("Number of ranges: %d", numRanges);
		result->rangeList = getRangeList(numRanges, result->attrName, tableName);
	}

	if(LIST_LENGTH(l) == 3)
	{
		Constant *ps = (Constant *) getNthOfListP(l, 2);
		if(typeOf((Node *)ps) == DT_INT)
		{
			result->BitVector = NULL;
			int psValue = INT_VALUE(ps);
			unsigned long long int k;
			unsigned long long int n = psValue;
			int numPoints = LIST_LENGTH(result->rangeList);

			for (int c = numPoints - 1,cntOnePos=0; c >= 0; c--,cntOnePos++)
			{
				k = n >> c;
				DEBUG_LOG("n is %llu, c is %d, k is: %llu, cntOnePos is: %d", n, c, k, cntOnePos);
				if (k & 1)
				{
					result->psIndexList = appendToTailOfList(result->psIndexList, createConstInt(numPoints - 1  - cntOnePos));
					DEBUG_LOG("cnt is: %d", numPoints - cntOnePos);
				}
			}
		}
		else
		{
			char *bitVectorStr = STRING_VALUE(ps);
			result->BitVector = stringToBitset(bitVectorStr);
			result->psIndexList = NIL;
		}
	}
	else
	{
		result->BitVector = NULL;
		result->psIndexList = NIL;
	}

	return result;
}

List *
getRangeList(int numRanges, char* attrName, char *tableName)
{
	List *result = NIL;
	/*  auto-range */
	List *hist = getHist(tableName, attrName, numRanges);
	char *rangeString = getHeadOfListP(hist);
	char *minValue = getNthOfListP(hist, 1);
	char *maxValue = getNthOfListP(hist, 2);
	int maxV = atoi(maxValue) + 1;

	/* remove the first and the last and add the min and max (fix first and last) */
	/* e.g., 1,2,3,4,5,...,9999,10000 */
	char *firstComma = strchr(rangeString, ',');  //,2,3,4,5,...,10000
	char *lastComma = strrchr(rangeString, ',');	 // ,10000

	char *subRangeString =(char *)calloc(1, lastComma - firstComma + 1);
	strncpy(subRangeString, firstComma+1, lastComma-(firstComma+1));
	DEBUG_LOG("subRangeString : %s", subRangeString); //2,3,4,5,...,9999

	StringInfo newRangeString = makeStringInfo();
	appendStringInfo(newRangeString, "%s,%s,%d", minValue, subRangeString, maxV);
	DEBUG_LOG("newRangeString : %s", newRangeString->data);

	char *p =  strtok(strdup(newRangeString->data),",");
	while (p!= NULL)
	{
	    result = appendToTailOfList(result, createConstString(p));
	    DEBUG_LOG("p: %s", p);
	    p = strtok (NULL, ",");
	}

	/* revise:  if only 10000 tuples (9999 ranges) but request 10000 range */
	/* e.g., 1,2,...,9999,10001 ->  1,2,...,9999,10000,10001*/
//	if(LIST_LENGTH(result) < numRanges+1)
//	{
//		Node *curLast = getTailOfListP(result);
//		result = removeFromTail(result);
//		result = appendToTailOfList(result, createConstString(maxValue));
//		result = appendToTailOfList(result, curLast);
//	}

	DEBUG_LOG("numRanges %d, MAX_NUM_RANGE: %d", numRanges,LIST_LENGTH(result));
    if(numRanges > MAX_NUM_RANGE && LIST_LENGTH(result) == MAX_NUM_RANGE+1)
    {
		int numPerRange = numRanges/MAX_NUM_RANGE;
		List *largeResult = NIL;
		for(int i=0; i<MAX_NUM_RANGE; i++)
		{
			int l = atoi(STRING_VALUE((Constant *) getNthOfListP(result, i)));
			int r = atoi(STRING_VALUE((Constant *) getNthOfListP(result, i+1)));

			if(l == r)
			{
				largeResult = appendToTailOfList(largeResult, createConstInt(l));
				continue;
			}

			int intervalLen = (r-l)/numPerRange;
			if(r-l < numPerRange)
			{
				numPerRange = r-l;
				intervalLen = 1;
			}

			largeResult = appendToTailOfList(largeResult, createConstInt(l));
			int next = l;
			DEBUG_LOG("range begin: %d",l);
			for(int j=1; j<numPerRange; j++)
			{
				next = next + intervalLen;
				largeResult = appendToTailOfList(largeResult, createConstInt(next));
				DEBUG_LOG("range middle: %d",next);
			}
			numPerRange = numRanges/MAX_NUM_RANGE;
		}

		int last = atoi(STRING_VALUE((Constant *) getTailOfListP(result)));
		largeResult = appendToTailOfList(largeResult, createConstInt(last));
		DEBUG_LOG("range end: %d",last);
		return largeResult;
    }

	return result;
}


char *
parameterToCharsSepByComma(List* paras)
{
	StringInfo cparas = makeStringInfo();
	int len = LIST_LENGTH(paras);
	int idx = 0;

    FOREACH(Node, c, paras)
	{
    	if(typeOf(c) == DT_INT)
    	{
    		int curc = INT_VALUE(c);
    		appendStringInfo(cparas,gprom_itoa(curc));
    	}
    	else if(typeOf(c) == DT_STRING)
    	{
    		appendStringInfo(cparas,STRING_VALUE(c));
    	}

    	idx ++;
    	if(idx != len)
    	{
    		appendStringInfo(cparas,COMMA);
    	}
	}

    return cparas->data;
}

//psInfo *
//addPsIntoPsInfo(psInfo *psPara,HashMap *psMap)
//{
//
//
//
//	DEBUG_LOG("map size: %d", mapSize(psMap));
//	FOREACH_HASH_ENTRY(kv, psMap)
//	{
//	    char *k = STRING_VALUE(kv->key);
//	    DEBUG_LOG("psMap : %s", k);
//	}
//
//	psInfo *res = psPara;
//	FOREACH_HASH_ENTRY(kv, res->tablePSAttrInfos)
//	{
//	    char *table = STRING_VALUE(kv->key);
//		List *psAttrInfos = (List *) kv->value;
//		DEBUG_LOG("table: %s, psAttrInfo length %d: %s", table, LIST_LENGTH(psAttrInfos));
//		FOREACH(psAttrInfo, p, psAttrInfos)
//		{
//		    DEBUG_LOG("psAttrInfo->name: %s", p->attrName);
//            char *newSubstr = CONCAT_STRINGS(strdup(table), "_", strdup(p->attrName));
//
//			char *ps = (char *) MAP_GET_STRING(psMap,p->attrName);
//
//			p->BitVector = stringToBitset(ps);
//		}
//	}
//	return res;
//}

void
cachePsInfo(QueryOperator *op, psInfo *psPara, HashMap *psMap)
{
	// get template SQL and parameters separated by comma (string)
	ParameterizedQuery *pq = queryToTemplate((QueryOperator *) op);
	char *pqSql = serializeOperatorModel((Node *) pq->q);
	char *cparas = parameterToCharsSepByComma(pq->parameters);
	DEBUG_LOG("parameters to chars seperated by comma: %s", cparas);
	char *storeTable = getStringOption(OPTION_PS_STORE_TABLE);

	FOREACH_HASH_ENTRY(kv, psPara->tablePSAttrInfos)
	{
		char *tb = STRING_VALUE(kv->key);
		List *psAttrInfos = (List *) kv->value;
		DEBUG_LOG("table: %s, psAttrInfo length %d: %s", tb, LIST_LENGTH(psAttrInfos));
		FOREACH(psAttrInfo, p, psAttrInfos)
		{
			FOREACH_HASH_ENTRY(kv, psMap)
			{
				char *provTableAttr = STRING_VALUE(kv->key);
				char *subProvTableAttr = CONCAT_STRINGS(strdup(tb), "_", strdup(p->attrName));

				DEBUG_LOG("provTableAttr: %s and subProvTableAttr: %s",provTableAttr, subProvTableAttr);
				if(strstr(provTableAttr,subProvTableAttr))
				{
					//char *ps = STRING_VALUE(MAP_GET_STRING(psMap,provTableAttr));
				    char *ps = STRING_VALUE(kv->value);
					//DEBUG_LOG("ps: %s", ps);
					storePsInfo(storeTable,
						pqSql,
						cparas,
						tb,
						p->attrName,
						provTableAttr,
						LIST_LENGTH(p->rangeList),
						getPsSize(stringToBitset(ps)),
						ps);
				}
			}
		}
	}
}


int
getPsSize(BitSet* psBitVector)
{
	int psSize = 0;
	for(int i=0; i<psBitVector->length; i++)
	{
		if(isBitSet(psBitVector, i))
		{
			psSize ++;
		}
	}

	return psSize;
}
