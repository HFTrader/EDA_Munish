#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/vivado_projects/cvtColor/cvt_prj/solution3/.autopilot/db/a.g.bc ${1+"$@"}