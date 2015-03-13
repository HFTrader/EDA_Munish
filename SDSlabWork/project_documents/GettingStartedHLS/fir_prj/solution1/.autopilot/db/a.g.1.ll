; ModuleID = '/nfs/TUEIEDAprojects/SystemDesign/work/zynq/munish/LabSDS/LabSDS_v4/GettingStartedHLS/fir_prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shift_reg = internal unnamed_addr global [11 x i32] zeroinitializer, align 16 ; [#uses=3 type=[11 x i32]*]
@.str = private unnamed_addr constant [17 x i8] c"Shift_Accum_Loop\00", align 1 ; [#uses=1 type=[17 x i8]*]
@str = internal constant [4 x i8] c"fir\00"       ; [#uses=1 type=[4 x i8]*]

; [#uses=0]
define void @fir(i32* %y, i32* %c, i32 %x) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !22), !dbg !23 ; [debug line = 4:12] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32* %c}, i64 0, metadata !24), !dbg !25 ; [debug line = 5:11] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !26), !dbg !27 ; [debug line = 6:11] [debug variable = x]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %c, i32 11) nounwind, !dbg !28 ; [debug line = 7:6]
  br label %1, !dbg !30                           ; [debug line = 14:26]

; <label>:1                                       ; preds = %5, %0
  %acc = phi i32 [ 0, %0 ], [ %acc.1, %5 ]        ; [#uses=2 type=i32]
  %i = phi i32 [ 10, %0 ], [ %i.1, %5 ]           ; [#uses=5 type=i32]
  %tmp = icmp sgt i32 %i, -1, !dbg !30            ; [#uses=1 type=i1] [debug line = 14:26]
  br i1 %tmp, label %2, label %6, !dbg !30        ; [debug line = 14:26]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !32 ; [debug line = 14:45]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !34 ; [#uses=1 type=i32] [debug line = 14:87]
  %tmp.1 = icmp eq i32 %i, 0, !dbg !35            ; [#uses=1 type=i1] [debug line = 15:6]
  br i1 %tmp.1, label %3, label %4, !dbg !35      ; [debug line = 15:6]

; <label>:3                                       ; preds = %2
  %c.load = load i32* %c, align 4, !dbg !36       ; [#uses=2 type=i32] [debug line = 16:8]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %c.load) nounwind
  %tmp.2 = mul nsw i32 %c.load, %x, !dbg !36      ; [#uses=1 type=i32] [debug line = 16:8]
  store i32 %x, i32* getelementptr inbounds ([11 x i32]* @shift_reg, i64 0, i64 0), align 16, !dbg !38 ; [debug line = 17:8]
  br label %5, !dbg !39                           ; [debug line = 18:6]

; <label>:4                                       ; preds = %2
  %tmp.3 = add nsw i32 %i, -1, !dbg !40           ; [#uses=1 type=i32] [debug line = 19:4]
  %tmp.4 = sext i32 %tmp.3 to i64, !dbg !40       ; [#uses=1 type=i64] [debug line = 19:4]
  %shift_reg.addr = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp.4, !dbg !40 ; [#uses=1 type=i32*] [debug line = 19:4]
  %shift_reg.load = load i32* %shift_reg.addr, align 4, !dbg !40 ; [#uses=4 type=i32] [debug line = 19:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %shift_reg.load) nounwind
  %tmp.5 = sext i32 %i to i64, !dbg !40           ; [#uses=2 type=i64] [debug line = 19:4]
  %shift_reg.addr.1 = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp.5, !dbg !40 ; [#uses=1 type=i32*] [debug line = 19:4]
  store i32 %shift_reg.load, i32* %shift_reg.addr.1, align 4, !dbg !40 ; [debug line = 19:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %shift_reg.load) nounwind
  %c.addr = getelementptr inbounds i32* %c, i64 %tmp.5, !dbg !42 ; [#uses=1 type=i32*] [debug line = 20:4]
  %c.load.1 = load i32* %c.addr, align 4, !dbg !42 ; [#uses=2 type=i32] [debug line = 20:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %c.load.1) nounwind
  %tmp.6 = mul nsw i32 %c.load.1, %shift_reg.load, !dbg !42 ; [#uses=1 type=i32] [debug line = 20:4]
  br label %5

; <label>:5                                       ; preds = %4, %3
  %.pn = phi i32 [ %tmp.2, %3 ], [ %tmp.6, %4 ]   ; [#uses=1 type=i32]
  %acc.1 = add nsw i32 %.pn, %acc, !dbg !36       ; [#uses=1 type=i32] [debug line = 16:8]
  call void @llvm.dbg.value(metadata !{i32 %acc.1}, i64 0, metadata !43), !dbg !36 ; [debug line = 16:8] [debug variable = acc]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !45 ; [#uses=0 type=i32] [debug line = 22:3]
  %i.1 = add nsw i32 %i, -1, !dbg !46             ; [#uses=1 type=i32] [debug line = 14:39]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !47), !dbg !46 ; [debug line = 14:39] [debug variable = i]
  br label %1, !dbg !46                           ; [debug line = 14:39]

; <label>:6                                       ; preds = %1
  %acc.0.lcssa = phi i32 [ %acc, %1 ]             ; [#uses=1 type=i32]
  store i32 %acc.0.lcssa, i32* %y, align 4, !dbg !48 ; [debug line = 23:3]
  ret void, !dbg !49                              ; [debug line = 24:1]
}

; [#uses=0]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionEnd.restore(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/nfs/TUEIEDAprojects/SystemDesign/work/zynq/munish/LabSDS/LabSDS_v4/GettingStartedHLS/fir_prj/solution1/.autopilot/db/fir.pragma.2.c", metadata !"/home/gu53voh/zynq_work/LabSDS/LabSDS_v4/GettingStartedHLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !16} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fir", metadata !"fir", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32)* @fir, null, null, metadata !14, i32 7} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"files/fir.c", metadata !"/home/gu53voh/zynq_work/LabSDS/LabSDS_v4/GettingStartedHLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !12, metadata !10}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"data_t", metadata !6, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786454, null, metadata !"coef_t", metadata !6, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786484, i32 0, metadata !5, metadata !"shift_reg", metadata !"shift_reg", metadata !"", metadata !6, i32 9, metadata !19, i32 1, i32 1, [11 x i32]* @shift_reg} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !10, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 4, i32 12, metadata !5, null}
!24 = metadata !{i32 786689, metadata !5, metadata !"c", metadata !6, i32 33554437, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 5, i32 11, metadata !5, null}
!26 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 50331654, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 6, i32 11, metadata !5, null}
!28 = metadata !{i32 7, i32 6, metadata !29, null}
!29 = metadata !{i32 786443, metadata !5, i32 7, i32 5, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 14, i32 26, metadata !31, null}
!31 = metadata !{i32 786443, metadata !29, i32 14, i32 21, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 14, i32 45, metadata !33, null}
!33 = metadata !{i32 786443, metadata !31, i32 14, i32 44, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 14, i32 87, metadata !33, null}
!35 = metadata !{i32 15, i32 6, metadata !33, null}
!36 = metadata !{i32 16, i32 8, metadata !37, null}
!37 = metadata !{i32 786443, metadata !33, i32 15, i32 16, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 17, i32 8, metadata !37, null}
!39 = metadata !{i32 18, i32 6, metadata !37, null}
!40 = metadata !{i32 19, i32 4, metadata !41, null}
!41 = metadata !{i32 786443, metadata !33, i32 18, i32 13, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 20, i32 4, metadata !41, null}
!43 = metadata !{i32 786688, metadata !29, metadata !"acc", metadata !6, i32 10, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 786454, null, metadata !"acc_t", metadata !6, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!45 = metadata !{i32 22, i32 3, metadata !33, null}
!46 = metadata !{i32 14, i32 39, metadata !31, null}
!47 = metadata !{i32 786688, metadata !29, metadata !"i", metadata !6, i32 11, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 23, i32 3, metadata !29, null}
!49 = metadata !{i32 24, i32 1, metadata !29, null}
