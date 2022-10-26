#!/bin/sh
sysbench –test=fileio –file-total-size=1G –file-test-mode=rndrw prepare
sysbench –test=fileio –file-total-size=1G –file-test-mode=rndrw –time=15 –max-requests=0 run
sysbench –test=fileio –file-total-size=1G –file-test-mode=rndrw cleanup
# For windows: 
sync 
# For linux: 
echo3 > /proc/sys/vm/dropcaches
