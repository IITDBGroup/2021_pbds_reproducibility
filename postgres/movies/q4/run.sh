#!/bin/bash
../../timeQuery_realdb.sh q4_400_capture_func.sql 5 > q4_400_capture_func.txt
../../psqlc_realdb.sh < q4_400_capture_func_plan.sql > q4_400_capture_func_plan.txt
../../psqlc_realdb.sh < q4_400_capture_plan.sql > q4_400_capture_plan_1.txt
