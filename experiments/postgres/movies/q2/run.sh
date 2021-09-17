#!/bin/bash
../../timeQuery_realdb.sh q2_32_capture.sql 5 > q2_32_capture.txt
../../timeQuery_realdb.sh q2_32_use.sql 5 > q2_32_use.txt
../../timeQuery_realdb.sh q2_64_capture.sql 5 > q2_64_capture.txt
../../timeQuery_realdb.sh q2_64_use.sql 5 > q2_64_use.txt
../../timeQuery_realdb.sh q2_400_capture.sql 5 > q2_400_capture.txt
../../timeQuery_realdb.sh q2_400_use.sql 5 > q2_400_use.txt
../../timeQuery_realdb.sh q2.sql 5 > q2.txt
