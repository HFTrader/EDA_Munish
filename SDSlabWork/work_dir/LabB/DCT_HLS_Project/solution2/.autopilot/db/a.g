#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB/DCT_HLS_Project/solution2/.autopilot/db/a.g.bc ${1+"$@"}