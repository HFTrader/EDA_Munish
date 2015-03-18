; ModuleID = '/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB/DCT_HLS_Project/solution5/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1
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
@str2 = internal constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00"
@str3 = internal constant [28 x i8] c"Row_DCT_Loop_DCT_Outer_Loop\00"
@str4 = internal constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00"
@str5 = internal constant [28 x i8] c"Col_DCT_Loop_DCT_Outer_Loop\00"
@str6 = internal constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00"

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
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input_r) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output_r) nounwind, !map !13
  %row_outbuf = alloca [64 x i16], align 2
  %col_outbuf = alloca [64 x i16], align 2
  %col_inbuf = alloca [64 x i16], align 2
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2
  %buf_2d_out = alloca [64 x i16], align 2
  call fastcc void @read_data([64 x i16]* nocapture %input_r, [64 x i16]* nocapture %buf_2d_in) nounwind
  call fastcc void @dct_Loop_Row_DCT_Loop_proc([64 x i16]* nocapture %buf_2d_in, [64 x i16]* nocapture %row_outbuf) nounwind
  call fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* nocapture %row_outbuf, [64 x i16]* nocapture %col_inbuf) nounwind
  call fastcc void @dct_Loop_Col_DCT_Loop_proc([64 x i16]* nocapture %col_inbuf, [64 x i16]* nocapture %col_outbuf) nounwind
  call fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* nocapture %col_outbuf, [64 x i16]* nocapture %buf_2d_out) nounwind
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
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_4_trn_cast = zext i4 %c_mid2 to i8
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp_1 to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_4_trn_cast
  %tmp_2 = zext i8 %p_addr1 to i64
  %buf_addr = getelementptr [64 x i16]* %buf_r, i64 0, i64 %tmp_2
  %buf_load = load i16* %buf_addr, align 2
  %tmp_5 = add i6 %tmp_s, %c_cast6
  %tmp_6 = zext i6 %tmp_5 to i64
  %output_addr = getelementptr [64 x i16]* %output_r, i64 0, i64 %tmp_6
  store i16 %buf_load, i16* %output_addr, align 2
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_8)
  %c_1 = add i4 %c_mid2, 1
  br label %1

; <label>:2                                       ; preds = %1
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
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @str2)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %exitcond4 = icmp eq i4 %c, -8
  %c_mid2 = select i1 %exitcond4, i4 0, i4 %c
  %r_s = add i4 %r, 1
  %r_mid2 = select i1 %exitcond4, i4 %r_s, i4 %r
  %tmp_3 = trunc i4 %r_mid2 to i3
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_3, i3 0)
  %c_cast6 = zext i4 %c_mid2 to i6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_1 = add i6 %tmp, %c_cast6
  %tmp_2 = zext i6 %tmp_1 to i64
  %input_addr = getelementptr [64 x i16]* %input_r, i64 0, i64 %tmp_2
  %input_load = load i16* %input_addr, align 2
  %tmp_3_trn_cast = zext i4 %c_mid2 to i8
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp_5 to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_3_trn_cast
  %tmp_6 = zext i8 %p_addr1 to i64
  %buf_addr = getelementptr [64 x i16]* %buf_r, i64 0, i64 %tmp_6
  store i16 %input_load, i16* %buf_addr, align 2
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_4)
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

define internal fastcc void @dct_Loop_Row_DCT_Loop_proc([64 x i16]* nocapture %buf_2d_in, [64 x i16]* nocapture %row_outbuf) nounwind {
newFuncRoot:
  br label %0

.preheader2.i.exitStub:                           ; preds = %0
  ret void

; <label>:0                                       ; preds = %newFuncRoot, %dct_1d.exit
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %dct_1d.exit ]
  %i_0_i = phi i4 [ 0, %newFuncRoot ], [ %i_0_i_mid2, %dct_1d.exit ]
  %k_i = phi i4 [ 0, %newFuncRoot ], [ %k, %dct_1d.exit ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader2.i.exitStub, label %dct_1d.exit

dct_1d.exit:                                      ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @str3)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond1_i = icmp eq i4 %k_i, -8
  %k_i_mid2 = select i1 %exitcond1_i, i4 0, i4 %k_i
  %i = add i4 %i_0_i, 1
  %i_0_i_mid2 = select i1 %exitcond1_i, i4 %i, i4 %i_0_i
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_i_17 = zext i4 %k_i_mid2 to i64
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i_17
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp_7 to i8
  %tmp_8 = zext i7 %tmp_7 to i64
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_8
  %buf_2d_in_load = load i16* %buf_2d_in_addr, align 2
  %tmp_72_cast_i = sext i16 %buf_2d_in_load to i29
  %tmp_8_i = mul i29 %tmp_72_cast_i, %coeff_cast_i
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i_17
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29
  %tmp_9 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 1)
  %tmp_s = zext i7 %tmp_9 to i64
  %buf_2d_in_addr_1 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_s
  %buf_2d_in_load_1 = load i16* %buf_2d_in_addr_1, align 2
  %tmp_72_1_cast_i = sext i16 %buf_2d_in_load_1 to i29
  %tmp_8_1_i = mul i29 %tmp_72_1_cast_i, %coeff_1_cast_i
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i_17
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 2)
  %tmp_2 = zext i7 %tmp_1 to i64
  %buf_2d_in_addr_2 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_2
  %buf_2d_in_load_2 = load i16* %buf_2d_in_addr_2, align 2
  %tmp_72_2_cast_i = sext i16 %buf_2d_in_load_2 to i29
  %tmp_8_2_i = mul i29 %tmp_72_2_cast_i, %coeff_2_cast_i
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i_17
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29
  %tmp_3 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 3)
  %tmp_4 = zext i7 %tmp_3 to i64
  %buf_2d_in_addr_3 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_4
  %buf_2d_in_load_3 = load i16* %buf_2d_in_addr_3, align 2
  %tmp_72_3_cast_i = sext i16 %buf_2d_in_load_3 to i29
  %tmp_8_3_i = mul i29 %tmp_72_3_cast_i, %coeff_3_cast_i
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i_17
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 -4)
  %tmp_6 = zext i7 %tmp_5 to i64
  %buf_2d_in_addr_4 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_6
  %buf_2d_in_load_4 = load i16* %buf_2d_in_addr_4, align 2
  %tmp_72_4_cast_i = sext i16 %buf_2d_in_load_4 to i29
  %tmp_8_4_i = mul i29 %tmp_72_4_cast_i, %coeff_4_cast_i
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i_17
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29
  %tmp_10 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 -3)
  %tmp_11 = zext i7 %tmp_10 to i64
  %buf_2d_in_addr_5 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_11
  %buf_2d_in_load_5 = load i16* %buf_2d_in_addr_5, align 2
  %tmp_72_5_cast_i = sext i16 %buf_2d_in_load_5 to i29
  %tmp_8_5_i = mul i29 %tmp_72_5_cast_i, %coeff_5_cast_i
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i_17
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29
  %tmp_12 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 -2)
  %tmp_13 = zext i7 %tmp_12 to i64
  %buf_2d_in_addr_6 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_13
  %buf_2d_in_load_6 = load i16* %buf_2d_in_addr_6, align 2
  %tmp_72_6_cast_i = sext i16 %buf_2d_in_load_6 to i29
  %tmp_8_6_i = mul i29 %tmp_72_6_cast_i, %coeff_6_cast_i
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i_17
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29
  %tmp_14 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 -1)
  %tmp_15 = zext i7 %tmp_14 to i64
  %buf_2d_in_addr_7 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_15
  %buf_2d_in_load_7 = load i16* %buf_2d_in_addr_7, align 2
  %tmp_72_7_cast_i = sext i16 %buf_2d_in_load_7 to i29
  %tmp_8_7_i = mul i29 %tmp_72_7_cast_i, %coeff_7_cast_i
  %tmp1 = add i29 %tmp_8_1_i, %tmp_8_i
  %tmp2 = add i29 %tmp_8_2_i, %tmp_8_3_i
  %tmp = add i29 %tmp2, %tmp1
  %tmp4 = add i29 %tmp_8_4_i, %tmp_8_5_i
  %tmp6 = add i29 %tmp_8_7_i, 4096
  %tmp5 = add i29 %tmp6, %tmp_8_6_i
  %tmp3 = add i29 %tmp5, %tmp4
  %tmp_2_i = add i29 %tmp3, %tmp
  %tmp_4_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2_i, i32 13, i32 28)
  %tmp_i_trn_cast = zext i4 %k_i_mid2 to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_i_trn_cast
  %tmp_16 = zext i8 %p_addr1 to i64
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_16
  store i16 %tmp_4_i, i16* %row_outbuf_addr, align 2
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_i) nounwind
  %k = add i4 %k_i_mid2, 1
  br label %0
}

define internal fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* nocapture %row_outbuf, [64 x i16]* nocapture %col_inbuf) nounwind {
newFuncRoot:
  br label %0

.preheader1.i.exitStub:                           ; preds = %0
  ret void

.preheader2.i:                                    ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @str4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond5_i8 = icmp eq i4 %i_1_i, -8
  %i_1_i_mid2 = select i1 %exitcond5_i8, i4 0, i4 %i_1_i
  %j6 = add i4 %j_0_i, 1
  %j_0_i_mid2 = select i1 %exitcond5_i8, i4 %j6, i4 %j_0_i
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str5) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_8_trn_cast = zext i4 %i_1_i_mid2 to i8
  %tmp_trn_cast = zext i4 %j_0_i_mid2 to i8
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_i_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_trn_cast
  %tmp_s = zext i8 %p_addr1 to i64
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_s
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2
  %tmp_17 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_0_i_mid2, i3 0)
  %p_addr4_cast = zext i7 %tmp_17 to i8
  %p_addr5 = add i8 %p_addr4_cast, %tmp_8_trn_cast
  %tmp_18 = zext i8 %p_addr5 to i64
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_18
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str5, i32 %tmp_5) nounwind
  %i = add i4 %i_1_i_mid2, 1
  br label %0

; <label>:0                                       ; preds = %newFuncRoot, %.preheader2.i
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader2.i ]
  %j_0_i = phi i4 [ 0, %newFuncRoot ], [ %j_0_i_mid2, %.preheader2.i ]
  %i_1_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader2.i ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader1.i.exitStub, label %.preheader2.i
}

define internal fastcc void @dct_Loop_Col_DCT_Loop_proc([64 x i16]* nocapture %col_inbuf, [64 x i16]* nocapture %col_outbuf) nounwind {
newFuncRoot:
  br label %0

.preheader.i.exitStub:                            ; preds = %0
  ret void

; <label>:0                                       ; preds = %newFuncRoot, %dct_1d.exit
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %dct_1d.exit ]
  %i_2_i = phi i4 [ 0, %newFuncRoot ], [ %i_2_i_mid2, %dct_1d.exit ]
  %k_i = phi i4 [ 0, %newFuncRoot ], [ %k, %dct_1d.exit ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader.i.exitStub, label %dct_1d.exit

dct_1d.exit:                                      ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @str5)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond1_i = icmp eq i4 %k_i, -8
  %k_i_mid2 = select i1 %exitcond1_i, i4 0, i4 %k_i
  %i = add i4 %i_2_i, 1
  %i_2_i_mid2 = select i1 %exitcond1_i, i4 %i, i4 %i_2_i
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_i_20 = zext i4 %k_i_mid2 to i64
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i_20
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp_s to i8
  %tmp_19 = zext i7 %tmp_s to i64
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_19
  %col_inbuf_load = load i16* %col_inbuf_addr, align 2
  %tmp_72_cast_i = sext i16 %col_inbuf_load to i29
  %tmp_8_i = mul i29 %tmp_72_cast_i, %coeff_cast_i
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i_20
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29
  %tmp_20 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 1)
  %tmp_21 = zext i7 %tmp_20 to i64
  %col_inbuf_addr_1 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_21
  %col_inbuf_load_1 = load i16* %col_inbuf_addr_1, align 2
  %tmp_72_1_cast_i = sext i16 %col_inbuf_load_1 to i29
  %tmp_8_1_i = mul i29 %tmp_72_1_cast_i, %coeff_1_cast_i
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i_20
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29
  %tmp_22 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 2)
  %tmp_23 = zext i7 %tmp_22 to i64
  %col_inbuf_addr_2 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_23
  %col_inbuf_load_2 = load i16* %col_inbuf_addr_2, align 2
  %tmp_72_2_cast_i = sext i16 %col_inbuf_load_2 to i29
  %tmp_8_2_i = mul i29 %tmp_72_2_cast_i, %coeff_2_cast_i
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i_20
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29
  %tmp_24 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 3)
  %tmp_25 = zext i7 %tmp_24 to i64
  %col_inbuf_addr_3 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_25
  %col_inbuf_load_3 = load i16* %col_inbuf_addr_3, align 2
  %tmp_72_3_cast_i = sext i16 %col_inbuf_load_3 to i29
  %tmp_8_3_i = mul i29 %tmp_72_3_cast_i, %coeff_3_cast_i
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i_20
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29
  %tmp_26 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 -4)
  %tmp_27 = zext i7 %tmp_26 to i64
  %col_inbuf_addr_4 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_27
  %col_inbuf_load_4 = load i16* %col_inbuf_addr_4, align 2
  %tmp_72_4_cast_i = sext i16 %col_inbuf_load_4 to i29
  %tmp_8_4_i = mul i29 %tmp_72_4_cast_i, %coeff_4_cast_i
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i_20
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29
  %tmp_28 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 -3)
  %tmp_29 = zext i7 %tmp_28 to i64
  %col_inbuf_addr_5 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_29
  %col_inbuf_load_5 = load i16* %col_inbuf_addr_5, align 2
  %tmp_72_5_cast_i = sext i16 %col_inbuf_load_5 to i29
  %tmp_8_5_i = mul i29 %tmp_72_5_cast_i, %coeff_5_cast_i
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i_20
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29
  %tmp_30 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 -2)
  %tmp_31 = zext i7 %tmp_30 to i64
  %col_inbuf_addr_6 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_31
  %col_inbuf_load_6 = load i16* %col_inbuf_addr_6, align 2
  %tmp_72_6_cast_i = sext i16 %col_inbuf_load_6 to i29
  %tmp_8_6_i = mul i29 %tmp_72_6_cast_i, %coeff_6_cast_i
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i_20
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29
  %tmp_32 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 -1)
  %tmp_33 = zext i7 %tmp_32 to i64
  %col_inbuf_addr_7 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_33
  %col_inbuf_load_7 = load i16* %col_inbuf_addr_7, align 2
  %tmp_72_7_cast_i = sext i16 %col_inbuf_load_7 to i29
  %tmp_8_7_i = mul i29 %tmp_72_7_cast_i, %coeff_7_cast_i
  %tmp1 = add i29 %tmp_8_1_i, %tmp_8_i
  %tmp2 = add i29 %tmp_8_2_i, %tmp_8_3_i
  %tmp = add i29 %tmp2, %tmp1
  %tmp4 = add i29 %tmp_8_4_i, %tmp_8_5_i
  %tmp6 = add i29 %tmp_8_7_i, 4096
  %tmp5 = add i29 %tmp6, %tmp_8_6_i
  %tmp3 = add i29 %tmp5, %tmp4
  %tmp_2_i = add i29 %tmp3, %tmp
  %tmp_4_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2_i, i32 13, i32 28)
  %tmp_i_trn_cast = zext i4 %k_i_mid2 to i8
  %p_addr2 = add i8 %p_addr_cast, %tmp_i_trn_cast
  %tmp_34 = zext i8 %p_addr2 to i64
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_34
  store i16 %tmp_4_i, i16* %col_outbuf_addr, align 2
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_i) nounwind
  %k = add i4 %k_i_mid2, 1
  br label %0
}

define internal fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* nocapture %col_outbuf, [64 x i16]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %0

dct_2d.exit.exitStub:                             ; preds = %0
  ret void

.preheader.i:                                     ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @str6)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %exitcond_i8 = icmp eq i4 %i_3_i, -8
  %i_3_i_mid2 = select i1 %exitcond_i8, i4 0, i4 %i_3_i
  %j6 = add i4 %j_1_i, 1
  %j_1_i_mid2 = select i1 %exitcond_i8, i4 %j6, i4 %j_1_i
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str8) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str8) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_trn_cast = zext i4 %i_3_i_mid2 to i8
  %tmp_9_trn_cast = zext i4 %j_1_i_mid2 to i8
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_i_mid2, i3 0)
  %p_addr_cast = zext i7 %tmp to i8
  %p_addr1 = add i8 %p_addr_cast, %tmp_9_trn_cast
  %tmp_s = zext i8 %p_addr1 to i64
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_s
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2
  %tmp_35 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1_i_mid2, i3 0)
  %p_addr4_cast = zext i7 %tmp_35 to i8
  %p_addr5 = add i8 %p_addr4_cast, %tmp_trn_cast
  %tmp_36 = zext i8 %p_addr5 to i64
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_36
  store i16 %col_outbuf_load, i16* %buf_2d_out_addr, align 2
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str8, i32 %tmp_6) nounwind
  %i = add i4 %i_3_i_mid2, 1
  br label %0

; <label>:0                                       ; preds = %newFuncRoot, %.preheader.i
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader.i ]
  %j_1_i = phi i4 [ 0, %newFuncRoot ], [ %j_1_i_mid2, %.preheader.i ]
  %i_3_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader.i ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %dct_2d.exit.exitStub, label %.preheader.i
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
