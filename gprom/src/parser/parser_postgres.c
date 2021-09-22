/*-----------------------------------------------------------------------------
 *
 * parser_postgres.c
 *			  
 *		
 *		AUTHOR: lord_pretzel
 *
 *		
 *
 *-----------------------------------------------------------------------------
 */

#include "common.h"
#include "log/logger.h"
#include "mem_manager/mem_mgr.h"
#include "parser/parser.h"
#include "parser/parse_internal_postgres.h"
#include "postgres_parser.tab.h"
#include "parser/parser_postgres.h"
#include "instrumentation/timing_instrumentation.h"

static Node *parseInternalPostgres (void);

Node *
parseStreamPostgres (FILE *stream)
{
    postgresin = stream;

    return parseInternalPostgres();
}

Node *
parseFromStringPostgres (char *input)
{
    INFO_LOG("parse SQL:\n%s", input);
    postgresSetupStringInput(input);

    return parseInternalPostgres();
}

static Node *
parseInternalPostgres (void) //TODO make copyObject work first
{
    Node *result;
    START_TIMER("module - parser");

    NEW_AND_ACQUIRE_MEMCONTEXT("PARSER_CONTEXT");

    // parse
    int rc = postgresparse();
    if (rc)
    {
        ERROR_LOG("parse error!");
        return NULL;
    }

    STOP_TIMER("module - parser");

    DEBUG_NODE_BEATIFY_LOG("query block model generated by parser is:",postgresParseResult);

    // create copy of parse result in parent context
    FREE_MEM_CONTEXT_AND_RETURN_COPY(Node,postgresParseResult);
}