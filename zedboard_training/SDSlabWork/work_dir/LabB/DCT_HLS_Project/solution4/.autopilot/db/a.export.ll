; ModuleID = '/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB/DCT_HLS_Project/solution4/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1
@p_str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1
@p_str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1
@p_str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1
@p_str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1
@p_str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [4 x i8] c"dct\00"
@dct_coeff_table_0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260]
@dct_coeff_table_1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436]
@dct_coeff_table_2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633]
@dct_coeff_table_3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362]
@dct_coeff_table_4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363]
@dct_coeff_table_5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632]
@dct_coeff_table_6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436]
@dct_coeff_table_7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260]
@str1 = internal constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00"
@str2 = internal constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00"
@str3 = internal constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00"
@str4 = internal constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define void @dct([64 x i16]* %input_r, [64 x i16]* %output_r) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input_r) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output_r) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2
  %buf_2d_out = alloca [64 x i16], align 2
  call fastcc void @read_data([64 x i16]* nocapture %input_r, [64 x i16]* nocapture %buf_2d_in) nounwind
  call fastcc void @dct_2d([64 x i16]* nocapture %buf_2d_in, [64 x i16]* nocapture %buf_2d_out) nounwind
  call fastcc void @write_data([64 x i16]* nocapture %buf_2d_out, [64 x i16]* nocapture %output_r) nounwind
  ret void
}

define internal fastcc void @write_data([64 x i16]* nocapture %buf_r, [64 x i16]* nocapture %output_r) {
  br label %1

; <label>:1                                       ; preds = %0, %.reset
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %r = phi i4 [ 0, %0 ], [ %r_mid2, %.reset ]
  %c = phi i4 [ 0, %0 ], [ %c_1, %.reset ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @str1)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond4 = icmp eq i4 %c, -8
  %c_mid2 = select i1 %exitcond4, i4 0, i4 %c
  %r_s = add i4 %r, 1
  %r_mid2 = select i1 %exitcond4, i4 %r_s, i4 %r
  %tmp = trunc i4 %r_mid2 to i3
  %tmp_s = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0)
  %c_cast6 = zext i4 %c_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_8_trn_cast = zext i4 %c_mid2 to i8
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp_1 to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_8_trn_cast
  %tmp_4 = zext i8 %p_addr1 to i64
  %buf_addr = getelementptr [64 x i16]* %buf_r, i64 0, i64 %tmp_4
  %buf_load = load i16* %buf_addr, align 2
  %tmp_9 = add i6 %tmp_s, %c_cast6
  %tmp_3 = zext i6 %tmp_9 to i64
  %output_addr = getelementptr [64 x i16]* %output_r, i64 0, i64 %tmp_3
  store i16 %buf_load, i16* %output_addr, align 2
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_2)
  %c_1 = add i4 %c_mid2, 1
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

define internal fastcc void @dct_2d([64 x i16]* nocapture %in_block, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2
  %col_outbuf = alloca [64 x i16], align 2
  %col_inbuf = alloca [64 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]
  %exitcond7 = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_4 = add i4 %i, 1
  br i1 %exitcond7, label %.preheader2.preheader, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str3) nounwind
  call fastcc void @dct_1d([64 x i16]* nocapture %in_block, i4 %i, [64 x i16]* nocapture %row_outbuf, i4 %i)
  br label %1

.preheader2.preheader:                            ; preds = %1, %.preheader2
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %.preheader2 ], [ 0, %1 ]
  %j = phi i4 [ %j_mid2, %.preheader2 ], [ 0, %1 ]
  %i_1 = phi i4 [ %i_6, %.preheader2 ], [ 0, %1 ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader1, label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @str2)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond = icmp eq i4 %i_1, -8
  %i_1_mid2 = select i1 %exitcond, i4 0, i4 %i_1
  %j_s = add i4 %j, 1
  %j_mid2 = select i1 %exitcond, i4 %j_s, i4 %j
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str5) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_2_trn_cast = zext i4 %i_1_mid2 to i8
  %tmp_trn_cast = zext i4 %j_mid2 to i8
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_trn_cast
  %tmp_5 = zext i8 %p_addr1 to i64
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_5
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2
  %tmp_6 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_mid2, i3 0)
  %p_addr2_cast = zext i7 %tmp_6 to i8
  %p_addr5 = add i8 %p_addr2_cast, %tmp_2_trn_cast
  %tmp_7 = zext i8 %p_addr5 to i64
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_7
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str5, i32 %tmp_9)
  %i_6 = add i4 %i_1_mid2, 1
  br label %.preheader2.preheader

.preheader1:                                      ; preds = %.preheader2.preheader, %3
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader2.preheader ]
  %exitcond4 = icmp eq i4 %i_2, -8
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_5 = add i4 %i_2, 1
  br i1 %exitcond4, label %.preheader.preheader, label %3

; <label>:3                                       ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str6) nounwind
  call fastcc void @dct_1d([64 x i16]* nocapture %col_inbuf, i4 %i_2, [64 x i16]* nocapture %col_outbuf, i4 %i_2)
  br label %.preheader1

.preheader.preheader:                             ; preds = %.preheader1, %.preheader
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader1 ]
  %j_1 = phi i4 [ %j_1_mid2, %.preheader ], [ 0, %.preheader1 ]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader1 ]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @str3)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond1 = icmp eq i4 %i_3, -8
  %i_3_mid2 = select i1 %exitcond1, i4 0, i4 %i_3
  %j_2 = add i4 %j_1, 1
  %j_1_mid2 = select i1 %exitcond1, i4 %j_2, i4 %j_1
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str8) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_4_trn_cast = zext i4 %i_3_mid2 to i8
  %tmp_3_trn_cast = zext i4 %j_1_mid2 to i8
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0)
  %p_addr6_cast = zext i7 %tmp_8 to i8
  %p_addr7 = add i8 %p_addr6_cast, %tmp_3_trn_cast
  %tmp_s = zext i8 %p_addr7 to i64
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_s
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1_mid2, i3 0)
  %p_addr3_cast = zext i7 %tmp_2 to i8
  %p_addr4 = add i8 %p_addr3_cast, %tmp_4_trn_cast
  %tmp_3 = zext i8 %p_addr4 to i64
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_3
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str8, i32 %tmp_1)
  %i_7 = add i4 %i_3_mid2, 1
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void
}

define internal fastcc void @read_data([64 x i16]* nocapture %input_r, [64 x i16]* nocapture %buf_r) {
  br label %1

; <label>:1                                       ; preds = %0, %.reset
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %r = phi i4 [ 0, %0 ], [ %r_mid2, %.reset ]
  %c = phi i4 [ 0, %0 ], [ %c_1, %.reset ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @str4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond4 = icmp eq i4 %c, -8
  %c_mid2 = select i1 %exitcond4, i4 0, i4 %c
  %r_s = add i4 %r, 1
  %r_mid2 = select i1 %exitcond4, i4 %r_s, i4 %r
  %tmp_1 = trunc i4 %r_mid2 to i3
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_1, i3 0)
  %c_cast6 = zext i4 %c_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_5 = add i6 %tmp, %c_cast6
  %tmp_6 = zext i6 %tmp_5 to i64
  %input_addr = getelementptr [64 x i16]* %input_r, i64 0, i64 %tmp_6
  %input_load = load i16* %input_addr, align 2
  %tmp_7_trn_cast = zext i4 %c_mid2 to i8
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp_s to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_7_trn_cast
  %tmp_4 = zext i8 %p_addr1 to i64
  %buf_addr = getelementptr [64 x i16]* %buf_r, i64 0, i64 %tmp_4
  store i16 %input_load, i16* %buf_addr, align 2
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_3)
  %c_1 = add i4 %c_mid2, 1
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define internal fastcc void @dct_1d([64 x i16]* nocapture %src, i4 %tmp_1, [64 x i16]* nocapture %dst, i4 %tmp_11) {
  %tmp_11_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_11)
  %tmp_1_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_1)
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 0)
  %tmp_6 = zext i7 %tmp_5 to i64
  %src_addr = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_6
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 1)
  %tmp_9 = zext i7 %tmp_7 to i64
  %src_addr_1 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_9
  %tmp_10 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 2)
  %tmp_12 = zext i7 %tmp_10 to i64
  %src_addr_2 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_12
  %tmp_13 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 3)
  %tmp_14 = zext i7 %tmp_13 to i64
  %src_addr_3 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_14
  %tmp_15 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 -4)
  %tmp_16 = zext i7 %tmp_15 to i64
  %src_addr_4 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_16
  %tmp_17 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 -3)
  %tmp_18 = zext i7 %tmp_17 to i64
  %src_addr_5 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_18
  %tmp_19 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 -2)
  %tmp_20 = zext i7 %tmp_19 to i64
  %src_addr_6 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_20
  %tmp_21 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 -1)
  %tmp_22 = zext i7 %tmp_21 to i64
  %src_addr_7 = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_22
  br label %1

; <label>:1                                       ; preds = %2, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %2 ]
  %exitcond1 = icmp eq i4 %k, -8
  %k_1 = add i4 %k, 1
  br i1 %exitcond1, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp = zext i4 %k to i64
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2
  %coeff_cast = zext i14 %dct_coeff_table_0_load to i29
  %src_load = load i16* %src_addr, align 2
  %tmp_7_cast = sext i16 %src_load to i29
  %tmp_8 = mul i29 %tmp_7_cast, %coeff_cast
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2
  %coeff_1_cast = sext i15 %dct_coeff_table_1_load to i29
  %src_load_1 = load i16* %src_addr_1, align 2
  %tmp_7_1_cast = sext i16 %src_load_1 to i29
  %tmp_8_1 = mul i29 %tmp_7_1_cast, %coeff_1_cast
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2
  %coeff_2_cast = sext i15 %dct_coeff_table_2_load to i29
  %src_load_2 = load i16* %src_addr_2, align 2
  %tmp_7_2_cast = sext i16 %src_load_2 to i29
  %tmp_8_2 = mul i29 %tmp_7_2_cast, %coeff_2_cast
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2
  %coeff_3_cast = sext i15 %dct_coeff_table_3_load to i29
  %src_load_3 = load i16* %src_addr_3, align 2
  %tmp_7_3_cast = sext i16 %src_load_3 to i29
  %tmp_8_3 = mul i29 %tmp_7_3_cast, %coeff_3_cast
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2
  %coeff_4_cast = sext i15 %dct_coeff_table_4_load to i29
  %src_load_4 = load i16* %src_addr_4, align 2
  %tmp_7_4_cast = sext i16 %src_load_4 to i29
  %tmp_8_4 = mul i29 %tmp_7_4_cast, %coeff_4_cast
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2
  %coeff_5_cast = sext i15 %dct_coeff_table_5_load to i29
  %src_load_5 = load i16* %src_addr_5, align 2
  %tmp_7_5_cast = sext i16 %src_load_5 to i29
  %tmp_8_5 = mul i29 %tmp_7_5_cast, %coeff_5_cast
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2
  %coeff_6_cast = sext i15 %dct_coeff_table_6_load to i29
  %src_load_6 = load i16* %src_addr_6, align 2
  %tmp_7_6_cast = sext i16 %src_load_6 to i29
  %tmp_8_6 = mul i29 %tmp_7_6_cast, %coeff_6_cast
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2
  %coeff_7_cast = sext i15 %dct_coeff_table_7_load to i29
  %src_load_7 = load i16* %src_addr_7, align 2
  %tmp_7_7_cast = sext i16 %src_load_7 to i29
  %tmp_8_7 = mul i29 %tmp_7_7_cast, %coeff_7_cast
  %tmp2 = add i29 %tmp_8_1, %tmp_8
  %tmp3 = add i29 %tmp_8_2, %tmp_8_3
  %tmp1 = add i29 %tmp3, %tmp2
  %tmp5 = add i29 %tmp_8_4, %tmp_8_5
  %tmp7 = add i29 %tmp_8_7, 4096
  %tmp6 = add i29 %tmp7, %tmp_8_6
  %tmp4 = add i29 %tmp6, %tmp5
  %tmp_2 = add i29 %tmp4, %tmp1
  %tmp_4 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2, i32 13, i32 28)
  %tmp_trn_cast = zext i4 %k to i8
  %tmp_23 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_11_read, i3 0)
  %p_addr_cast = zext i7 %tmp_23 to i8
  %p_addr8 = add i8 %p_addr_cast, %tmp_trn_cast
  %tmp_24 = zext i8 %p_addr8 to i64
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_24
  store i16 %tmp_4, i16* %dst_addr, align 2
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_s) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_23 = zext i3 %1 to i6
  %empty_24 = trunc i6 %empty to i3
  %empty_25 = call i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6 %empty_23, i32 3, i32 5)
  %empty_26 = or i3 %empty_24, %empty_25
  %empty_27 = call i6 @_ssdm_op_PartSet.i6.i6.i3.i32.i32(i6 %empty_23, i3 %empty_26, i32 3, i32 5)
  ret i6 %empty_27
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_28 = zext i3 %1 to i7
  %empty_29 = trunc i7 %empty to i4
  %empty_30 = call i4 @_ssdm_op_PartSelect.i4.i7.i32.i32(i7 %empty_28, i32 3, i32 6)
  %empty_31 = or i4 %empty_29, %empty_30
  %empty_32 = call i7 @_ssdm_op_PartSet.i7.i7.i4.i32.i32(i7 %empty_28, i4 %empty_31, i32 3, i32 6)
  ret i7 %empty_32
}

define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_33 = trunc i29 %empty to i16
  ret i16 %empty_33
}

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

define weak i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_34 = trunc i6 %empty to i3
  ret i3 %empty_34
}

define weak i6 @_ssdm_op_PartSet.i6.i6.i3.i32.i32(i6, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.set.i6.i3(i6 %0, i3 %1, i32 %2, i32 %3)
  ret i6 %empty
}

define weak i4 @_ssdm_op_PartSelect.i4.i7.i32.i32(i7, i32, i32) nounwind readnone {
entry:
  %empty = call i7 @llvm.part.select.i7(i7 %0, i32 %1, i32 %2)
  %empty_35 = trunc i7 %empty to i4
  ret i4 %empty_35
}

define weak i7 @_ssdm_op_PartSet.i7.i7.i4.i32.i32(i7, i4, i32, i32) nounwind readnone {
entry:
  %empty = call i7 @llvm.part.set.i7.i4(i7 %0, i4 %1, i32 %2, i32 %3)
  ret i7 %empty
}

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare i6 @llvm.part.set.i6.i3(i6, i3, i32, i32) nounwind readnone

declare i7 @llvm.part.select.i7(i7, i32, i32) nounwind readnone

declare i7 @llvm.part.set.i7.i4(i7, i4, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 15, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"input", metadata !11, metadata !"short"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 63, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 15, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"output", metadata !11, metadata !"short"}
