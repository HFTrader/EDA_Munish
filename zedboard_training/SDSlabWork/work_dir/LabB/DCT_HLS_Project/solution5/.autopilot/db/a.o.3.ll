; ModuleID = '/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB/DCT_HLS_Project/solution5/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=6 type=[15 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]
@p_str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [4 x i8] c"dct\00"       ; [#uses=1 type=[4 x i8]*]
@dct_coeff_table_0 = internal unnamed_addr constant [8 x i14] [i14 -8192, i14 -5021, i14 -5681, i14 -6751, i14 -8192, i14 6436, i14 4433, i14 2260] ; [#uses=2 type=[8 x i14]*]
@dct_coeff_table_1 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 9633, i15 4433, i15 -2260, i15 -8192, i15 -11362, i15 -10703, i15 -6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_2 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 6436, i15 -4433, i15 -11362, i15 -8192, i15 2260, i15 10703, i15 9633] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_3 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 2260, i15 -10703, i15 -6436, i15 8192, i15 9633, i15 -4433, i15 -11362] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_4 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -2260, i15 -10703, i15 6436, i15 8192, i15 -9632, i15 -4433, i15 11363] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_5 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -6436, i15 -4433, i15 11363, i15 -8191, i15 -2260, i15 10703, i15 -9632] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_6 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -9632, i15 4433, i15 2260, i15 -8191, i15 11363, i15 -10703, i15 6436] ; [#uses=2 type=[8 x i15]*]
@dct_coeff_table_7 = internal unnamed_addr constant [8 x i15] [i15 8192, i15 -11362, i15 10703, i15 -9632, i15 8192, i15 -6436, i15 4433, i15 -2260] ; [#uses=2 type=[8 x i15]*]
@str1 = internal constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@str2 = internal constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@str3 = internal constant [28 x i8] c"Row_DCT_Loop_DCT_Outer_Loop\00" ; [#uses=1 type=[28 x i8]*]
@str4 = internal constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@str5 = internal constant [28 x i8] c"Col_DCT_Loop_DCT_Outer_Loop\00" ; [#uses=1 type=[28 x i8]*]
@str6 = internal constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]

; [#uses=5]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=12]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=20]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind, !dbg !7 ; [debug line = 85:1]
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !23
  %row_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_inbuf = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !27), !dbg !31 ; [debug line = 83:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !32), !dbg !33 ; [debug line = 83:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_in}, metadata !34), !dbg !38 ; [debug line = 85:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_out}, metadata !39), !dbg !40 ; [debug line = 86:10] [debug variable = buf_2d_out]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %row_outbuf}, metadata !41) nounwind, !dbg !51 ; [debug line = 31:15@91:4] [debug variable = row_outbuf]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %col_outbuf}, metadata !53) nounwind, !dbg !54 ; [debug line = 32:15@91:4] [debug variable = col_outbuf]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %col_inbuf}, metadata !55) nounwind, !dbg !56 ; [debug line = 32:109@91:4] [debug variable = col_inbuf]
  call fastcc void @read_data([64 x i16]* nocapture %input, [64 x i16]* nocapture %buf_2d_in) nounwind, !dbg !57 ; [debug line = 89:4]
  call fastcc void @dct_Loop_Row_DCT_Loop_proc([64 x i16]* nocapture %buf_2d_in, [64 x i16]* nocapture %row_outbuf) nounwind
  call fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* nocapture %row_outbuf, [64 x i16]* nocapture %col_inbuf) nounwind
  call fastcc void @dct_Loop_Col_DCT_Loop_proc([64 x i16]* nocapture %col_inbuf, [64 x i16]* nocapture %col_outbuf) nounwind
  call fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* nocapture %col_outbuf, [64 x i16]* nocapture %buf_2d_out) nounwind
  call fastcc void @write_data([64 x i16]* nocapture %buf_2d_out, [64 x i16]* nocapture %output) nounwind, !dbg !58 ; [debug line = 94:4]
  ret void, !dbg !59                              ; [debug line = 95:1]
}

; [#uses=1]
define internal fastcc void @write_data([64 x i16]* nocapture %buf, [64 x i16]* nocapture %output) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf}, i64 0, metadata !60), !dbg !66 ; [debug line = 71:23] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !67), !dbg !68 ; [debug line = 71:116] [debug variable = output]
  br label %1, !dbg !69                           ; [debug line = 76:9]

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
  %exitcond4 = icmp eq i4 %c, -8, !dbg !72        ; [#uses=2 type=i1] [debug line = 78:12]
  %c_mid2 = select i1 %exitcond4, i4 0, i4 %c     ; [#uses=3 type=i4]
  %r_s = add i4 %r, 1, !dbg !75                   ; [#uses=1 type=i4] [debug line = 76:61]
  %r_mid2 = select i1 %exitcond4, i4 %r_s, i4 %r  ; [#uses=3 type=i4]
  %tmp = trunc i4 %r_mid2 to i3                   ; [#uses=1 type=i3]
  %tmp_s = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !76 ; [#uses=1 type=i6] [debug line = 79:1]
  %c_cast6 = zext i4 %c_mid2 to i6, !dbg !72      ; [#uses=1 type=i6] [debug line = 78:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind, !dbg !78 ; [debug line = 79:11]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12), !dbg !79 ; [#uses=1 type=i32] [debug line = 79:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !80 ; [debug line = 80:1]
  %tmp_4_trn_cast = zext i4 %c_mid2 to i8         ; [#uses=1 type=i8]
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_1 to i8, !dbg !76   ; [#uses=1 type=i8] [debug line = 79:1]
  %p_addr1 = add i8 %p_addr_cast, %tmp_4_trn_cast, !dbg !76 ; [#uses=1 type=i8] [debug line = 79:1]
  %tmp_2 = zext i8 %p_addr1 to i64, !dbg !76      ; [#uses=1 type=i64] [debug line = 79:1]
  %buf_addr = getelementptr [64 x i16]* %buf, i64 0, i64 %tmp_2, !dbg !76 ; [#uses=1 type=i16*] [debug line = 79:1]
  %buf_load = load i16* %buf_addr, align 2, !dbg !76 ; [#uses=1 type=i16] [debug line = 79:1]
  %tmp_5 = add i6 %tmp_s, %c_cast6, !dbg !76      ; [#uses=1 type=i6] [debug line = 79:1]
  %tmp_6 = zext i6 %tmp_5 to i64, !dbg !76        ; [#uses=1 type=i64] [debug line = 79:1]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_6, !dbg !76 ; [#uses=1 type=i16*] [debug line = 79:1]
  store i16 %buf_load, i16* %output_addr, align 2, !dbg !76 ; [debug line = 79:1]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_8), !dbg !81 ; [#uses=0 type=i32] [debug line = 79:69]
  %c_1 = add i4 %c_mid2, 1, !dbg !82              ; [#uses=1 type=i4] [debug line = 78:64]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !83), !dbg !82 ; [debug line = 78:64] [debug variable = c]
  br label %1

; <label>:2                                       ; preds = %1
  ret void, !dbg !85                              ; [debug line = 81:1]
}

; [#uses=1]
define internal fastcc void @read_data([64 x i16]* nocapture %input, [64 x i16]* nocapture %buf) {
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !86), !dbg !90 ; [debug line = 59:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf}, i64 0, metadata !91), !dbg !92 ; [debug line = 59:44] [debug variable = buf]
  br label %1, !dbg !93                           ; [debug line = 64:9]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r = phi i4 [ 0, %0 ], [ %r_mid2, %.reset ]     ; [#uses=2 type=i4]
  %c = phi i4 [ 0, %0 ], [ %c_1, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @str2)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %exitcond4 = icmp eq i4 %c, -8, !dbg !96        ; [#uses=2 type=i1] [debug line = 66:12]
  %c_mid2 = select i1 %exitcond4, i4 0, i4 %c     ; [#uses=3 type=i4]
  %r_s = add i4 %r, 1, !dbg !99                   ; [#uses=1 type=i4] [debug line = 64:61]
  %r_mid2 = select i1 %exitcond4, i4 %r_s, i4 %r  ; [#uses=3 type=i4]
  %tmp_3 = trunc i4 %r_mid2 to i3                 ; [#uses=1 type=i3]
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_3, i3 0), !dbg !100 ; [#uses=1 type=i6] [debug line = 67:1]
  %c_cast6 = zext i4 %c_mid2 to i6, !dbg !96      ; [#uses=1 type=i6] [debug line = 66:12]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind, !dbg !102 ; [debug line = 67:11]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10), !dbg !103 ; [#uses=1 type=i32] [debug line = 67:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !104 ; [debug line = 68:1]
  %tmp_1 = add i6 %tmp, %c_cast6, !dbg !100       ; [#uses=1 type=i6] [debug line = 67:1]
  %tmp_2 = zext i6 %tmp_1 to i64, !dbg !100       ; [#uses=1 type=i64] [debug line = 67:1]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_2, !dbg !100 ; [#uses=1 type=i16*] [debug line = 67:1]
  %input_load = load i16* %input_addr, align 2, !dbg !100 ; [#uses=1 type=i16] [debug line = 67:1]
  %tmp_3_trn_cast = zext i4 %c_mid2 to i8         ; [#uses=1 type=i8]
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_5 to i8, !dbg !100  ; [#uses=1 type=i8] [debug line = 67:1]
  %p_addr1 = add i8 %p_addr_cast, %tmp_3_trn_cast, !dbg !100 ; [#uses=1 type=i8] [debug line = 67:1]
  %tmp_6 = zext i8 %p_addr1 to i64, !dbg !100     ; [#uses=1 type=i64] [debug line = 67:1]
  %buf_addr = getelementptr [64 x i16]* %buf, i64 0, i64 %tmp_6, !dbg !100 ; [#uses=1 type=i16*] [debug line = 67:1]
  store i16 %input_load, i16* %buf_addr, align 2, !dbg !100 ; [debug line = 67:1]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_4), !dbg !105 ; [#uses=0 type=i32] [debug line = 67:68]
  %c_1 = add i4 %c_mid2, 1, !dbg !106             ; [#uses=1 type=i4] [debug line = 66:64]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !107), !dbg !106 ; [debug line = 66:64] [debug variable = c]
  br label %1

; <label>:2                                       ; preds = %1
  ret void, !dbg !108                             ; [debug line = 69:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define internal fastcc void @dct_Loop_Row_DCT_Loop_proc([64 x i16]* nocapture %buf_2d_in, [64 x i16]* nocapture %row_outbuf) nounwind {
newFuncRoot:
  br label %0, !dbg !109                          ; [debug line = 37:8@91:4]

.preheader2.i.exitStub:                           ; preds = %0
  ret void

; <label>:0                                       ; preds = %dct_1d.exit, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %dct_1d.exit ] ; [#uses=2 type=i7]
  %i_0_i = phi i4 [ 0, %newFuncRoot ], [ %i_0_i_mid2, %dct_1d.exit ] ; [#uses=2 type=i4]
  %k_i = phi i4 [ 0, %newFuncRoot ], [ %k, %dct_1d.exit ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader2.i.exitStub, label %dct_1d.exit

dct_1d.exit:                                      ; preds = %0
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf_2d_in}, i64 0, metadata !111) nounwind, !dbg !119 ; [debug line = 9:24@38:7@91:4] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %row_outbuf}, i64 0, metadata !120) nounwind, !dbg !121 ; [debug line = 9:81@38:7@91:4] [debug variable = dst]
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @str3)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond1_i = icmp eq i4 %k_i, -8, !dbg !122   ; [#uses=2 type=i1] [debug line = 18:9@38:7@91:4]
  %k_i_mid2 = select i1 %exitcond1_i, i4 0, i4 %k_i ; [#uses=3 type=i4]
  %i = add i4 %i_0_i, 1, !dbg !125                ; [#uses=1 type=i4] [debug line = 37:60@91:4]
  %i_0_i_mid2 = select i1 %exitcond1_i, i4 %i, i4 %i_0_i ; [#uses=9 type=i4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf_2d_in}, i64 0, metadata !111) nounwind, !dbg !119 ; [debug line = 9:24@38:7@91:4] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %row_outbuf}, i64 0, metadata !120) nounwind, !dbg !121 ; [debug line = 9:81@38:7@91:4] [debug variable = dst]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !126 ; [debug line = 18:67@38:7@91:4]
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !128 ; [#uses=1 type=i32] [debug line = 18:107@38:7@91:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !129 ; [debug line = 19:1@38:7@91:4]
  %tmp_i_17 = zext i4 %k_i_mid2 to i64, !dbg !130 ; [#uses=8 type=i64] [debug line = 21:48@38:7@91:4]
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i_17, !dbg !130 ; [#uses=1 type=i14*] [debug line = 21:48@38:7@91:4]
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2, !dbg !130 ; [#uses=1 type=i14] [debug line = 21:48@38:7@91:4]
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 0) ; [#uses=2 type=i7]
  %p_addr_cast = zext i7 %tmp_7 to i8, !dbg !133  ; [#uses=1 type=i8] [debug line = 22:10@38:7@91:4]
  %tmp_8 = zext i7 %tmp_7 to i64, !dbg !133       ; [#uses=1 type=i64] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_8, !dbg !133 ; [#uses=1 type=i16*] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_load = load i16* %buf_2d_in_addr, align 2, !dbg !133 ; [#uses=1 type=i16] [debug line = 22:10@38:7@91:4]
  %tmp_72_cast_i = sext i16 %buf_2d_in_load to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_8_i = mul i29 %tmp_72_cast_i, %coeff_cast_i, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i_17, !dbg !130 ; [#uses=1 type=i15*] [debug line = 21:48@38:7@91:4]
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2, !dbg !130 ; [#uses=1 type=i15] [debug line = 21:48@38:7@91:4]
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_9 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 1) ; [#uses=1 type=i7]
  %tmp_s = zext i7 %tmp_9 to i64, !dbg !133       ; [#uses=1 type=i64] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_addr_1 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_s, !dbg !133 ; [#uses=1 type=i16*] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_load_1 = load i16* %buf_2d_in_addr_1, align 2, !dbg !133 ; [#uses=1 type=i16] [debug line = 22:10@38:7@91:4]
  %tmp_72_1_cast_i = sext i16 %buf_2d_in_load_1 to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_8_1_i = mul i29 %tmp_72_1_cast_i, %coeff_1_cast_i, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i_17, !dbg !130 ; [#uses=1 type=i15*] [debug line = 21:48@38:7@91:4]
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2, !dbg !130 ; [#uses=1 type=i15] [debug line = 21:48@38:7@91:4]
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 2) ; [#uses=1 type=i7]
  %tmp_2 = zext i7 %tmp_1 to i64, !dbg !133       ; [#uses=1 type=i64] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_addr_2 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_2, !dbg !133 ; [#uses=1 type=i16*] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_load_2 = load i16* %buf_2d_in_addr_2, align 2, !dbg !133 ; [#uses=1 type=i16] [debug line = 22:10@38:7@91:4]
  %tmp_72_2_cast_i = sext i16 %buf_2d_in_load_2 to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_8_2_i = mul i29 %tmp_72_2_cast_i, %coeff_2_cast_i, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i_17, !dbg !130 ; [#uses=1 type=i15*] [debug line = 21:48@38:7@91:4]
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2, !dbg !130 ; [#uses=1 type=i15] [debug line = 21:48@38:7@91:4]
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_3 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 3) ; [#uses=1 type=i7]
  %tmp_4 = zext i7 %tmp_3 to i64, !dbg !133       ; [#uses=1 type=i64] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_addr_3 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_4, !dbg !133 ; [#uses=1 type=i16*] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_load_3 = load i16* %buf_2d_in_addr_3, align 2, !dbg !133 ; [#uses=1 type=i16] [debug line = 22:10@38:7@91:4]
  %tmp_72_3_cast_i = sext i16 %buf_2d_in_load_3 to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_8_3_i = mul i29 %tmp_72_3_cast_i, %coeff_3_cast_i, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i_17, !dbg !130 ; [#uses=1 type=i15*] [debug line = 21:48@38:7@91:4]
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2, !dbg !130 ; [#uses=1 type=i15] [debug line = 21:48@38:7@91:4]
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 -4) ; [#uses=1 type=i7]
  %tmp_6 = zext i7 %tmp_5 to i64, !dbg !133       ; [#uses=1 type=i64] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_addr_4 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_6, !dbg !133 ; [#uses=1 type=i16*] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_load_4 = load i16* %buf_2d_in_addr_4, align 2, !dbg !133 ; [#uses=1 type=i16] [debug line = 22:10@38:7@91:4]
  %tmp_72_4_cast_i = sext i16 %buf_2d_in_load_4 to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_8_4_i = mul i29 %tmp_72_4_cast_i, %coeff_4_cast_i, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i_17, !dbg !130 ; [#uses=1 type=i15*] [debug line = 21:48@38:7@91:4]
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2, !dbg !130 ; [#uses=1 type=i15] [debug line = 21:48@38:7@91:4]
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_10 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 -3) ; [#uses=1 type=i7]
  %tmp_11 = zext i7 %tmp_10 to i64, !dbg !133     ; [#uses=1 type=i64] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_addr_5 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_11, !dbg !133 ; [#uses=1 type=i16*] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_load_5 = load i16* %buf_2d_in_addr_5, align 2, !dbg !133 ; [#uses=1 type=i16] [debug line = 22:10@38:7@91:4]
  %tmp_72_5_cast_i = sext i16 %buf_2d_in_load_5 to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_8_5_i = mul i29 %tmp_72_5_cast_i, %coeff_5_cast_i, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i_17, !dbg !130 ; [#uses=1 type=i15*] [debug line = 21:48@38:7@91:4]
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2, !dbg !130 ; [#uses=1 type=i15] [debug line = 21:48@38:7@91:4]
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_12 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 -2) ; [#uses=1 type=i7]
  %tmp_13 = zext i7 %tmp_12 to i64, !dbg !133     ; [#uses=1 type=i64] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_addr_6 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_13, !dbg !133 ; [#uses=1 type=i16*] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_load_6 = load i16* %buf_2d_in_addr_6, align 2, !dbg !133 ; [#uses=1 type=i16] [debug line = 22:10@38:7@91:4]
  %tmp_72_6_cast_i = sext i16 %buf_2d_in_load_6 to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_8_6_i = mul i29 %tmp_72_6_cast_i, %coeff_6_cast_i, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i_17, !dbg !130 ; [#uses=1 type=i15*] [debug line = 21:48@38:7@91:4]
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2, !dbg !130 ; [#uses=1 type=i15] [debug line = 21:48@38:7@91:4]
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_14 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_0_i_mid2, i3 -1) ; [#uses=1 type=i7]
  %tmp_15 = zext i7 %tmp_14 to i64, !dbg !133     ; [#uses=1 type=i64] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_addr_7 = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_15, !dbg !133 ; [#uses=1 type=i16*] [debug line = 22:10@38:7@91:4]
  %buf_2d_in_load_7 = load i16* %buf_2d_in_addr_7, align 2, !dbg !133 ; [#uses=1 type=i16] [debug line = 22:10@38:7@91:4]
  %tmp_72_7_cast_i = sext i16 %buf_2d_in_load_7 to i29, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp_8_7_i = mul i29 %tmp_72_7_cast_i, %coeff_7_cast_i, !dbg !133 ; [#uses=1 type=i29] [debug line = 22:10@38:7@91:4]
  %tmp1 = add i29 %tmp_8_1_i, %tmp_8_i, !dbg !134 ; [#uses=1 type=i29] [debug line = 24:7@38:7@91:4]
  %tmp2 = add i29 %tmp_8_2_i, %tmp_8_3_i, !dbg !134 ; [#uses=1 type=i29] [debug line = 24:7@38:7@91:4]
  %tmp = add i29 %tmp2, %tmp1, !dbg !134          ; [#uses=1 type=i29] [debug line = 24:7@38:7@91:4]
  %tmp4 = add i29 %tmp_8_4_i, %tmp_8_5_i, !dbg !134 ; [#uses=1 type=i29] [debug line = 24:7@38:7@91:4]
  %tmp6 = add i29 %tmp_8_7_i, 4096, !dbg !134     ; [#uses=1 type=i29] [debug line = 24:7@38:7@91:4]
  %tmp5 = add i29 %tmp6, %tmp_8_6_i, !dbg !134    ; [#uses=1 type=i29] [debug line = 24:7@38:7@91:4]
  %tmp3 = add i29 %tmp5, %tmp4, !dbg !134         ; [#uses=1 type=i29] [debug line = 24:7@38:7@91:4]
  %tmp_2_i = add i29 %tmp3, %tmp, !dbg !134       ; [#uses=1 type=i29] [debug line = 24:7@38:7@91:4]
  %tmp_4_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2_i, i32 13, i32 28), !dbg !134 ; [#uses=1 type=i16] [debug line = 24:7@38:7@91:4]
  %tmp_i_trn_cast = zext i4 %k_i_mid2 to i8, !dbg !134 ; [#uses=1 type=i8] [debug line = 24:7@38:7@91:4]
  %p_addr1 = add i8 %p_addr_cast, %tmp_i_trn_cast, !dbg !134 ; [#uses=1 type=i8] [debug line = 24:7@38:7@91:4]
  %tmp_16 = zext i8 %p_addr1 to i64, !dbg !134    ; [#uses=1 type=i64] [debug line = 24:7@38:7@91:4]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_16, !dbg !134 ; [#uses=1 type=i16*] [debug line = 24:7@38:7@91:4]
  store i16 %tmp_4_i, i16* %row_outbuf_addr, align 2, !dbg !134 ; [debug line = 24:7@38:7@91:4]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_i) nounwind, !dbg !135 ; [#uses=0 type=i32] [debug line = 25:4@38:7@91:4]
  %k = add i4 %k_i_mid2, 1, !dbg !136             ; [#uses=1 type=i4] [debug line = 18:61@38:7@91:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !137) nounwind, !dbg !136 ; [debug line = 18:61@38:7@91:4] [debug variable = k]
  br label %0, !dbg !136                          ; [debug line = 18:61@38:7@91:4]
}

; [#uses=1]
define internal fastcc void @dct_Loop_Xpose_Row_Outer_Loop_proc([64 x i16]* nocapture %row_outbuf, [64 x i16]* nocapture %col_inbuf) nounwind {
newFuncRoot:
  br label %0

.preheader1.i.exitStub:                           ; preds = %0
  ret void

.preheader2.i:                                    ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @str4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond5_i8 = icmp eq i4 %i_1_i, -8, !dbg !139 ; [#uses=2 type=i1] [debug line = 44:11@91:4]
  %i_1_i_mid2 = select i1 %exitcond5_i8, i4 0, i4 %i_1_i ; [#uses=3 type=i4]
  %j6 = add i4 %j_0_i, 1, !dbg !143               ; [#uses=1 type=i4] [debug line = 42:61@91:4]
  %j_0_i_mid2 = select i1 %exitcond5_i8, i4 %j6, i4 %j_0_i ; [#uses=3 type=i4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str5) nounwind, !dbg !144 ; [debug line = 45:11@91:4]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str5) nounwind, !dbg !146 ; [#uses=1 type=i32] [debug line = 45:57@91:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !147 ; [debug line = 46:1@91:4]
  %tmp_8_trn_cast = zext i4 %i_1_i_mid2 to i8, !dbg !148 ; [#uses=1 type=i8] [debug line = 45:1@91:4]
  %tmp_trn_cast = zext i4 %j_0_i_mid2 to i8       ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_i_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp to i8, !dbg !148    ; [#uses=1 type=i8] [debug line = 45:1@91:4]
  %p_addr1 = add i8 %p_addr_cast, %tmp_trn_cast, !dbg !148 ; [#uses=1 type=i8] [debug line = 45:1@91:4]
  %tmp_s = zext i8 %p_addr1 to i64, !dbg !148     ; [#uses=1 type=i64] [debug line = 45:1@91:4]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_s, !dbg !148 ; [#uses=1 type=i16*] [debug line = 45:1@91:4]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !148 ; [#uses=1 type=i16] [debug line = 45:1@91:4]
  %tmp_17 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_0_i_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr4_cast = zext i7 %tmp_17 to i8, !dbg !148 ; [#uses=1 type=i8] [debug line = 45:1@91:4]
  %p_addr5 = add i8 %p_addr4_cast, %tmp_8_trn_cast, !dbg !148 ; [#uses=1 type=i8] [debug line = 45:1@91:4]
  %tmp_18 = zext i8 %p_addr5 to i64, !dbg !148    ; [#uses=1 type=i64] [debug line = 45:1@91:4]
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_18, !dbg !148 ; [#uses=1 type=i16*] [debug line = 45:1@91:4]
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2, !dbg !148 ; [debug line = 45:1@91:4]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str5, i32 %tmp_5) nounwind, !dbg !149 ; [#uses=0 type=i32] [debug line = 45:36@91:4]
  %i = add i4 %i_1_i_mid2, 1, !dbg !150           ; [#uses=1 type=i4] [debug line = 44:63@91:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !151) nounwind, !dbg !150 ; [debug line = 44:63@91:4] [debug variable = i]
  br label %0

; <label>:0                                       ; preds = %.preheader2.i, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader2.i ] ; [#uses=2 type=i7]
  %j_0_i = phi i4 [ 0, %newFuncRoot ], [ %j_0_i_mid2, %.preheader2.i ] ; [#uses=2 type=i4]
  %i_1_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader2.i ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader1.i.exitStub, label %.preheader2.i
}

; [#uses=1]
define internal fastcc void @dct_Loop_Col_DCT_Loop_proc([64 x i16]* nocapture %col_inbuf, [64 x i16]* nocapture %col_outbuf) nounwind {
newFuncRoot:
  br label %0

.preheader.i.exitStub:                            ; preds = %0
  ret void

; <label>:0                                       ; preds = %dct_1d.exit, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %dct_1d.exit ] ; [#uses=2 type=i7]
  %i_2_i = phi i4 [ 0, %newFuncRoot ], [ %i_2_i_mid2, %dct_1d.exit ] ; [#uses=2 type=i4]
  %k_i = phi i4 [ 0, %newFuncRoot ], [ %k, %dct_1d.exit ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader.i.exitStub, label %dct_1d.exit

dct_1d.exit:                                      ; preds = %0
  call void @llvm.dbg.value(metadata !{[64 x i16]* %col_inbuf}, i64 0, metadata !152) nounwind, !dbg !156 ; [debug line = 9:24@49:7@91:4] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %col_outbuf}, i64 0, metadata !157) nounwind, !dbg !158 ; [debug line = 9:81@49:7@91:4] [debug variable = dst]
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @str5)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond1_i = icmp eq i4 %k_i, -8, !dbg !159   ; [#uses=2 type=i1] [debug line = 18:9@49:7@91:4]
  %k_i_mid2 = select i1 %exitcond1_i, i4 0, i4 %k_i ; [#uses=3 type=i4]
  %i = add i4 %i_2_i, 1, !dbg !160                ; [#uses=1 type=i4] [debug line = 48:61@91:4]
  %i_2_i_mid2 = select i1 %exitcond1_i, i4 %i, i4 %i_2_i ; [#uses=9 type=i4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %col_inbuf}, i64 0, metadata !152) nounwind, !dbg !156 ; [debug line = 9:24@49:7@91:4] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %col_outbuf}, i64 0, metadata !157) nounwind, !dbg !158 ; [debug line = 9:81@49:7@91:4] [debug variable = dst]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !161 ; [debug line = 18:67@49:7@91:4]
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !162 ; [#uses=1 type=i32] [debug line = 18:107@49:7@91:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !163 ; [debug line = 19:1@49:7@91:4]
  %tmp_i_20 = zext i4 %k_i_mid2 to i64, !dbg !164 ; [#uses=8 type=i64] [debug line = 21:48@49:7@91:4]
  %dct_coeff_table_0_addr = getelementptr [8 x i14]* @dct_coeff_table_0, i64 0, i64 %tmp_i_20, !dbg !164 ; [#uses=1 type=i14*] [debug line = 21:48@49:7@91:4]
  %dct_coeff_table_0_load = load i14* %dct_coeff_table_0_addr, align 2, !dbg !164 ; [#uses=1 type=i14] [debug line = 21:48@49:7@91:4]
  %coeff_cast_i = zext i14 %dct_coeff_table_0_load to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 0) ; [#uses=2 type=i7]
  %p_addr_cast = zext i7 %tmp_s to i8, !dbg !165  ; [#uses=1 type=i8] [debug line = 22:10@49:7@91:4]
  %tmp_19 = zext i7 %tmp_s to i64, !dbg !165      ; [#uses=1 type=i64] [debug line = 22:10@49:7@91:4]
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_19, !dbg !165 ; [#uses=1 type=i16*] [debug line = 22:10@49:7@91:4]
  %col_inbuf_load = load i16* %col_inbuf_addr, align 2, !dbg !165 ; [#uses=1 type=i16] [debug line = 22:10@49:7@91:4]
  %tmp_72_cast_i = sext i16 %col_inbuf_load to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_8_i = mul i29 %tmp_72_cast_i, %coeff_cast_i, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %dct_coeff_table_1_addr = getelementptr [8 x i15]* @dct_coeff_table_1, i64 0, i64 %tmp_i_20, !dbg !164 ; [#uses=1 type=i15*] [debug line = 21:48@49:7@91:4]
  %dct_coeff_table_1_load = load i15* %dct_coeff_table_1_addr, align 2, !dbg !164 ; [#uses=1 type=i15] [debug line = 21:48@49:7@91:4]
  %coeff_1_cast_i = sext i15 %dct_coeff_table_1_load to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_20 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 1) ; [#uses=1 type=i7]
  %tmp_21 = zext i7 %tmp_20 to i64, !dbg !165     ; [#uses=1 type=i64] [debug line = 22:10@49:7@91:4]
  %col_inbuf_addr_1 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_21, !dbg !165 ; [#uses=1 type=i16*] [debug line = 22:10@49:7@91:4]
  %col_inbuf_load_1 = load i16* %col_inbuf_addr_1, align 2, !dbg !165 ; [#uses=1 type=i16] [debug line = 22:10@49:7@91:4]
  %tmp_72_1_cast_i = sext i16 %col_inbuf_load_1 to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_8_1_i = mul i29 %tmp_72_1_cast_i, %coeff_1_cast_i, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %dct_coeff_table_2_addr = getelementptr [8 x i15]* @dct_coeff_table_2, i64 0, i64 %tmp_i_20, !dbg !164 ; [#uses=1 type=i15*] [debug line = 21:48@49:7@91:4]
  %dct_coeff_table_2_load = load i15* %dct_coeff_table_2_addr, align 2, !dbg !164 ; [#uses=1 type=i15] [debug line = 21:48@49:7@91:4]
  %coeff_2_cast_i = sext i15 %dct_coeff_table_2_load to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_22 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 2) ; [#uses=1 type=i7]
  %tmp_23 = zext i7 %tmp_22 to i64, !dbg !165     ; [#uses=1 type=i64] [debug line = 22:10@49:7@91:4]
  %col_inbuf_addr_2 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_23, !dbg !165 ; [#uses=1 type=i16*] [debug line = 22:10@49:7@91:4]
  %col_inbuf_load_2 = load i16* %col_inbuf_addr_2, align 2, !dbg !165 ; [#uses=1 type=i16] [debug line = 22:10@49:7@91:4]
  %tmp_72_2_cast_i = sext i16 %col_inbuf_load_2 to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_8_2_i = mul i29 %tmp_72_2_cast_i, %coeff_2_cast_i, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %dct_coeff_table_3_addr = getelementptr [8 x i15]* @dct_coeff_table_3, i64 0, i64 %tmp_i_20, !dbg !164 ; [#uses=1 type=i15*] [debug line = 21:48@49:7@91:4]
  %dct_coeff_table_3_load = load i15* %dct_coeff_table_3_addr, align 2, !dbg !164 ; [#uses=1 type=i15] [debug line = 21:48@49:7@91:4]
  %coeff_3_cast_i = sext i15 %dct_coeff_table_3_load to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_24 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 3) ; [#uses=1 type=i7]
  %tmp_25 = zext i7 %tmp_24 to i64, !dbg !165     ; [#uses=1 type=i64] [debug line = 22:10@49:7@91:4]
  %col_inbuf_addr_3 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_25, !dbg !165 ; [#uses=1 type=i16*] [debug line = 22:10@49:7@91:4]
  %col_inbuf_load_3 = load i16* %col_inbuf_addr_3, align 2, !dbg !165 ; [#uses=1 type=i16] [debug line = 22:10@49:7@91:4]
  %tmp_72_3_cast_i = sext i16 %col_inbuf_load_3 to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_8_3_i = mul i29 %tmp_72_3_cast_i, %coeff_3_cast_i, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %dct_coeff_table_4_addr = getelementptr [8 x i15]* @dct_coeff_table_4, i64 0, i64 %tmp_i_20, !dbg !164 ; [#uses=1 type=i15*] [debug line = 21:48@49:7@91:4]
  %dct_coeff_table_4_load = load i15* %dct_coeff_table_4_addr, align 2, !dbg !164 ; [#uses=1 type=i15] [debug line = 21:48@49:7@91:4]
  %coeff_4_cast_i = sext i15 %dct_coeff_table_4_load to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_26 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 -4) ; [#uses=1 type=i7]
  %tmp_27 = zext i7 %tmp_26 to i64, !dbg !165     ; [#uses=1 type=i64] [debug line = 22:10@49:7@91:4]
  %col_inbuf_addr_4 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_27, !dbg !165 ; [#uses=1 type=i16*] [debug line = 22:10@49:7@91:4]
  %col_inbuf_load_4 = load i16* %col_inbuf_addr_4, align 2, !dbg !165 ; [#uses=1 type=i16] [debug line = 22:10@49:7@91:4]
  %tmp_72_4_cast_i = sext i16 %col_inbuf_load_4 to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_8_4_i = mul i29 %tmp_72_4_cast_i, %coeff_4_cast_i, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %dct_coeff_table_5_addr = getelementptr [8 x i15]* @dct_coeff_table_5, i64 0, i64 %tmp_i_20, !dbg !164 ; [#uses=1 type=i15*] [debug line = 21:48@49:7@91:4]
  %dct_coeff_table_5_load = load i15* %dct_coeff_table_5_addr, align 2, !dbg !164 ; [#uses=1 type=i15] [debug line = 21:48@49:7@91:4]
  %coeff_5_cast_i = sext i15 %dct_coeff_table_5_load to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_28 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 -3) ; [#uses=1 type=i7]
  %tmp_29 = zext i7 %tmp_28 to i64, !dbg !165     ; [#uses=1 type=i64] [debug line = 22:10@49:7@91:4]
  %col_inbuf_addr_5 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_29, !dbg !165 ; [#uses=1 type=i16*] [debug line = 22:10@49:7@91:4]
  %col_inbuf_load_5 = load i16* %col_inbuf_addr_5, align 2, !dbg !165 ; [#uses=1 type=i16] [debug line = 22:10@49:7@91:4]
  %tmp_72_5_cast_i = sext i16 %col_inbuf_load_5 to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_8_5_i = mul i29 %tmp_72_5_cast_i, %coeff_5_cast_i, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %dct_coeff_table_6_addr = getelementptr [8 x i15]* @dct_coeff_table_6, i64 0, i64 %tmp_i_20, !dbg !164 ; [#uses=1 type=i15*] [debug line = 21:48@49:7@91:4]
  %dct_coeff_table_6_load = load i15* %dct_coeff_table_6_addr, align 2, !dbg !164 ; [#uses=1 type=i15] [debug line = 21:48@49:7@91:4]
  %coeff_6_cast_i = sext i15 %dct_coeff_table_6_load to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_30 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 -2) ; [#uses=1 type=i7]
  %tmp_31 = zext i7 %tmp_30 to i64, !dbg !165     ; [#uses=1 type=i64] [debug line = 22:10@49:7@91:4]
  %col_inbuf_addr_6 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_31, !dbg !165 ; [#uses=1 type=i16*] [debug line = 22:10@49:7@91:4]
  %col_inbuf_load_6 = load i16* %col_inbuf_addr_6, align 2, !dbg !165 ; [#uses=1 type=i16] [debug line = 22:10@49:7@91:4]
  %tmp_72_6_cast_i = sext i16 %col_inbuf_load_6 to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_8_6_i = mul i29 %tmp_72_6_cast_i, %coeff_6_cast_i, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %dct_coeff_table_7_addr = getelementptr [8 x i15]* @dct_coeff_table_7, i64 0, i64 %tmp_i_20, !dbg !164 ; [#uses=1 type=i15*] [debug line = 21:48@49:7@91:4]
  %dct_coeff_table_7_load = load i15* %dct_coeff_table_7_addr, align 2, !dbg !164 ; [#uses=1 type=i15] [debug line = 21:48@49:7@91:4]
  %coeff_7_cast_i = sext i15 %dct_coeff_table_7_load to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_32 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_i_mid2, i3 -1) ; [#uses=1 type=i7]
  %tmp_33 = zext i7 %tmp_32 to i64, !dbg !165     ; [#uses=1 type=i64] [debug line = 22:10@49:7@91:4]
  %col_inbuf_addr_7 = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_33, !dbg !165 ; [#uses=1 type=i16*] [debug line = 22:10@49:7@91:4]
  %col_inbuf_load_7 = load i16* %col_inbuf_addr_7, align 2, !dbg !165 ; [#uses=1 type=i16] [debug line = 22:10@49:7@91:4]
  %tmp_72_7_cast_i = sext i16 %col_inbuf_load_7 to i29, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp_8_7_i = mul i29 %tmp_72_7_cast_i, %coeff_7_cast_i, !dbg !165 ; [#uses=1 type=i29] [debug line = 22:10@49:7@91:4]
  %tmp1 = add i29 %tmp_8_1_i, %tmp_8_i, !dbg !166 ; [#uses=1 type=i29] [debug line = 24:7@49:7@91:4]
  %tmp2 = add i29 %tmp_8_2_i, %tmp_8_3_i, !dbg !166 ; [#uses=1 type=i29] [debug line = 24:7@49:7@91:4]
  %tmp = add i29 %tmp2, %tmp1, !dbg !166          ; [#uses=1 type=i29] [debug line = 24:7@49:7@91:4]
  %tmp4 = add i29 %tmp_8_4_i, %tmp_8_5_i, !dbg !166 ; [#uses=1 type=i29] [debug line = 24:7@49:7@91:4]
  %tmp6 = add i29 %tmp_8_7_i, 4096, !dbg !166     ; [#uses=1 type=i29] [debug line = 24:7@49:7@91:4]
  %tmp5 = add i29 %tmp6, %tmp_8_6_i, !dbg !166    ; [#uses=1 type=i29] [debug line = 24:7@49:7@91:4]
  %tmp3 = add i29 %tmp5, %tmp4, !dbg !166         ; [#uses=1 type=i29] [debug line = 24:7@49:7@91:4]
  %tmp_2_i = add i29 %tmp3, %tmp, !dbg !166       ; [#uses=1 type=i29] [debug line = 24:7@49:7@91:4]
  %tmp_4_i = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2_i, i32 13, i32 28), !dbg !166 ; [#uses=1 type=i16] [debug line = 24:7@49:7@91:4]
  %tmp_i_trn_cast = zext i4 %k_i_mid2 to i8, !dbg !166 ; [#uses=1 type=i8] [debug line = 24:7@49:7@91:4]
  %p_addr2 = add i8 %p_addr_cast, %tmp_i_trn_cast, !dbg !166 ; [#uses=1 type=i8] [debug line = 24:7@49:7@91:4]
  %tmp_34 = zext i8 %p_addr2 to i64, !dbg !166    ; [#uses=1 type=i64] [debug line = 24:7@49:7@91:4]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_34, !dbg !166 ; [#uses=1 type=i16*] [debug line = 24:7@49:7@91:4]
  store i16 %tmp_4_i, i16* %col_outbuf_addr, align 2, !dbg !166 ; [debug line = 24:7@49:7@91:4]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_i) nounwind, !dbg !167 ; [#uses=0 type=i32] [debug line = 25:4@49:7@91:4]
  %k = add i4 %k_i_mid2, 1, !dbg !168             ; [#uses=1 type=i4] [debug line = 18:61@49:7@91:4]
  call void @llvm.dbg.value(metadata !{i4 %k}, i64 0, metadata !169) nounwind, !dbg !168 ; [debug line = 18:61@49:7@91:4] [debug variable = k]
  br label %0, !dbg !168                          ; [debug line = 18:61@49:7@91:4]
}

; [#uses=1]
define internal fastcc void @dct_Loop_Xpose_Col_Outer_Loop_proc([64 x i16]* nocapture %col_outbuf, [64 x i16]* nocapture %buf_2d_out) nounwind {
newFuncRoot:
  br label %0

dct_2d.exit.exitStub:                             ; preds = %0
  ret void

.preheader.i:                                     ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @str6)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i8 = icmp eq i4 %i_3_i, -8, !dbg !170 ; [#uses=2 type=i1] [debug line = 55:11@91:4]
  %i_3_i_mid2 = select i1 %exitcond_i8, i4 0, i4 %i_3_i ; [#uses=3 type=i4]
  %j6 = add i4 %j_1_i, 1, !dbg !174               ; [#uses=1 type=i4] [debug line = 53:61@91:4]
  %j_1_i_mid2 = select i1 %exitcond_i8, i4 %j6, i4 %j_1_i ; [#uses=3 type=i4]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str8) nounwind, !dbg !175 ; [debug line = 56:11@91:4]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str8) nounwind, !dbg !177 ; [#uses=1 type=i32] [debug line = 56:57@91:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !178 ; [debug line = 57:1@91:4]
  %tmp_trn_cast = zext i4 %i_3_i_mid2 to i8, !dbg !179 ; [#uses=1 type=i8] [debug line = 56:1@91:4]
  %tmp_9_trn_cast = zext i4 %j_1_i_mid2 to i8     ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_i_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp to i8, !dbg !179    ; [#uses=1 type=i8] [debug line = 56:1@91:4]
  %p_addr1 = add i8 %p_addr_cast, %tmp_9_trn_cast, !dbg !179 ; [#uses=1 type=i8] [debug line = 56:1@91:4]
  %tmp_s = zext i8 %p_addr1 to i64, !dbg !179     ; [#uses=1 type=i64] [debug line = 56:1@91:4]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_s, !dbg !179 ; [#uses=1 type=i16*] [debug line = 56:1@91:4]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !179 ; [#uses=1 type=i16] [debug line = 56:1@91:4]
  %tmp_35 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1_i_mid2, i3 0) ; [#uses=1 type=i7]
  %p_addr4_cast = zext i7 %tmp_35 to i8, !dbg !179 ; [#uses=1 type=i8] [debug line = 56:1@91:4]
  %p_addr5 = add i8 %p_addr4_cast, %tmp_trn_cast, !dbg !179 ; [#uses=1 type=i8] [debug line = 56:1@91:4]
  %tmp_36 = zext i8 %p_addr5 to i64, !dbg !179    ; [#uses=1 type=i64] [debug line = 56:1@91:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_36, !dbg !179 ; [#uses=1 type=i16*] [debug line = 56:1@91:4]
  store i16 %col_outbuf_load, i16* %buf_2d_out_addr, align 2, !dbg !179 ; [debug line = 56:1@91:4]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str8, i32 %tmp_6) nounwind, !dbg !180 ; [#uses=0 type=i32] [debug line = 56:36@91:4]
  %i = add i4 %i_3_i_mid2, 1, !dbg !181           ; [#uses=1 type=i4] [debug line = 55:63@91:4]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !151) nounwind, !dbg !181 ; [debug line = 55:63@91:4] [debug variable = i]
  br label %0

; <label>:0                                       ; preds = %.preheader.i, %newFuncRoot
  %indvar_flatten = phi i7 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader.i ] ; [#uses=2 type=i7]
  %j_1_i = phi i4 [ 0, %newFuncRoot ], [ %j_1_i_mid2, %.preheader.i ] ; [#uses=2 type=i4]
  %i_3_i = phi i4 [ 0, %newFuncRoot ], [ %i, %.preheader.i ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %dct_2d.exit.exitStub, label %.preheader.i
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

; [#uses=22]
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

; [#uses=2]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_33 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_33
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
!41 = metadata !{i32 786688, metadata !42, metadata !"row_outbuf", metadata !10, i32 31, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 786443, metadata !43, i32 30, i32 1, metadata !10, i32 5} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786478, i32 0, metadata !10, metadata !"dct_2d", metadata !"dct_2d", metadata !"_Z6dct_2dPA8_sS0_", metadata !10, i32 28, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 30} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{null, metadata !46, metadata !46}
!46 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ]
!47 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !48, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!48 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !10, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!49 = metadata !{metadata !37}
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !48, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{i32 31, i32 15, metadata !42, metadata !52}
!52 = metadata !{i32 91, i32 4, metadata !8, null}
!53 = metadata !{i32 786688, metadata !42, metadata !"col_outbuf", metadata !10, i32 32, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 32, i32 15, metadata !42, metadata !52}
!55 = metadata !{i32 786688, metadata !42, metadata !"col_inbuf", metadata !10, i32 32, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 32, i32 109, metadata !42, metadata !52}
!57 = metadata !{i32 89, i32 4, metadata !8, null}
!58 = metadata !{i32 94, i32 4, metadata !8, null}
!59 = metadata !{i32 95, i32 1, metadata !8, null}
!60 = metadata !{i32 786689, metadata !61, metadata !"buf", null, i32 71, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write_data", metadata !"write_data", metadata !"_Z10write_dataPA8_sPs", metadata !10, i32 71, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 72} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{null, metadata !64, metadata !13}
!64 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!65 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !14, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!66 = metadata !{i32 71, i32 23, metadata !61, null}
!67 = metadata !{i32 786689, metadata !61, metadata !"output", null, i32 71, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 71, i32 116, metadata !61, null}
!69 = metadata !{i32 76, i32 9, metadata !70, null}
!70 = metadata !{i32 786443, metadata !71, i32 76, i32 4, metadata !10, i32 24} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786443, metadata !61, i32 72, i32 1, metadata !10, i32 23} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 78, i32 12, metadata !73, null}
!73 = metadata !{i32 786443, metadata !74, i32 78, i32 7, metadata !10, i32 26} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786443, metadata !70, i32 76, i32 66, metadata !10, i32 25} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 76, i32 61, metadata !70, null}
!76 = metadata !{i32 79, i32 1, metadata !77, null}
!77 = metadata !{i32 786443, metadata !73, i32 79, i32 10, metadata !10, i32 27} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 79, i32 11, metadata !77, null}
!79 = metadata !{i32 79, i32 48, metadata !77, null}
!80 = metadata !{i32 80, i32 1, metadata !77, null}
!81 = metadata !{i32 79, i32 69, metadata !77, null}
!82 = metadata !{i32 78, i32 64, metadata !73, null}
!83 = metadata !{i32 786688, metadata !71, metadata !"c", metadata !10, i32 73, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!85 = metadata !{i32 81, i32 1, metadata !71, null}
!86 = metadata !{i32 786689, metadata !87, metadata !"input", null, i32 59, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read_data", metadata !"read_data", metadata !"_Z9read_dataPsPA8_s", metadata !10, i32 59, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 60} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{null, metadata !13, metadata !64}
!90 = metadata !{i32 59, i32 22, metadata !87, null}
!91 = metadata !{i32 786689, metadata !87, metadata !"buf", null, i32 59, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 59, i32 44, metadata !87, null}
!93 = metadata !{i32 64, i32 9, metadata !94, null}
!94 = metadata !{i32 786443, metadata !95, i32 64, i32 4, metadata !10, i32 19} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 786443, metadata !87, i32 60, i32 1, metadata !10, i32 18} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 66, i32 12, metadata !97, null}
!97 = metadata !{i32 786443, metadata !98, i32 66, i32 7, metadata !10, i32 21} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !94, i32 64, i32 66, metadata !10, i32 20} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 64, i32 61, metadata !94, null}
!100 = metadata !{i32 67, i32 1, metadata !101, null}
!101 = metadata !{i32 786443, metadata !97, i32 67, i32 10, metadata !10, i32 22} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 67, i32 11, metadata !101, null}
!103 = metadata !{i32 67, i32 48, metadata !101, null}
!104 = metadata !{i32 68, i32 1, metadata !101, null}
!105 = metadata !{i32 67, i32 68, metadata !101, null}
!106 = metadata !{i32 66, i32 64, metadata !97, null}
!107 = metadata !{i32 786688, metadata !95, metadata !"c", metadata !10, i32 61, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 69, i32 1, metadata !95, null}
!109 = metadata !{i32 37, i32 8, metadata !110, metadata !52}
!110 = metadata !{i32 786443, metadata !42, i32 37, i32 4, metadata !10, i32 6} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 786689, metadata !112, metadata !"src", null, i32 9, metadata !116, i32 0, metadata !117} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 786478, i32 0, metadata !10, metadata !"dct_1d", metadata !"dct_1d", metadata !"_Z6dct_1dPsS_", metadata !10, i32 9, metadata !113, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 10} ; [ DW_TAG_subprogram ]
!113 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!114 = metadata !{null, metadata !115, metadata !115}
!115 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ]
!116 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !48, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!117 = metadata !{i32 38, i32 7, metadata !118, metadata !52}
!118 = metadata !{i32 786443, metadata !110, i32 37, i32 65, metadata !10, i32 7} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 9, i32 24, metadata !112, metadata !117}
!120 = metadata !{i32 786689, metadata !112, metadata !"dst", null, i32 9, metadata !116, i32 0, metadata !117} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 9, i32 81, metadata !112, metadata !117}
!122 = metadata !{i32 18, i32 9, metadata !123, metadata !117}
!123 = metadata !{i32 786443, metadata !124, i32 18, i32 4, metadata !10, i32 1} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !112, i32 10, i32 1, metadata !10, i32 0} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 37, i32 60, metadata !110, metadata !52}
!126 = metadata !{i32 18, i32 67, metadata !127, metadata !117}
!127 = metadata !{i32 786443, metadata !123, i32 18, i32 66, metadata !10, i32 2} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 18, i32 107, metadata !127, metadata !117}
!129 = metadata !{i32 19, i32 1, metadata !127, metadata !117}
!130 = metadata !{i32 21, i32 48, metadata !131, metadata !117}
!131 = metadata !{i32 786443, metadata !132, i32 20, i32 77, metadata !10, i32 4} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 786443, metadata !127, i32 20, i32 7, metadata !10, i32 3} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 22, i32 10, metadata !131, metadata !117}
!134 = metadata !{i32 24, i32 7, metadata !127, metadata !117}
!135 = metadata !{i32 25, i32 4, metadata !127, metadata !117}
!136 = metadata !{i32 18, i32 61, metadata !123, metadata !117}
!137 = metadata !{i32 786688, metadata !124, metadata !"k", metadata !10, i32 11, metadata !138, i32 0, metadata !117} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!139 = metadata !{i32 44, i32 11, metadata !140, metadata !52}
!140 = metadata !{i32 786443, metadata !141, i32 44, i32 7, metadata !10, i32 10} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 786443, metadata !142, i32 43, i32 1, metadata !10, i32 9} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 786443, metadata !42, i32 42, i32 4, metadata !10, i32 8} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 42, i32 61, metadata !142, metadata !52}
!144 = metadata !{i32 45, i32 11, metadata !145, metadata !52}
!145 = metadata !{i32 786443, metadata !140, i32 45, i32 10, metadata !10, i32 11} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 45, i32 57, metadata !145, metadata !52}
!147 = metadata !{i32 46, i32 1, metadata !145, metadata !52}
!148 = metadata !{i32 45, i32 1, metadata !145, metadata !52}
!149 = metadata !{i32 45, i32 36, metadata !145, metadata !52}
!150 = metadata !{i32 44, i32 63, metadata !140, metadata !52}
!151 = metadata !{i32 786688, metadata !42, metadata !"i", metadata !10, i32 33, metadata !138, i32 0, metadata !52} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 786689, metadata !112, metadata !"src", null, i32 9, metadata !116, i32 0, metadata !153} ; [ DW_TAG_arg_variable ]
!153 = metadata !{i32 49, i32 7, metadata !154, metadata !52}
!154 = metadata !{i32 786443, metadata !155, i32 48, i32 66, metadata !10, i32 13} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 786443, metadata !42, i32 48, i32 4, metadata !10, i32 12} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 9, i32 24, metadata !112, metadata !153}
!157 = metadata !{i32 786689, metadata !112, metadata !"dst", null, i32 9, metadata !116, i32 0, metadata !153} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 9, i32 81, metadata !112, metadata !153}
!159 = metadata !{i32 18, i32 9, metadata !123, metadata !153}
!160 = metadata !{i32 48, i32 61, metadata !155, metadata !52}
!161 = metadata !{i32 18, i32 67, metadata !127, metadata !153}
!162 = metadata !{i32 18, i32 107, metadata !127, metadata !153}
!163 = metadata !{i32 19, i32 1, metadata !127, metadata !153}
!164 = metadata !{i32 21, i32 48, metadata !131, metadata !153}
!165 = metadata !{i32 22, i32 10, metadata !131, metadata !153}
!166 = metadata !{i32 24, i32 7, metadata !127, metadata !153}
!167 = metadata !{i32 25, i32 4, metadata !127, metadata !153}
!168 = metadata !{i32 18, i32 61, metadata !123, metadata !153}
!169 = metadata !{i32 786688, metadata !124, metadata !"k", metadata !10, i32 11, metadata !138, i32 0, metadata !153} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 55, i32 11, metadata !171, metadata !52}
!171 = metadata !{i32 786443, metadata !172, i32 55, i32 7, metadata !10, i32 16} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 786443, metadata !173, i32 54, i32 1, metadata !10, i32 15} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 786443, metadata !42, i32 53, i32 4, metadata !10, i32 14} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 53, i32 61, metadata !173, metadata !52}
!175 = metadata !{i32 56, i32 11, metadata !176, metadata !52}
!176 = metadata !{i32 786443, metadata !171, i32 56, i32 10, metadata !10, i32 17} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 56, i32 57, metadata !176, metadata !52}
!178 = metadata !{i32 57, i32 1, metadata !176, metadata !52}
!179 = metadata !{i32 56, i32 1, metadata !176, metadata !52}
!180 = metadata !{i32 56, i32 36, metadata !176, metadata !52}
!181 = metadata !{i32 55, i32 63, metadata !171, metadata !52}
