#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /nfs/TUEIEDAprojects/SystemDesign/work/zynq/umair-razzaq/xapp1167/sw/erode/prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}