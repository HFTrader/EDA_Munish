#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /ise_local2/umair_temp/vivado_projects/cvtColor/cvt_prj/solution2/.autopilot/db/a.g.bc ${1+"$@"}
