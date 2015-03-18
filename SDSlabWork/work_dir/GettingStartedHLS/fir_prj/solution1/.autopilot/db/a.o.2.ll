; ModuleID = '/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/GettingStartedHLS/fir_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shift_reg = internal unnamed_addr global [11 x i32] zeroinitializer, align 16 ; [#uses=3 type=[11 x i32]*]
@.str = private unnamed_addr constant [17 x i8] c"Shift_Accum_Loop\00", align 1 ; [#uses=1 type=[17 x i8]*]
@str = internal constant [4 x i8] c"fir\00"       ; [#uses=1 type=[4 x i8]*]

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=0]
define void @fir(i32* %y, [11 x i32]* %c, i32 %x) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %y) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap([11 x i32]* %c) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %x) nounwind, !map !30
  %c.addr = getelementptr [11 x i32]* %c, i64 0, i64 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !36), !dbg !37 ; [debug line = 12:12] [debug variable = y]
  call void @llvm.dbg.value(metadata !{[11 x i32]* %c}, i64 0, metadata !38), !dbg !40 ; [debug line = 13:11] [debug variable = c]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !41), !dbg !42 ; [debug line = 14:11] [debug variable = x]
  br label %1, !dbg !43                           ; [debug line = 22:26]

; <label>:1                                       ; preds = %6, %0
  %acc = phi i32 [ 0, %0 ], [ %acc.1, %6 ]        ; [#uses=2 type=i32]
  %i = phi i5 [ 10, %0 ], [ %i.1, %6 ]            ; [#uses=5 type=i5]
  %i.cast1 = trunc i5 %i to i4, !dbg !43          ; [#uses=1 type=i4] [debug line = 22:26]
  %i.cast = sext i5 %i to i32, !dbg !43           ; [#uses=1 type=i32] [debug line = 22:26]
  %tmp = icmp sgt i5 %i, -1, !dbg !43             ; [#uses=1 type=i1] [debug line = 22:26]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 11, i64 11, i64 11) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %7, !dbg !43        ; [debug line = 22:26]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @.str) nounwind, !dbg !46 ; [debug line = 22:45]
  %tmp.1 = icmp eq i5 %i, 0, !dbg !48             ; [#uses=1 type=i1] [debug line = 23:6]
  br i1 %tmp.1, label %4, label %5, !dbg !48      ; [debug line = 23:6]

; <label>:4                                       ; preds = %3
  %c.load = load i32* %c.addr, align 4, !dbg !49  ; [#uses=1 type=i32] [debug line = 24:8]
  %tmp.2 = mul nsw i32 %c.load, %x, !dbg !49      ; [#uses=1 type=i32] [debug line = 24:8]
  store i32 %x, i32* getelementptr inbounds ([11 x i32]* @shift_reg, i64 0, i64 0), align 16, !dbg !51 ; [debug line = 25:8]
  br label %6, !dbg !52                           ; [debug line = 26:6]

; <label>:5                                       ; preds = %3
  %tmp.3 = add i4 %i.cast1, -1, !dbg !53          ; [#uses=1 type=i4] [debug line = 27:4]
  %tmp.4 = zext i4 %tmp.3 to i64, !dbg !53        ; [#uses=1 type=i64] [debug line = 27:4]
  %shift_reg.addr = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp.4, !dbg !53 ; [#uses=1 type=i32*] [debug line = 27:4]
  %shift_reg.load = load i32* %shift_reg.addr, align 4, !dbg !53 ; [#uses=2 type=i32] [debug line = 27:4]
  %tmp.5 = zext i32 %i.cast to i64, !dbg !53      ; [#uses=2 type=i64] [debug line = 27:4]
  %shift_reg.addr.1 = getelementptr inbounds [11 x i32]* @shift_reg, i64 0, i64 %tmp.5, !dbg !53 ; [#uses=1 type=i32*] [debug line = 27:4]
  store i32 %shift_reg.load, i32* %shift_reg.addr.1, align 4, !dbg !53 ; [debug line = 27:4]
  %c.addr.1 = getelementptr [11 x i32]* %c, i64 0, i64 %tmp.5, !dbg !55 ; [#uses=1 type=i32*] [debug line = 28:4]
  %c.load.1 = load i32* %c.addr.1, align 4, !dbg !55 ; [#uses=1 type=i32] [debug line = 28:4]
  %tmp.6 = mul nsw i32 %c.load.1, %shift_reg.load, !dbg !55 ; [#uses=1 type=i32] [debug line = 28:4]
  br label %6

; <label>:6                                       ; preds = %5, %4
  %.pn = phi i32 [ %tmp.2, %4 ], [ %tmp.6, %5 ]   ; [#uses=1 type=i32]
  %acc.1 = add nsw i32 %.pn, %acc, !dbg !49       ; [#uses=1 type=i32] [debug line = 24:8]
  call void @llvm.dbg.value(metadata !{i32 %acc.1}, i64 0, metadata !56), !dbg !49 ; [debug line = 24:8] [debug variable = acc]
  %i.1 = add i5 %i, -1, !dbg !58                  ; [#uses=1 type=i5] [debug line = 22:39]
  call void @llvm.dbg.value(metadata !{i5 %i.1}, i64 0, metadata !59), !dbg !58 ; [debug line = 22:39] [debug variable = i]
  br label %1, !dbg !58                           ; [debug line = 22:39]

; <label>:7                                       ; preds = %1
  %acc.lcssa = phi i32 [ %acc, %1 ]               ; [#uses=1 type=i32]
  store i32 %acc.lcssa, i32* %y, align 4, !dbg !60 ; [debug line = 31:3]
  ret void, !dbg !61                              ; [debug line = 32:1]
}

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/GettingStartedHLS/fir_prj/solution1/.autopilot/db/fir.pragma.2.c", metadata !"/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/GettingStartedHLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786484, i32 0, metadata !4, metadata !"shift_reg", metadata !"shift_reg", metadata !"", metadata !5, i32 17, metadata !15, i32 1, i32 1, [11 x i32]* @shift_reg} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786478, i32 0, metadata !5, metadata !"fir", metadata !"fir", metadata !"", metadata !5, i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 15} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !"files/fir.c", metadata !"/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/GettingStartedHLS", null} ; [ DW_TAG_file_type ]
!6 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!7 = metadata !{null, metadata !8, metadata !11, metadata !9}
!8 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!9 = metadata !{i32 786454, null, metadata !"data_t", metadata !5, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786454, null, metadata !"coef_t", metadata !5, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !9, metadata !16, i32 0, i32 0} ; [ DW_TAG_array_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 31, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"y", metadata !22, metadata !"int"}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 0, i32 1}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"c", metadata !28, metadata !"int"}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 10, i32 1}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"x", metadata !34, metadata !"int"}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, i32 0}
!36 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 12, i32 12, metadata !4, null}
!38 = metadata !{i32 786689, metadata !4, metadata !"c", null, i32 13, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !12, metadata !16, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{i32 13, i32 11, metadata !4, null}
!41 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 50331662, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 14, i32 11, metadata !4, null}
!43 = metadata !{i32 22, i32 26, metadata !44, null}
!44 = metadata !{i32 786443, metadata !45, i32 22, i32 21, metadata !5, i32 1} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 786443, metadata !4, i32 15, i32 5, metadata !5, i32 0} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 22, i32 45, metadata !47, null}
!47 = metadata !{i32 786443, metadata !44, i32 22, i32 44, metadata !5, i32 2} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 23, i32 6, metadata !47, null}
!49 = metadata !{i32 24, i32 8, metadata !50, null}
!50 = metadata !{i32 786443, metadata !47, i32 23, i32 16, metadata !5, i32 3} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 25, i32 8, metadata !50, null}
!52 = metadata !{i32 26, i32 6, metadata !50, null}
!53 = metadata !{i32 27, i32 4, metadata !54, null}
!54 = metadata !{i32 786443, metadata !47, i32 26, i32 13, metadata !5, i32 4} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 28, i32 4, metadata !54, null}
!56 = metadata !{i32 786688, metadata !45, metadata !"acc", metadata !5, i32 18, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 786454, null, metadata !"acc_t", metadata !5, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!58 = metadata !{i32 22, i32 39, metadata !44, null}
!59 = metadata !{i32 786688, metadata !45, metadata !"i", metadata !5, i32 19, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 31, i32 3, metadata !45, null}
!61 = metadata !{i32 32, i32 1, metadata !45, null}
