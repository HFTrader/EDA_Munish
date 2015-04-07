; ModuleID = '/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB/DCT_HLS_Project/solution4/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@p_str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [4 x i8] c"dct\00"       ; [#uses=1 type=[4 x i8]*]
@dct_coeff_table_0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=1 type=[8 x i14]*]
@dct_coeff_table_1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=1 type=[8 x i15]*]
@dct_coeff_table_7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=1 type=[8 x i15]*]
@str1 = internal constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@str2 = internal constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@str3 = internal constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@str4 = internal constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]

; [#uses=5]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=11]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=17]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind, !dbg !7 ; [debug line = 85:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !27), !dbg !31 ; [debug line = 83:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !32), !dbg !33 ; [debug line = 83:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_in}, metadata !34), !dbg !38 ; [debug line = 85:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_out}, metadata !39), !dbg !40 ; [debug line = 86:10] [debug variable = buf_2d_out]
  call fastcc void @read_data([64 x i16]* nocapture %input, [64 x i16]* nocapture %buf_2d_in) nounwind, !dbg !41 ; [debug line = 89:4]
  call fastcc void @dct_2d([64 x i16]* nocapture %buf_2d_in, [64 x i16]* nocapture %buf_2d_out) nounwind, !dbg !42 ; [debug line = 91:4]
  call fastcc void @write_data([64 x i16]* nocapture %buf_2d_out, [64 x i16]* nocapture %output) nounwind, !dbg !43 ; [debug line = 94:4]
  ret void, !dbg !44                              ; [debug line = 95:1]
}

; [#uses=1]
define internal fastcc void @write_data([64 x i16]* nocapture %buf, [64 x i16]* nocapture %output) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf}, i64 0, metadata !45), !dbg !52 ; [debug line = 71:23] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !53), !dbg !54 ; [debug line = 71:116] [debug variable = output]
  br label %1, !dbg !55                           ; [debug line = 76:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r = phi i4 [ 0, %0 ], [ %r_mid2, %.reset ]     ; [#uses=2 type=i4]
  %c = phi i4 [ 0, %0 ], [ %c_1, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @str1)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond4 = icmp eq i4 %c, -8, !dbg !58        ; [#uses=2 type=i1] [debug line = 78:12]
  %c_mid2 = select i1 %exitcond4, i4 0, i4 %c     ; [#uses=3 type=i4]
  %r_s = add i4 %r, 1, !dbg !61                   ; [#uses=1 type=i4] [debug line = 76:61]
  %r_mid2 = select i1 %exitcond4, i4 %r_s, i4 %r  ; [#uses=3 type=i4]
  %tmp = trunc i4 %r_mid2 to i3                   ; [#uses=1 type=i3]
  %tmp_s = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !62 ; [#uses=1 type=i6] [debug line = 79:1]
  %c_cast6 = zext i4 %c_mid2 to i6, !dbg !58      ; [#uses=1 type=i6] [debug line = 78:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind, !dbg !64 ; [debug line = 79:11]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12), !dbg !65 ; [#uses=1 type=i32] [debug line = 79:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !66 ; [debug line = 80:1]
  %tmp_8_trn_cast = zext i4 %c_mid2 to i8         ; [#uses=1 type=i8]
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_1 to i8, !dbg !62   ; [#uses=1 type=i8] [debug line = 79:1]
  %p_addr1 = add i8 %p_addr_cast, %tmp_8_trn_cast, !dbg !62 ; [#uses=1 type=i8] [debug line = 79:1]
  %tmp_4 = zext i8 %p_addr1 to i64, !dbg !62      ; [#uses=1 type=i64] [debug line = 79:1]
  %buf_addr = getelementptr [64 x i16]* %buf, i64 0, i64 %tmp_4, !dbg !62 ; [#uses=1 type=i16*] [debug line = 79:1]
  %buf_load = load i16* %buf_addr, align 2, !dbg !62 ; [#uses=1 type=i16] [debug line = 79:1]
  %tmp_9 = add i6 %tmp_s, %c_cast6, !dbg !62      ; [#uses=1 type=i6] [debug line = 79:1]
  %tmp_3 = zext i6 %tmp_9 to i64, !dbg !62        ; [#uses=1 type=i64] [debug line = 79:1]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_3, !dbg !62 ; [#uses=1 type=i16*] [debug line = 79:1]
  store i16 %buf_load, i16* %output_addr, align 2, !dbg !62 ; [debug line = 79:1]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_2), !dbg !67 ; [#uses=0 type=i32] [debug line = 79:69]
  %c_1 = add i4 %c_mid2, 1, !dbg !68              ; [#uses=1 type=i4] [debug line = 78:64]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !69), !dbg !68 ; [debug line = 78:64] [debug variable = c]
  br label %1

; <label>:2                                       ; preds = %1
  ret void, !dbg !71                              ; [debug line = 81:1]
}

; [#uses=1]
define internal fastcc void @dct_2d([64 x i16]* nocapture %in_block, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_inbuf = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %in_block}, i64 0, metadata !72), !dbg !80 ; [debug line = 28:24] [debug variable = in_block]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %out_block}, i64 0, metadata !81), !dbg !82 ; [debug line = 29:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %row_outbuf}, metadata !83), !dbg !85 ; [debug line = 31:15] [debug variable = row_outbuf]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %col_outbuf}, metadata !86), !dbg !87 ; [debug line = 32:15] [debug variable = col_outbuf]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %col_inbuf}, metadata !88), !dbg !89 ; [debug line = 32:109] [debug variable = col_inbuf]
  br label %1, !dbg !90                           ; [debug line = 37:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]             ; [#uses=4 type=i4]
  %exitcond7 = icmp eq i4 %i, -8, !dbg !90        ; [#uses=1 type=i1] [debug line = 37:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_4 = add i4 %i, 1, !dbg !92                   ; [#uses=1 type=i4] [debug line = 37:60]
  br i1 %exitcond7, label %.preheader2.preheader, label %2, !dbg !90 ; [debug line = 37:8]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str3) nounwind, !dbg !93 ; [debug line = 37:66]
  call fastcc void @dct_1d([64 x i16]* nocapture %in_block, i4 %i, [64 x i16]* nocapture %row_outbuf, i4 %i), !dbg !95 ; [debug line = 38:7]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !96), !dbg !92 ; [debug line = 37:60] [debug variable = i]
  br label %1, !dbg !92                           ; [debug line = 37:60]

.preheader2.preheader:                            ; preds = %.preheader2, %1
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %.preheader2 ], [ 0, %1 ] ; [#uses=2 type=i7]
  %j = phi i4 [ %j_mid2, %.preheader2 ], [ 0, %1 ] ; [#uses=2 type=i4]
  %i_1 = phi i4 [ %i_6, %.preheader2 ], [ 0, %1 ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader1, label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @str2)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond = icmp eq i4 %i_1, -8, !dbg !98       ; [#uses=2 type=i1] [debug line = 44:11]
  %i_1_mid2 = select i1 %exitcond, i4 0, i4 %i_1  ; [#uses=3 type=i4]
  %j_s = add i4 %j, 1, !dbg !102                  ; [#uses=1 type=i4] [debug line = 42:61]
  %j_mid2 = select i1 %exitcond, i4 %j_s, i4 %j   ; [#uses=3 type=i4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str5) nounwind, !dbg !103 ; [debug line = 45:11]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str5), !dbg !105 ; [#uses=1 type=i32] [debug line = 45:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !106 ; [debug line = 46:1]
  %tmp_2_trn_cast = zext i4 %i_1_mid2 to i8, !dbg !107 ; [#uses=1 type=i8] [debug line = 45:1]
  %tmp_trn_cast = zext i4 %j_mid2 to i8           ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp to i8, !dbg !107    ; [#uses=1 type=i8] [debug line = 45:1]
  %p_addr1 = add i8 %p_addr_cast, %tmp_trn_cast, !dbg !107 ; [#uses=1 type=i8] [debug line = 45:1]
  %tmp_5 = zext i8 %p_addr1 to i64, !dbg !107     ; [#uses=1 type=i64] [debug line = 45:1]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_5, !dbg !107 ; [#uses=1 type=i16*] [debug line = 45:1]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !107 ; [#uses=1 type=i16] [debug line = 45:1]
  %tmp_6 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr2_cast = zext i7 %tmp_6 to i8, !dbg !107 ; [#uses=1 type=i8] [debug line = 45:1]
  %p_addr5 = add i8 %p_addr2_cast, %tmp_2_trn_cast, !dbg !107 ; [#uses=1 type=i8] [debug line = 45:1]
  %tmp_7 = zext i8 %p_addr5 to i64, !dbg !107     ; [#uses=1 type=i64] [debug line = 45:1]
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_7, !dbg !107 ; [#uses=1 type=i16*] [debug line = 45:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2, !dbg !107 ; [debug line = 45:1]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str5, i32 %tmp_9), !dbg !108 ; [#uses=0 type=i32] [debug line = 45:36]
  %i_6 = add i4 %i_1_mid2, 1, !dbg !109           ; [#uses=1 type=i4] [debug line = 44:63]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !96), !dbg !109 ; [debug line = 44:63] [debug variable = i]
  br label %.preheader2.preheader

.preheader1:                                      ; preds = %3, %.preheader2.preheader
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader2.preheader ] ; [#uses=4 type=i4]
  %exitcond4 = icmp eq i4 %i_2, -8, !dbg !110     ; [#uses=1 type=i1] [debug line = 48:9]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_2, 1, !dbg !112                ; [#uses=1 type=i4] [debug line = 48:61]
  br i1 %exitcond4, label %.preheader.preheader, label %3, !dbg !110 ; [debug line = 48:9]

; <label>:3                                       ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str6) nounwind, !dbg !113 ; [debug line = 48:67]
  call fastcc void @dct_1d([64 x i16]* nocapture %col_inbuf, i4 %i_2, [64 x i16]* nocapture %col_outbuf, i4 %i_2), !dbg !115 ; [debug line = 49:7]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !96), !dbg !112 ; [debug line = 48:61] [debug variable = i]
  br label %.preheader1, !dbg !112                ; [debug line = 48:61]

.preheader.preheader:                             ; preds = %.preheader, %.preheader1
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader1 ] ; [#uses=2 type=i7]
  %j_1 = phi i4 [ %j_1_mid2, %.preheader ], [ 0, %.preheader1 ] ; [#uses=2 type=i4]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader1 ] ; [#uses=2 type=i4]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten1, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @str3)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond1 = icmp eq i4 %i_3, -8, !dbg !116     ; [#uses=2 type=i1] [debug line = 55:11]
  %i_3_mid2 = select i1 %exitcond1, i4 0, i4 %i_3 ; [#uses=3 type=i4]
  %j_2 = add i4 %j_1, 1, !dbg !120                ; [#uses=1 type=i4] [debug line = 53:61]
  %j_1_mid2 = select i1 %exitcond1, i4 %j_2, i4 %j_1 ; [#uses=3 type=i4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str8) nounwind, !dbg !121 ; [debug line = 56:11]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str8), !dbg !123 ; [#uses=1 type=i32] [debug line = 56:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !124 ; [debug line = 57:1]
  %tmp_4_trn_cast = zext i4 %i_3_mid2 to i8, !dbg !125 ; [#uses=1 type=i8] [debug line = 56:1]
  %tmp_3_trn_cast = zext i4 %j_1_mid2 to i8       ; [#uses=1 type=i8]
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr6_cast = zext i7 %tmp_8 to i8, !dbg !125 ; [#uses=1 type=i8] [debug line = 56:1]
  %p_addr7 = add i8 %p_addr6_cast, %tmp_3_trn_cast, !dbg !125 ; [#uses=1 type=i8] [debug line = 56:1]
  %tmp_s = zext i8 %p_addr7 to i64, !dbg !125     ; [#uses=1 type=i64] [debug line = 56:1]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_s, !dbg !125 ; [#uses=1 type=i16*] [debug line = 56:1]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !125 ; [#uses=1 type=i16] [debug line = 56:1]
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr3_cast = zext i7 %tmp_2 to i8, !dbg !125 ; [#uses=1 type=i8] [debug line = 56:1]
  %p_addr4 = add i8 %p_addr3_cast, %tmp_4_trn_cast, !dbg !125 ; [#uses=1 type=i8] [debug line = 56:1]
  %tmp_3 = zext i8 %p_addr4 to i64, !dbg !125     ; [#uses=1 type=i64] [debug line = 56:1]
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_3, !dbg !125 ; [#uses=1 type=i16*] [debug line = 56:1]
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2, !dbg !125 ; [debug line = 56:1]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str8, i32 %tmp_1), !dbg !126 ; [#uses=0 type=i32] [debug line = 56:36]
  %i_7 = add i4 %i_3_mid2, 1, !dbg !127           ; [#uses=1 type=i4] [debug line = 55:63]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !96), !dbg !127 ; [debug line = 55:63] [debug variable = i]
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void, !dbg !128                             ; [debug line = 57:1]
}

; [#uses=1]
define internal fastcc void @read_data([64 x i16]* nocapture %input, [64 x i16]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !129), !dbg !133 ; [debug line = 59:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf}, i64 0, metadata !134), !dbg !135 ; [debug line = 59:44] [debug variable = buf]
  br label %1, !dbg !136                          ; [debug line = 64:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r = phi i4 [ 0, %0 ], [ %r_mid2, %.reset ]     ; [#uses=2 type=i4]
  %c = phi i4 [ 0, %0 ], [ %c_1, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @str4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond4 = icmp eq i4 %c, -8, !dbg !139       ; [#uses=2 type=i1] [debug line = 66:12]
  %c_mid2 = select i1 %exitcond4, i4 0, i4 %c     ; [#uses=3 type=i4]
  %r_s = add i4 %r, 1, !dbg !142                  ; [#uses=1 type=i4] [debug line = 64:61]
  %r_mid2 = select i1 %exitcond4, i4 %r_s, i4 %r  ; [#uses=3 type=i4]
  %tmp_1 = trunc i4 %r_mid2 to i3                 ; [#uses=1 type=i3]
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_1, i3 0), !dbg !143 ; [#uses=1 type=i6] [debug line = 67:1]
  %c_cast6 = zext i4 %c_mid2 to i6, !dbg !139     ; [#uses=1 type=i6] [debug line = 66:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind, !dbg !145 ; [debug line = 67:11]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10), !dbg !146 ; [#uses=1 type=i32] [debug line = 67:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !147 ; [debug line = 68:1]
  %tmp_5 = add i6 %tmp, %c_cast6, !dbg !143       ; [#uses=1 type=i6] [debug line = 67:1]
  %tmp_6 = zext i6 %tmp_5 to i64, !dbg !143       ; [#uses=1 type=i64] [debug line = 67:1]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_6, !dbg !143 ; [#uses=1 type=i16*] [debug line = 67:1]
  %input_load = load i16* %input_addr, align 2, !dbg !143 ; [#uses=1 type=i16] [debug line = 67:1]
  %tmp_7_trn_cast = zext i4 %c_mid2 to i8         ; [#uses=1 type=i8]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_s to i8, !dbg !143  ; [#uses=1 type=i8] [debug line = 67:1]
  %p_addr1 = add i8 %p_addr_cast, %tmp_7_trn_cast, !dbg !143 ; [#uses=1 type=i8] [debug line = 67:1]
  %tmp_4 = zext i8 %p_addr1 to i64, !dbg !143     ; [#uses=1 type=i64] [debug line = 67:1]
  %buf_addr = getelementptr [64 x i16]* %buf, i64 0, i64 %tmp_4, !dbg !143 ; [#uses=1 type=i16*] [debug line = 67:1]
  store i16 %input_load, i16* %buf_addr, align 2, !dbg !143 ; [debug line = 67:1]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_3), !dbg !148 ; [#uses=0 type=i32] [debug line = 67:68]
  %c_1 = add i4 %c_mid2, 1, !dbg !149             ; [#uses=1 type=i4] [debug line = 66:64]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !150), !dbg !149 ; [debug line = 66:64] [debug variable = c]
  br label %1

; <label>:2                                       ; preds = %1
  ret void, !dbg !151                             ; [debug line = 69:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=7]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define internal fastcc void @dct_1d([64 x i16]* nocapture %src, i4 %tmp_1, [64 x i16]* nocapture %dst, i4 %tmp_11) {
  %tmp_11_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_11) ; [#uses=1 type=i4]
  %tmp_1_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_1) ; [#uses=8 type=i4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %src}, i64 0, metadata !152), !dbg !158 ; [debug line = 9:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %dst}, i64 0, metadata !159), !dbg !160 ; [debug line = 9:81] [debug variable = dst]
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 0) ; [#uses=1 type=i7]
  %tmp_6 = zext i7 %tmp_5 to i64, !dbg !161       ; [#uses=1 type=i64] [debug line = 22:10]
  %src_addr = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_6, !dbg !161 ; [#uses=1 type=i16*] [debug line = 22:10]
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 1) ; [#uses=1 type=i7]
  %tmp_9 = zext i7 %tmp_7 to i64, !dbg !161       ; [#uses=1 type=i64] [debug line = 22:10]
  %src_addr_1 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_9, !dbg !161 ; [#uses=1 type=i16*] [debug line = 22:10]
  %tmp_10 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 2) ; [#uses=1 type=i7]
  %tmp_12 = zext i7 %tmp_10 to i64, !dbg !161     ; [#uses=1 type=i64] [debug line = 22:10]
  %src_addr_2 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_12, !dbg !161 ; [#uses=1 type=i16*] [debug line = 22:10]
  %tmp_13 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 3) ; [#uses=1 type=i7]
  %tmp_14 = zext i7 %tmp_13 to i64, !dbg !161     ; [#uses=1 type=i64] [debug line = 22:10]
  %src_addr_3 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_14, !dbg !161 ; [#uses=1 type=i16*] [debug line = 22:10]
  %tmp_15 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 -4) ; [#uses=1 type=i7]
  %tmp_16 = zext i7 %tmp_15 to i64, !dbg !161     ; [#uses=1 type=i64] [debug line = 22:10]
  %src_addr_4 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_16, !dbg !161 ; [#uses=1 type=i16*] [debug line = 22:10]
  %tmp_17 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 -3) ; [#uses=1 type=i7]
  %tmp_18 = zext i7 %tmp_17 to i64, !dbg !161     ; [#uses=1 type=i64] [debug line = 22:10]
  %src_addr_5 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_18, !dbg !161 ; [#uses=1 type=i16*] [debug line = 22:10]
  %tmp_19 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 -2) ; [#uses=1 type=i7]
  %tmp_20 = zext i7 %tmp_19 to i64, !dbg !161     ; [#uses=1 type=i64] [debug line = 22:10]
  %src_addr_6 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_20, !dbg !161 ; [#uses=1 type=i16*] [debug line = 22:10]
  %tmp_21 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 -1) ; [#uses=1 type=i7]
  %tmp_22 = zext i7 %tmp_21 to i64, !dbg !161     ; [#uses=1 type=i64] [debug line = 22:10]
  %src_addr_7 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_22, !dbg !161 ; [#uses=1 type=i16*] [debug line = 22:10]
  br label %1, !dbg !167                          ; [debug line = 18:9]

; <label>:1                                       ; preds = %2, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %2 ]             ; [#uses=4 type=i4]
  %exitcond1 = icmp eq i4 %k, -8, !dbg !167       ; [#uses=1 type=i1] [debug line = 18:9]
  %k_1 = add i4 %k, 1, !dbg !168                  ; [#uses=1 type=i4] [debug line = 18:61]
  br i1 %exitcond1, label %3, label %2, !dbg !167 ; [debug line = 18:9]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !169 ; [debug line = 18:67]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !170 ; [#uses=1 type=i32] [debug line = 18:107]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !171 ; [debug line = 19:1]
  %tmp = zext i4 %k to i64, !dbg !172             ; [#uses=8 type=i64] [debug line = 21:48]
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp, !dbg !172 ; [#uses=1 type=i14*] [debug line = 21:48]
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2, !dbg !172 ; [#uses=1 type=i14] [debug line = 21:48]
  %coeff_cast = zext i14 %dct_coeff_table_0_load to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %src_load = load i16* %src_addr, align 2, !dbg !161 ; [#uses=1 type=i16] [debug line = 22:10]
  %tmp_7_cast = sext i16 %src_load to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %tmp_8 = mul i29 %tmp_7_cast, %coeff_cast, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp, !dbg !172 ; [#uses=1 type=i15*] [debug line = 21:48]
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 21:48]
  %coeff_1_cast = sext i15 %dct_coeff_table_1_load to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %src_load_1 = load i16* %src_addr_1, align 2, !dbg !161 ; [#uses=1 type=i16] [debug line = 22:10]
  %tmp_7_1_cast = sext i16 %src_load_1 to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %tmp_8_1 = mul i29 %tmp_7_1_cast, %coeff_1_cast, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp, !dbg !172 ; [#uses=1 type=i15*] [debug line = 21:48]
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 21:48]
  %coeff_2_cast = sext i15 %dct_coeff_table_2_load to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %src_load_2 = load i16* %src_addr_2, align 2, !dbg !161 ; [#uses=1 type=i16] [debug line = 22:10]
  %tmp_7_2_cast = sext i16 %src_load_2 to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %tmp_8_2 = mul i29 %tmp_7_2_cast, %coeff_2_cast, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp, !dbg !172 ; [#uses=1 type=i15*] [debug line = 21:48]
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 21:48]
  %coeff_3_cast = sext i15 %dct_coeff_table_3_load to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %src_load_3 = load i16* %src_addr_3, align 2, !dbg !161 ; [#uses=1 type=i16] [debug line = 22:10]
  %tmp_7_3_cast = sext i16 %src_load_3 to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %tmp_8_3 = mul i29 %tmp_7_3_cast, %coeff_3_cast, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp, !dbg !172 ; [#uses=1 type=i15*] [debug line = 21:48]
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 21:48]
  %coeff_4_cast = sext i15 %dct_coeff_table_4_load to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %src_load_4 = load i16* %src_addr_4, align 2, !dbg !161 ; [#uses=1 type=i16] [debug line = 22:10]
  %tmp_7_4_cast = sext i16 %src_load_4 to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %tmp_8_4 = mul i29 %tmp_7_4_cast, %coeff_4_cast, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp, !dbg !172 ; [#uses=1 type=i15*] [debug line = 21:48]
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 21:48]
  %coeff_5_cast = sext i15 %dct_coeff_table_5_load to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %src_load_5 = load i16* %src_addr_5, align 2, !dbg !161 ; [#uses=1 type=i16] [debug line = 22:10]
  %tmp_7_5_cast = sext i16 %src_load_5 to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %tmp_8_5 = mul i29 %tmp_7_5_cast, %coeff_5_cast, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp, !dbg !172 ; [#uses=1 type=i15*] [debug line = 21:48]
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 21:48]
  %coeff_6_cast = sext i15 %dct_coeff_table_6_load to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %src_load_6 = load i16* %src_addr_6, align 2, !dbg !161 ; [#uses=1 type=i16] [debug line = 22:10]
  %tmp_7_6_cast = sext i16 %src_load_6 to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %tmp_8_6 = mul i29 %tmp_7_6_cast, %coeff_6_cast, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp, !dbg !172 ; [#uses=1 type=i15*] [debug line = 21:48]
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2, !dbg !172 ; [#uses=1 type=i15] [debug line = 21:48]
  %coeff_7_cast = sext i15 %dct_coeff_table_7_load to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %src_load_7 = load i16* %src_addr_7, align 2, !dbg !161 ; [#uses=1 type=i16] [debug line = 22:10]
  %tmp_7_7_cast = sext i16 %src_load_7 to i29, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %tmp_8_7 = mul i29 %tmp_7_7_cast, %coeff_7_cast, !dbg !161 ; [#uses=1 type=i29] [debug line = 22:10]
  %tmp2 = add i29 %tmp_8_1, %tmp_8, !dbg !173     ; [#uses=1 type=i29] [debug line = 24:7]
  %tmp3 = add i29 %tmp_8_2, %tmp_8_3, !dbg !173   ; [#uses=1 type=i29] [debug line = 24:7]
  %tmp1 = add i29 %tmp3, %tmp2, !dbg !173         ; [#uses=1 type=i29] [debug line = 24:7]
  %tmp5 = add i29 %tmp_8_4, %tmp_8_5, !dbg !173   ; [#uses=1 type=i29] [debug line = 24:7]
  %tmp7 = add i29 %tmp_8_7, 4096, !dbg !173       ; [#uses=1 type=i29] [debug line = 24:7]
  %tmp6 = add i29 %tmp7, %tmp_8_6, !dbg !173      ; [#uses=1 type=i29] [debug line = 24:7]
  %tmp4 = add i29 %tmp6, %tmp5, !dbg !173         ; [#uses=1 type=i29] [debug line = 24:7]
  %tmp_2 = add i29 %tmp4, %tmp1, !dbg !173        ; [#uses=1 type=i29] [debug line = 24:7]
  %tmp_4 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2, i32 13, i32 28), !dbg !173 ; [#uses=1 type=i16] [debug line = 24:7]
  %tmp_trn_cast = zext i4 %k to i8                ; [#uses=1 type=i8]
  %tmp_23 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_11_read, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_23 to i8, !dbg !173 ; [#uses=1 type=i8] [debug line = 24:7]
  %p_addr8 = add i8 %p_addr_cast, %tmp_trn_cast, !dbg !173 ; [#uses=1 type=i8] [debug line = 24:7]
  %tmp_24 = zext i8 %p_addr8 to i64, !dbg !173    ; [#uses=1 type=i64] [debug line = 24:7]
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_24, !dbg !173 ; [#uses=1 type=i16*] [debug line = 24:7]
  store i16 %tmp_4, i16* %dst_addr, align 2, !dbg !173 ; [debug line = 24:7]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_s) nounwind, !dbg !174 ; [#uses=0 type=i32] [debug line = 25:4]
  call void @llvm.dbg.value(metadata !{i4 %k_1}, i64 0, metadata !175), !dbg !168 ; [debug line = 18:61] [debug variable = k]
  br label %1, !dbg !168                          ; [debug line = 18:61]

; <label>:3                                       ; preds = %1
  ret void, !dbg !176                             ; [debug line = 26:1]
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_23 = zext i3 %1 to i6                    ; [#uses=2 type=i6]
  %empty_24 = trunc i6 %empty to i3               ; [#uses=1 type=i3]
  %empty_25 = call i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6 %empty_23, i32 3, i32 5) ; [#uses=1 type=i3]
  %empty_26 = or i3 %empty_24, %empty_25          ; [#uses=1 type=i3]
  %empty_27 = call i6 @_ssdm_op_PartSet.i6.i6.i3.i32.i32(i6 %empty_23, i3 %empty_26, i32 3, i32 5) ; [#uses=1 type=i6]
  ret i6 %empty_27
}

; [#uses=15]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_28 = zext i3 %1 to i7                    ; [#uses=2 type=i7]
  %empty_29 = trunc i7 %empty to i4               ; [#uses=1 type=i4]
  %empty_30 = call i4 @_ssdm_op_PartSelect.i4.i7.i32.i32(i7 %empty_28, i32 3, i32 6) ; [#uses=1 type=i4]
  %empty_31 = or i4 %empty_29, %empty_30          ; [#uses=1 type=i4]
  %empty_32 = call i7 @_ssdm_op_PartSet.i7.i7.i4.i32.i32(i7 %empty_28, i4 %empty_31, i32 3, i32 6) ; [#uses=1 type=i7]
  ret i7 %empty_32
}

; [#uses=1]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_33 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_33
}

; [#uses=2]
define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

; [#uses=1]
declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2) ; [#uses=1 type=i6]
  %empty_34 = trunc i6 %empty to i3               ; [#uses=1 type=i3]
  ret i3 %empty_34
}

; [#uses=1]
define weak i6 @_ssdm_op_PartSet.i6.i6.i3.i32.i32(i6, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.set.i6.i3(i6 %0, i3 %1, i32 %2, i32 %3) ; [#uses=1 type=i6]
  ret i6 %empty
}

; [#uses=1]
define weak i4 @_ssdm_op_PartSelect.i4.i7.i32.i32(i7, i32, i32) nounwind readnone {
entry:
  %empty = call i7 @llvm.part.select.i7(i7 %0, i32 %1, i32 %2) ; [#uses=1 type=i7]
  %empty_35 = trunc i7 %empty to i4               ; [#uses=1 type=i4]
  ret i4 %empty_35
}

; [#uses=1]
define weak i7 @_ssdm_op_PartSet.i7.i7.i4.i32.i32(i7, i4, i32, i32) nounwind readnone {
entry:
  %empty = call i7 @llvm.part.set.i7.i4(i7 %0, i4 %1, i32 %2, i32 %3) ; [#uses=1 type=i7]
  ret i7 %empty
}

; [#uses=1]
declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

; [#uses=1]
declare i6 @llvm.part.set.i6.i3(i6, i3, i32, i32) nounwind readnone

; [#uses=1]
declare i7 @llvm.part.select.i7(i7, i32, i32) nounwind readnone

; [#uses=1]
declare i7 @llvm.part.set.i7.i4(i7, i4, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{i32 85, i32 1, metadata !8, null}
!8 = metadata !{i32 786443, metadata !9, i32 84, i32 1, metadata !10, i32 28} ; [ DW_TAG_lexical_block ]
!9 = metadata !{i32 786478, i32 0, metadata !10, metadata !"dct", metadata !"dct", metadata !"_Z3dctPsS_", metadata !10, i32 83, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 84} ; [ DW_TAG_subprogram ]
!10 = metadata !{i32 786473, metadata !"../../project_documents/LabB/dct.cpp", metadata !"/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB", null} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!12 = metadata !{null, metadata !13, metadata !13}
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 15, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"input", metadata !21, metadata !"short"}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 63, i32 1}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 15, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"output", metadata !21, metadata !"short"}
!27 = metadata !{i32 786689, metadata !9, metadata !"input", null, i32 83, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !14, metadata !29, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!31 = metadata !{i32 83, i32 16, metadata !9, null}
!32 = metadata !{i32 786689, metadata !9, metadata !"output", null, i32 83, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 83, i32 38, metadata !9, null}
!34 = metadata !{i32 786688, metadata !8, metadata !"buf_2d_in", metadata !10, i32 85, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !14, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37, metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 85, i32 10, metadata !8, null}
!39 = metadata !{i32 786688, metadata !8, metadata !"buf_2d_out", metadata !10, i32 86, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 86, i32 10, metadata !8, null}
!41 = metadata !{i32 89, i32 4, metadata !8, null}
!42 = metadata !{i32 91, i32 4, metadata !8, null}
!43 = metadata !{i32 94, i32 4, metadata !8, null}
!44 = metadata !{i32 95, i32 1, metadata !8, null}
!45 = metadata !{i32 786689, metadata !46, metadata !"buf", null, i32 71, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write_data", metadata !"write_data", metadata !"_Z10write_dataPA8_sPs", metadata !10, i32 71, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 72} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{null, metadata !49, metadata !13}
!49 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !14, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{metadata !37}
!52 = metadata !{i32 71, i32 23, metadata !46, null}
!53 = metadata !{i32 786689, metadata !46, metadata !"output", null, i32 71, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 71, i32 116, metadata !46, null}
!55 = metadata !{i32 76, i32 9, metadata !56, null}
!56 = metadata !{i32 786443, metadata !57, i32 76, i32 4, metadata !10, i32 24} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786443, metadata !46, i32 72, i32 1, metadata !10, i32 23} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 78, i32 12, metadata !59, null}
!59 = metadata !{i32 786443, metadata !60, i32 78, i32 7, metadata !10, i32 26} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !56, i32 76, i32 66, metadata !10, i32 25} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 76, i32 61, metadata !56, null}
!62 = metadata !{i32 79, i32 1, metadata !63, null}
!63 = metadata !{i32 786443, metadata !59, i32 79, i32 10, metadata !10, i32 27} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 79, i32 11, metadata !63, null}
!65 = metadata !{i32 79, i32 48, metadata !63, null}
!66 = metadata !{i32 80, i32 1, metadata !63, null}
!67 = metadata !{i32 79, i32 69, metadata !63, null}
!68 = metadata !{i32 78, i32 64, metadata !59, null}
!69 = metadata !{i32 786688, metadata !57, metadata !"c", metadata !10, i32 73, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!71 = metadata !{i32 81, i32 1, metadata !57, null}
!72 = metadata !{i32 786689, metadata !73, metadata !"in_block", null, i32 28, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 786478, i32 0, metadata !10, metadata !"dct_2d", metadata !"dct_2d", metadata !"_Z6dct_2dPA8_sS0_", metadata !10, i32 28, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 30} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !76, metadata !76}
!76 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ]
!77 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !78, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!78 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !10, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!79 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !78, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!80 = metadata !{i32 28, i32 24, metadata !73, null}
!81 = metadata !{i32 786689, metadata !73, metadata !"out_block", null, i32 29, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 29, i32 18, metadata !73, null}
!83 = metadata !{i32 786688, metadata !84, metadata !"row_outbuf", metadata !10, i32 31, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786443, metadata !73, i32 30, i32 1, metadata !10, i32 5} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 31, i32 15, metadata !84, null}
!86 = metadata !{i32 786688, metadata !84, metadata !"col_outbuf", metadata !10, i32 32, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 32, i32 15, metadata !84, null}
!88 = metadata !{i32 786688, metadata !84, metadata !"col_inbuf", metadata !10, i32 32, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 32, i32 109, metadata !84, null}
!90 = metadata !{i32 37, i32 8, metadata !91, null}
!91 = metadata !{i32 786443, metadata !84, i32 37, i32 4, metadata !10, i32 6} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 37, i32 60, metadata !91, null}
!93 = metadata !{i32 37, i32 66, metadata !94, null}
!94 = metadata !{i32 786443, metadata !91, i32 37, i32 65, metadata !10, i32 7} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 38, i32 7, metadata !94, null}
!96 = metadata !{i32 786688, metadata !84, metadata !"i", metadata !10, i32 33, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!98 = metadata !{i32 44, i32 11, metadata !99, null}
!99 = metadata !{i32 786443, metadata !100, i32 44, i32 7, metadata !10, i32 10} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786443, metadata !101, i32 43, i32 1, metadata !10, i32 9} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 786443, metadata !84, i32 42, i32 4, metadata !10, i32 8} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 42, i32 61, metadata !101, null}
!103 = metadata !{i32 45, i32 11, metadata !104, null}
!104 = metadata !{i32 786443, metadata !99, i32 45, i32 10, metadata !10, i32 11} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 45, i32 57, metadata !104, null}
!106 = metadata !{i32 46, i32 1, metadata !104, null}
!107 = metadata !{i32 45, i32 1, metadata !104, null}
!108 = metadata !{i32 45, i32 36, metadata !104, null}
!109 = metadata !{i32 44, i32 63, metadata !99, null}
!110 = metadata !{i32 48, i32 9, metadata !111, null}
!111 = metadata !{i32 786443, metadata !84, i32 48, i32 4, metadata !10, i32 12} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 48, i32 61, metadata !111, null}
!113 = metadata !{i32 48, i32 67, metadata !114, null}
!114 = metadata !{i32 786443, metadata !111, i32 48, i32 66, metadata !10, i32 13} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 49, i32 7, metadata !114, null}
!116 = metadata !{i32 55, i32 11, metadata !117, null}
!117 = metadata !{i32 786443, metadata !118, i32 55, i32 7, metadata !10, i32 16} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 786443, metadata !119, i32 54, i32 1, metadata !10, i32 15} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786443, metadata !84, i32 53, i32 4, metadata !10, i32 14} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 53, i32 61, metadata !119, null}
!121 = metadata !{i32 56, i32 11, metadata !122, null}
!122 = metadata !{i32 786443, metadata !117, i32 56, i32 10, metadata !10, i32 17} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 56, i32 57, metadata !122, null}
!124 = metadata !{i32 57, i32 1, metadata !122, null}
!125 = metadata !{i32 56, i32 1, metadata !122, null}
!126 = metadata !{i32 56, i32 36, metadata !122, null}
!127 = metadata !{i32 55, i32 63, metadata !117, null}
!128 = metadata !{i32 57, i32 1, metadata !84, null}
!129 = metadata !{i32 786689, metadata !130, metadata !"input", null, i32 59, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read_data", metadata !"read_data", metadata !"_Z9read_dataPsPA8_s", metadata !10, i32 59, metadata !131, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 60} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!132 = metadata !{null, metadata !13, metadata !49}
!133 = metadata !{i32 59, i32 22, metadata !130, null}
!134 = metadata !{i32 786689, metadata !130, metadata !"buf", null, i32 59, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 59, i32 44, metadata !130, null}
!136 = metadata !{i32 64, i32 9, metadata !137, null}
!137 = metadata !{i32 786443, metadata !138, i32 64, i32 4, metadata !10, i32 19} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 786443, metadata !130, i32 60, i32 1, metadata !10, i32 18} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 66, i32 12, metadata !140, null}
!140 = metadata !{i32 786443, metadata !141, i32 66, i32 7, metadata !10, i32 21} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 786443, metadata !137, i32 64, i32 66, metadata !10, i32 20} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 64, i32 61, metadata !137, null}
!143 = metadata !{i32 67, i32 1, metadata !144, null}
!144 = metadata !{i32 786443, metadata !140, i32 67, i32 10, metadata !10, i32 22} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 67, i32 11, metadata !144, null}
!146 = metadata !{i32 67, i32 48, metadata !144, null}
!147 = metadata !{i32 68, i32 1, metadata !144, null}
!148 = metadata !{i32 67, i32 68, metadata !144, null}
!149 = metadata !{i32 66, i32 64, metadata !140, null}
!150 = metadata !{i32 786688, metadata !138, metadata !"c", metadata !10, i32 61, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 69, i32 1, metadata !138, null}
!152 = metadata !{i32 786689, metadata !153, metadata !"src", null, i32 9, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!153 = metadata !{i32 786478, i32 0, metadata !10, metadata !"dct_1d", metadata !"dct_1d", metadata !"_Z6dct_1dPsS_", metadata !10, i32 9, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 10} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{null, metadata !156, metadata !156}
!156 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ]
!157 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !78, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!158 = metadata !{i32 9, i32 24, metadata !153, null}
!159 = metadata !{i32 786689, metadata !153, metadata !"dst", null, i32 9, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 9, i32 81, metadata !153, null}
!161 = metadata !{i32 22, i32 10, metadata !162, null}
!162 = metadata !{i32 786443, metadata !163, i32 20, i32 77, metadata !10, i32 4} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786443, metadata !164, i32 20, i32 7, metadata !10, i32 3} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786443, metadata !165, i32 18, i32 66, metadata !10, i32 2} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 786443, metadata !166, i32 18, i32 4, metadata !10, i32 1} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 786443, metadata !153, i32 10, i32 1, metadata !10, i32 0} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 18, i32 9, metadata !165, null}
!168 = metadata !{i32 18, i32 61, metadata !165, null}
!169 = metadata !{i32 18, i32 67, metadata !164, null}
!170 = metadata !{i32 18, i32 107, metadata !164, null}
!171 = metadata !{i32 19, i32 1, metadata !164, null}
!172 = metadata !{i32 21, i32 48, metadata !162, null}
!173 = metadata !{i32 24, i32 7, metadata !164, null}
!174 = metadata !{i32 25, i32 4, metadata !164, null}
!175 = metadata !{i32 786688, metadata !166, metadata !"k", metadata !10, i32 11, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 26, i32 1, metadata !166, null}
