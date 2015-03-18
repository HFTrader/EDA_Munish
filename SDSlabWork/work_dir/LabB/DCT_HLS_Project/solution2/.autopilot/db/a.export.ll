; ModuleID = '/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB/DCT_HLS_Project/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1
@p_str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1
@p_str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1
@p_str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1
@p_str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1
@p_str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1
@p_str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [4 x i8] c"dct\00"
@str1 = internal constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00"
@str2 = internal constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00"
@str3 = internal constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00"
@str4 = internal constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00"
@dct_coeff_table = internal constant [64 x i15] [i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 11363, i15 9633, i15 6436, i15 2260, i15 -2260, i15 -6436, i15 -9632, i15 -11362, i15 10703, i15 4433, i15 -4433, i15 -10703, i15 -10703, i15 -4433, i15 4433, i15 10703, i15 9633, i15 -2260, i15 -11362, i15 -6436, i15 6436, i15 11363, i15 2260, i15 -9632, i15 8192, i15 -8192, i15 -8192, i15 8192, i15 8192, i15 -8191, i15 -8191, i15 8192, i15 6436, i15 -11362, i15 2260, i15 9633, i15 -9632, i15 -2260, i15 11363, i15 -6436, i15 4433, i15 -10703, i15 10703, i15 -4433, i15 -4433, i15 10703, i15 -10703, i15 4433, i15 2260, i15 -6436, i15 9633, i15 -11362, i15 11363, i15 -9632, i15 6436, i15 -2260]

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
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
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input_r) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output_r) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2
  %buf_2d_out = alloca [64 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %0, %.reset
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %r_i = phi i4 [ 0, %0 ], [ %r_i_mid2, %.reset ]
  %c_i = phi i4 [ 0, %0 ], [ %c, %.reset ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %read_data.exit, label %.reset

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @str1)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond_i = icmp eq i4 %c_i, -8
  %c_i_mid2 = select i1 %exitcond_i, i4 0, i4 %c_i
  %r = add i4 %r_i, 1
  %r_i_mid2 = select i1 %exitcond_i, i4 %r, i4 %r_i
  %tmp = trunc i4 %r_i_mid2 to i3
  %tmp_i = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0)
  %c_i_cast6 = zext i4 %c_i_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind
  %tmp_12_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str2) nounwind
  %tmp_5_i = add i6 %c_i_cast6, %tmp_i
  %tmp_6_i = zext i6 %tmp_5_i to i64
  %input_addr = getelementptr [64 x i16]* %input_r, i64 0, i64 %tmp_6_i
  %input_load = load i16* %input_addr, align 2
  %tmp_7_i_trn_cast = zext i4 %c_i_mid2 to i8
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp_1 to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_7_i_trn_cast
  %tmp_2 = zext i8 %p_addr1 to i64
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_2
  store i16 %input_load, i16* %buf_2d_in_addr, align 2
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_12_i) nounwind
  %c = add i4 %c_i_mid2, 1
  br label %1

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_2d([64 x i16]* nocapture %buf_2d_in, [64 x i16]* nocapture %buf_2d_out) nounwind
  br label %2

; <label>:2                                       ; preds = %read_data.exit, %.reset10
  %indvar_flatten1 = phi i7 [ 0, %read_data.exit ], [ %indvar_flatten_next1, %.reset10 ]
  %r_i2 = phi i4 [ 0, %read_data.exit ], [ %r_i2_mid2, %.reset10 ]
  %c_i6 = phi i4 [ 0, %read_data.exit ], [ %c_1, %.reset10 ]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %write_data.exit, label %.reset10

.reset10:                                         ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @str2)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond_i1 = icmp eq i4 %c_i6, -8
  %c_i6_mid2 = select i1 %exitcond_i1, i4 0, i4 %c_i6
  %r_s = add i4 %r_i2, 1
  %r_i2_mid2 = select i1 %exitcond_i1, i4 %r_s, i4 %r_i2
  %tmp_3 = trunc i4 %r_i2_mid2 to i3
  %tmp_i5 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_3, i3 0)
  %c_i6_cast2 = zext i4 %c_i6_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind
  %tmp_2_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str2) nounwind
  %tmp_8_i_trn_cast = zext i4 %c_i6_mid2 to i8
  %tmp_4 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i2_mid2, i3 0)
  %p_addr2_cast = zext i7 %tmp_4 to i8
  %p_addr3 = add i8 %p_addr2_cast, %tmp_8_i_trn_cast
  %tmp_5 = zext i8 %p_addr3 to i64
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_5
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2
  %tmp_9_i = add i6 %c_i6_cast2, %tmp_i5
  %tmp_3_i = zext i6 %tmp_9_i to i64
  %output_addr = getelementptr [64 x i16]* %output_r, i64 0, i64 %tmp_3_i
  store i16 %buf_2d_out_load, i16* %output_addr, align 2
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_2_i) nounwind
  %c_1 = add i4 %c_i6_mid2, 1
  br label %2

write_data.exit:                                  ; preds = %2
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
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @str3)
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond = icmp eq i4 %i_1, -8
  %i_1_mid2 = select i1 %exitcond, i4 0, i4 %i_1
  %j_s = add i4 %j, 1
  %j_mid2 = select i1 %exitcond, i4 %j_s, i4 %j
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str5) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str2) nounwind
  %tmp_2_trn_cast = zext i4 %i_1_mid2 to i8
  %tmp_trn_cast = zext i4 %j_mid2 to i8
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp to i8
  %p_addr5 = add i8 %p_addr_cast, %tmp_trn_cast
  %tmp_6 = zext i8 %p_addr5 to i64
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_6
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_mid2, i3 0)
  %p_addr6_cast = zext i7 %tmp_7 to i8
  %p_addr7 = add i8 %p_addr6_cast, %tmp_2_trn_cast
  %tmp_8 = zext i8 %p_addr7 to i64
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_8
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str5, i32 %tmp_9)
  %i_6 = add i4 %i_1_mid2, 1
  br label %.preheader2.preheader

.preheader1:                                      ; preds = %.preheader2.preheader, %3
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader2.preheader ]
  %exitcond4 = icmp eq i4 %i_2, -8
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_5 = add i4 %i_2, 1
  br i1 %exitcond4, label %.preheader.preheader, label %3

; <label>:3                                       ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str6) nounwind
  call fastcc void @dct_1d([64 x i16]* nocapture %col_inbuf, i4 %i_2, [64 x i16]* nocapture %col_outbuf, i4 %i_2)
  br label %.preheader1

.preheader.preheader:                             ; preds = %.preheader1, %.preheader
  %indvar_flatten2 = phi i7 [ %indvar_flatten_next2, %.preheader ], [ 0, %.preheader1 ]
  %j_1 = phi i4 [ %j_1_mid2, %.preheader ], [ 0, %.preheader1 ]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader1 ]
  %exitcond_flatten2 = icmp eq i7 %indvar_flatten2, -64
  %indvar_flatten_next2 = add i7 %indvar_flatten2, 1
  br i1 %exitcond_flatten2, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @str4)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond1 = icmp eq i4 %i_3, -8
  %i_3_mid2 = select i1 %exitcond1, i4 0, i4 %i_3
  %j_2 = add i4 %j_1, 1
  %j_1_mid2 = select i1 %exitcond1, i4 %j_2, i4 %j_1
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str8) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str2) nounwind
  %tmp_4_trn_cast = zext i4 %i_3_mid2 to i8
  %tmp_3_trn_cast = zext i4 %j_1_mid2 to i8
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0)
  %p_addr8_cast = zext i7 %tmp_s to i8
  %p_addr9 = add i8 %p_addr8_cast, %tmp_3_trn_cast
  %tmp_2 = zext i8 %p_addr9 to i64
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_2
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2
  %tmp_3 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1_mid2, i3 0)
  %p_addr3_cast = zext i7 %tmp_3 to i8
  %p_addr4 = add i8 %p_addr3_cast, %tmp_4_trn_cast
  %tmp_4 = zext i8 %p_addr4 to i64
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_4
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str8, i32 %tmp_1)
  %i_7 = add i4 %i_3_mid2, 1
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
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
  br label %1

; <label>:1                                       ; preds = %5, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %5 ]
  %exitcond1 = icmp eq i4 %k, -8
  %k_1 = add i4 %k, 1
  br i1 %exitcond1, label %6, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  br label %3

; <label>:3                                       ; preds = %4, %2
  %n = phi i4 [ 0, %2 ], [ %n_1, %4 ]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp_5, %4 ]
  %tmp_6 = trunc i32 %tmp1 to i29
  %exitcond = icmp eq i4 %n, -8
  %n_1 = add i4 %n, 1
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %3
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str2) nounwind
  %tmp_6_trn5_cast = zext i4 %n to i8
  %tmp_10 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %k, i3 0)
  %dct_coeff_table_addr6_cast = zext i7 %tmp_10 to i8
  %dct_coeff_table_addr7 = add i8 %dct_coeff_table_addr6_cast, %tmp_6_trn5_cast
  %tmp_12 = zext i8 %dct_coeff_table_addr7 to i64
  %dct_coeff_table_addr = getelementptr [64 x i15]* @dct_coeff_table, i64 0, i64 %tmp_12
  %dct_coeff_table_load = load i15* %dct_coeff_table_addr, align 2
  %coeff_cast = sext i15 %dct_coeff_table_load to i31
  %tmp_13 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 0)
  %p_addr_cast = zext i7 %tmp_13 to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_6_trn5_cast
  %tmp_14 = zext i8 %p_addr1 to i64
  %src_addr = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_14
  %src_load = load i16* %src_addr, align 2
  %tmp_7_cast = sext i16 %src_load to i31
  %tmp_8 = mul i31 %tmp_7_cast, %coeff_cast
  %tmp_8_cast = sext i31 %tmp_8 to i32
  %tmp_5 = add nsw i32 %tmp_8_cast, %tmp1
  %empty_24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1, i32 %tmp_9) nounwind
  br label %3

; <label>:5                                       ; preds = %3
  %tmp_2 = add i29 %tmp_6, 4096
  %tmp_4 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2, i32 13, i32 28)
  %tmp_trn_cast = zext i4 %k to i8
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_11_read, i3 0)
  %p_addr2_cast = zext i7 %tmp to i8
  %p_addr3 = add i8 %p_addr2_cast, %tmp_trn_cast
  %tmp_7 = zext i8 %p_addr3 to i64
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_7
  store i16 %tmp_4, i16* %dst_addr, align 2
  %empty_25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_s) nounwind
  br label %1

; <label>:6                                       ; preds = %1
  ret void
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_26 = zext i3 %1 to i6
  %empty_27 = trunc i6 %empty to i3
  %empty_28 = call i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6 %empty_26, i32 3, i32 5)
  %empty_29 = or i3 %empty_27, %empty_28
  %empty_30 = call i6 @_ssdm_op_PartSet.i6.i6.i3.i32.i32(i6 %empty_26, i3 %empty_29, i32 3, i32 5)
  ret i6 %empty_30
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_31 = zext i3 %1 to i7
  %empty_32 = trunc i7 %empty to i4
  %empty_33 = call i4 @_ssdm_op_PartSelect.i4.i7.i32.i32(i7 %empty_31, i32 3, i32 6)
  %empty_34 = or i4 %empty_32, %empty_33
  %empty_35 = call i7 @_ssdm_op_PartSet.i7.i7.i4.i32.i32(i7 %empty_31, i4 %empty_34, i32 3, i32 6)
  ret i7 %empty_35
}

define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_36 = trunc i29 %empty to i16
  ret i16 %empty_36
}

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_37 = trunc i6 %empty to i3
  ret i3 %empty_37
}

define weak i6 @_ssdm_op_PartSet.i6.i6.i3.i32.i32(i6, i3, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.set.i6.i3(i6 %0, i3 %1, i32 %2, i32 %3)
  ret i6 %empty
}

define weak i4 @_ssdm_op_PartSelect.i4.i7.i32.i32(i7, i32, i32) nounwind readnone {
entry:
  %empty = call i7 @llvm.part.select.i7(i7 %0, i32 %1, i32 %2)
  %empty_38 = trunc i7 %empty to i4
  ret i4 %empty_38
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
