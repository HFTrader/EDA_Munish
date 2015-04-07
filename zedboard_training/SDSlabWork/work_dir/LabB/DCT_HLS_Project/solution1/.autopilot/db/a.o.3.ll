; ModuleID = '/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB/DCT_HLS_Project/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str3 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@p_str5 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@p_str8 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str10 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [4 x i8] c"dct\00"       ; [#uses=1 type=[4 x i8]*]
@dct_coeff_table = internal constant [64 x i15] [i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 11363, i15 9633, i15 6436, i15 2260, i15 -2260, i15 -6436, i15 -9632, i15 -11362, i15 10703, i15 4433, i15 -4433, i15 -10703, i15 -10703, i15 -4433, i15 4433, i15 10703, i15 9633, i15 -2260, i15 -11362, i15 -6436, i15 6436, i15 11363, i15 2260, i15 -9632, i15 8192, i15 -8192, i15 -8192, i15 8192, i15 8192, i15 -8191, i15 -8191, i15 8192, i15 6436, i15 -11362, i15 2260, i15 9633, i15 -9632, i15 -2260, i15 11363, i15 -6436, i15 4433, i15 -10703, i15 10703, i15 -4433, i15 -4433, i15 10703, i15 -10703, i15 4433, i15 2260, i15 -6436, i15 9633, i15 -11362, i15 11363, i15 -9632, i15 6436, i15 -2260] ; [#uses=1 type=[64 x i15]*]

; [#uses=5]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=12]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=21]
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
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !17), !dbg !29 ; [debug line = 83:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !30), !dbg !31 ; [debug line = 83:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_in}, metadata !32), !dbg !37 ; [debug line = 85:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_out}, metadata !38), !dbg !39 ; [debug line = 86:10] [debug variable = buf_2d_out]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !40) nounwind, !dbg !48 ; [debug line = 59:22@89:4] [debug variable = input]
  br label %1, !dbg !49                           ; [debug line = 64:9@89:4]

; <label>:1                                       ; preds = %5, %0
  %r_i = phi i4 [ 0, %0 ], [ %r, %5 ]             ; [#uses=4 type=i4]
  %exitcond1_i = icmp eq i4 %r_i, -8, !dbg !49    ; [#uses=1 type=i1] [debug line = 64:9@89:4]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %r = add i4 %r_i, 1, !dbg !52                   ; [#uses=1 type=i4] [debug line = 64:61@89:4]
  br i1 %exitcond1_i, label %read_data.exit, label %2, !dbg !49 ; [debug line = 64:9@89:4]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str8) nounwind, !dbg !53 ; [debug line = 64:67@89:4]
  %tmp_11_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8) nounwind, !dbg !55 ; [#uses=1 type=i32] [debug line = 64:104@89:4]
  %tmp = trunc i4 %r_i to i3                      ; [#uses=1 type=i3]
  %tmp_i = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp, i3 0), !dbg !56 ; [#uses=1 type=i6] [debug line = 67:1@89:4]
  br label %3, !dbg !59                           ; [debug line = 66:12@89:4]

; <label>:3                                       ; preds = %4, %2
  %c_i = phi i4 [ 0, %2 ], [ %c, %4 ]             ; [#uses=4 type=i4]
  %c_i_cast6 = zext i4 %c_i to i6, !dbg !59       ; [#uses=1 type=i6] [debug line = 66:12@89:4]
  %exitcond_i = icmp eq i4 %c_i, -8, !dbg !59     ; [#uses=1 type=i1] [debug line = 66:12@89:4]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %c = add i4 %c_i, 1, !dbg !60                   ; [#uses=1 type=i4] [debug line = 66:64@89:4]
  br i1 %exitcond_i, label %5, label %4, !dbg !59 ; [debug line = 66:12@89:4]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str9) nounwind, !dbg !61 ; [debug line = 67:11@89:4]
  %tmp_5_i = add i6 %c_i_cast6, %tmp_i, !dbg !56  ; [#uses=1 type=i6] [debug line = 67:1@89:4]
  %tmp_6_i = zext i6 %tmp_5_i to i64, !dbg !56    ; [#uses=1 type=i64] [debug line = 67:1@89:4]
  %input_addr = getelementptr [64 x i16]* %input, i64 0, i64 %tmp_6_i, !dbg !56 ; [#uses=1 type=i16*] [debug line = 67:1@89:4]
  %input_load = load i16* %input_addr, align 2, !dbg !56 ; [#uses=1 type=i16] [debug line = 67:1@89:4]
  %tmp_7_i_trn_cast = zext i4 %c_i to i8          ; [#uses=1 type=i8]
  %tmp_2 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_2 to i8, !dbg !56   ; [#uses=1 type=i8] [debug line = 67:1@89:4]
  %p_addr1 = add i8 %p_addr_cast, %tmp_7_i_trn_cast, !dbg !56 ; [#uses=1 type=i8] [debug line = 67:1@89:4]
  %tmp_3 = zext i8 %p_addr1 to i64, !dbg !56      ; [#uses=1 type=i64] [debug line = 67:1@89:4]
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i64 0, i64 %tmp_3, !dbg !56 ; [#uses=1 type=i16*] [debug line = 67:1@89:4]
  store i16 %input_load, i16* %buf_2d_in_addr, align 2, !dbg !56 ; [debug line = 67:1@89:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !62) nounwind, !dbg !60 ; [debug line = 66:64@89:4] [debug variable = c]
  br label %3, !dbg !60                           ; [debug line = 66:64@89:4]

; <label>:5                                       ; preds = %3
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_11_i) nounwind, !dbg !64 ; [#uses=0 type=i32] [debug line = 68:4@89:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !65) nounwind, !dbg !52 ; [debug line = 64:61@89:4] [debug variable = r]
  br label %1, !dbg !52                           ; [debug line = 64:61@89:4]

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_2d([64 x i16]* nocapture %buf_2d_in, [64 x i16]* nocapture %buf_2d_out) nounwind, !dbg !66 ; [debug line = 91:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !67) nounwind, !dbg !72 ; [debug line = 71:116@94:4] [debug variable = output]
  br label %6, !dbg !73                           ; [debug line = 76:9@94:4]

; <label>:6                                       ; preds = %10, %read_data.exit
  %r_i2 = phi i4 [ 0, %read_data.exit ], [ %r_1, %10 ] ; [#uses=4 type=i4]
  %exitcond1_i3 = icmp eq i4 %r_i2, -8, !dbg !73  ; [#uses=1 type=i1] [debug line = 76:9@94:4]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %r_1 = add i4 %r_i2, 1, !dbg !76                ; [#uses=1 type=i4] [debug line = 76:61@94:4]
  br i1 %exitcond1_i3, label %write_data.exit, label %7, !dbg !73 ; [debug line = 76:9@94:4]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind, !dbg !77 ; [debug line = 76:67@94:4]
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind, !dbg !79 ; [#uses=1 type=i32] [debug line = 76:104@94:4]
  %tmp_1 = trunc i4 %r_i2 to i3                   ; [#uses=1 type=i3]
  %tmp_i5 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_1, i3 0), !dbg !80 ; [#uses=1 type=i6] [debug line = 79:1@94:4]
  br label %8, !dbg !83                           ; [debug line = 78:12@94:4]

; <label>:8                                       ; preds = %9, %7
  %c_i6 = phi i4 [ 0, %7 ], [ %c_1, %9 ]          ; [#uses=4 type=i4]
  %c_i6_cast2 = zext i4 %c_i6 to i6, !dbg !83     ; [#uses=1 type=i6] [debug line = 78:12@94:4]
  %exitcond_i7 = icmp eq i4 %c_i6, -8, !dbg !83   ; [#uses=1 type=i1] [debug line = 78:12@94:4]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %c_1 = add i4 %c_i6, 1, !dbg !84                ; [#uses=1 type=i4] [debug line = 78:64@94:4]
  br i1 %exitcond_i7, label %10, label %9, !dbg !83 ; [debug line = 78:12@94:4]

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind, !dbg !85 ; [debug line = 79:11@94:4]
  %tmp_8_i_trn_cast = zext i4 %c_i6 to i8         ; [#uses=1 type=i8]
  %tmp_4 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i2, i3 0) ; [#uses=1 type=i7]
  %p_addr2_cast = zext i7 %tmp_4 to i8, !dbg !80  ; [#uses=1 type=i8] [debug line = 79:1@94:4]
  %p_addr3 = add i8 %p_addr2_cast, %tmp_8_i_trn_cast, !dbg !80 ; [#uses=1 type=i8] [debug line = 79:1@94:4]
  %tmp_5 = zext i8 %p_addr3 to i64, !dbg !80      ; [#uses=1 type=i64] [debug line = 79:1@94:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i64 0, i64 %tmp_5, !dbg !80 ; [#uses=1 type=i16*] [debug line = 79:1@94:4]
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2, !dbg !80 ; [#uses=1 type=i16] [debug line = 79:1@94:4]
  %tmp_9_i = add i6 %c_i6_cast2, %tmp_i5, !dbg !80 ; [#uses=1 type=i6] [debug line = 79:1@94:4]
  %tmp_3_i = zext i6 %tmp_9_i to i64, !dbg !80    ; [#uses=1 type=i64] [debug line = 79:1@94:4]
  %output_addr = getelementptr [64 x i16]* %output, i64 0, i64 %tmp_3_i, !dbg !80 ; [#uses=1 type=i16*] [debug line = 79:1@94:4]
  store i16 %buf_2d_out_load, i16* %output_addr, align 2, !dbg !80 ; [debug line = 79:1@94:4]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !86) nounwind, !dbg !84 ; [debug line = 78:64@94:4] [debug variable = c]
  br label %8, !dbg !84                           ; [debug line = 78:64@94:4]

; <label>:10                                      ; preds = %8
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_1_i) nounwind, !dbg !87 ; [#uses=0 type=i32] [debug line = 80:4@94:4]
  call void @llvm.dbg.value(metadata !{i4 %r_1}, i64 0, metadata !88) nounwind, !dbg !76 ; [debug line = 76:61@94:4] [debug variable = r]
  br label %6, !dbg !76                           ; [debug line = 76:61@94:4]

write_data.exit:                                  ; preds = %6
  ret void, !dbg !89                              ; [debug line = 95:1]
}

; [#uses=1]
define internal fastcc void @dct_2d([64 x i16]* nocapture %in_block, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_inbuf = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %in_block}, i64 0, metadata !90), !dbg !98 ; [debug line = 28:24] [debug variable = in_block]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %out_block}, i64 0, metadata !99), !dbg !100 ; [debug line = 29:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %row_outbuf}, metadata !101), !dbg !103 ; [debug line = 31:15] [debug variable = row_outbuf]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %col_outbuf}, metadata !104), !dbg !105 ; [debug line = 32:15] [debug variable = col_outbuf]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %col_inbuf}, metadata !106), !dbg !107 ; [debug line = 32:109] [debug variable = col_inbuf]
  br label %1, !dbg !108                          ; [debug line = 37:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]             ; [#uses=4 type=i4]
  %exitcond7 = icmp eq i4 %i, -8, !dbg !108       ; [#uses=1 type=i1] [debug line = 37:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_4 = add i4 %i, 1, !dbg !110                  ; [#uses=1 type=i4] [debug line = 37:60]
  br i1 %exitcond7, label %.preheader2, label %2, !dbg !108 ; [debug line = 37:8]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str2) nounwind, !dbg !111 ; [debug line = 37:66]
  call fastcc void @dct_1d([64 x i16]* nocapture %in_block, i4 %i, [64 x i16]* nocapture %row_outbuf, i4 %i), !dbg !113 ; [debug line = 38:7]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !114), !dbg !110 ; [debug line = 37:60] [debug variable = i]
  br label %1, !dbg !110                          ; [debug line = 37:60]

.preheader2:                                      ; preds = %6, %1
  %j = phi i4 [ %j_2, %6 ], [ 0, %1 ]             ; [#uses=4 type=i4]
  %exitcond6 = icmp eq i4 %j, -8, !dbg !116       ; [#uses=1 type=i1] [debug line = 42:9]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_2 = add i4 %j, 1, !dbg !118                  ; [#uses=1 type=i4] [debug line = 42:61]
  br i1 %exitcond6, label %.preheader1, label %3, !dbg !116 ; [debug line = 42:9]

; <label>:3                                       ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str3) nounwind, !dbg !119 ; [debug line = 43:2]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str3), !dbg !121 ; [#uses=1 type=i32] [debug line = 43:48]
  br label %4, !dbg !122                          ; [debug line = 44:11]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i4 [ 0, %3 ], [ %i_6, %5 ]           ; [#uses=4 type=i4]
  %exitcond5 = icmp eq i4 %i_1, -8, !dbg !122     ; [#uses=1 type=i1] [debug line = 44:11]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_6 = add i4 %i_1, 1, !dbg !124                ; [#uses=1 type=i4] [debug line = 44:63]
  br i1 %exitcond5, label %6, label %5, !dbg !122 ; [debug line = 44:11]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str4) nounwind, !dbg !125 ; [debug line = 45:11]
  %tmp_2_trn_cast = zext i4 %i_1 to i8, !dbg !127 ; [#uses=1 type=i8] [debug line = 45:1]
  %tmp_trn_cast = zext i4 %j to i8                ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp to i8, !dbg !127    ; [#uses=1 type=i8] [debug line = 45:1]
  %p_addr1 = add i8 %p_addr_cast, %tmp_trn_cast, !dbg !127 ; [#uses=1 type=i8] [debug line = 45:1]
  %tmp_7 = zext i8 %p_addr1 to i64, !dbg !127     ; [#uses=1 type=i64] [debug line = 45:1]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i64 0, i64 %tmp_7, !dbg !127 ; [#uses=1 type=i16*] [debug line = 45:1]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !127 ; [#uses=1 type=i16] [debug line = 45:1]
  %tmp_9 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j, i3 0) ; [#uses=1 type=i7]
  %p_addr6_cast = zext i7 %tmp_9 to i8, !dbg !127 ; [#uses=1 type=i8] [debug line = 45:1]
  %p_addr7 = add i8 %p_addr6_cast, %tmp_2_trn_cast, !dbg !127 ; [#uses=1 type=i8] [debug line = 45:1]
  %tmp_s = zext i8 %p_addr7 to i64, !dbg !127     ; [#uses=1 type=i64] [debug line = 45:1]
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i64 0, i64 %tmp_s, !dbg !127 ; [#uses=1 type=i16*] [debug line = 45:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2, !dbg !127 ; [debug line = 45:1]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !114), !dbg !124 ; [debug line = 44:63] [debug variable = i]
  br label %4, !dbg !124                          ; [debug line = 44:63]

; <label>:6                                       ; preds = %4
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str3, i32 %tmp_6), !dbg !128 ; [#uses=0 type=i32] [debug line = 45:77]
  call void @llvm.dbg.value(metadata !{i4 %j_2}, i64 0, metadata !129), !dbg !118 ; [debug line = 42:61] [debug variable = j]
  br label %.preheader2, !dbg !118                ; [debug line = 42:61]

.preheader1:                                      ; preds = %7, %.preheader2
  %i_2 = phi i4 [ %i_5, %7 ], [ 0, %.preheader2 ] ; [#uses=4 type=i4]
  %exitcond4 = icmp eq i4 %i_2, -8, !dbg !130     ; [#uses=1 type=i1] [debug line = 48:9]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_2, 1, !dbg !132                ; [#uses=1 type=i4] [debug line = 48:61]
  br i1 %exitcond4, label %.preheader, label %7, !dbg !130 ; [debug line = 48:9]

; <label>:7                                       ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str5) nounwind, !dbg !133 ; [debug line = 48:67]
  call fastcc void @dct_1d([64 x i16]* nocapture %col_inbuf, i4 %i_2, [64 x i16]* nocapture %col_outbuf, i4 %i_2), !dbg !135 ; [debug line = 49:7]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !114), !dbg !132 ; [debug line = 48:61] [debug variable = i]
  br label %.preheader1, !dbg !132                ; [debug line = 48:61]

.preheader:                                       ; preds = %11, %.preheader1
  %j_1 = phi i4 [ %j_3, %11 ], [ 0, %.preheader1 ] ; [#uses=4 type=i4]
  %exitcond3 = icmp eq i4 %j_1, -8, !dbg !136     ; [#uses=1 type=i1] [debug line = 53:9]
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %j_3 = add i4 %j_1, 1, !dbg !138                ; [#uses=1 type=i4] [debug line = 53:61]
  br i1 %exitcond3, label %12, label %8, !dbg !136 ; [debug line = 53:9]

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind, !dbg !139 ; [debug line = 54:2]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6), !dbg !141 ; [#uses=1 type=i32] [debug line = 54:48]
  br label %9, !dbg !142                          ; [debug line = 55:11]

; <label>:9                                       ; preds = %10, %8
  %i_3 = phi i4 [ 0, %8 ], [ %i_7, %10 ]          ; [#uses=4 type=i4]
  %exitcond = icmp eq i4 %i_3, -8, !dbg !142      ; [#uses=1 type=i1] [debug line = 55:11]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_7 = add i4 %i_3, 1, !dbg !144                ; [#uses=1 type=i4] [debug line = 55:63]
  br i1 %exitcond, label %11, label %10, !dbg !142 ; [debug line = 55:11]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str7) nounwind, !dbg !145 ; [debug line = 56:11]
  %tmp_4_trn_cast = zext i4 %i_3 to i8, !dbg !147 ; [#uses=1 type=i8] [debug line = 56:1]
  %tmp_3_trn_cast = zext i4 %j_1 to i8            ; [#uses=1 type=i8]
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3, i3 0) ; [#uses=1 type=i7]
  %p_addr2_cast = zext i7 %tmp_1 to i8, !dbg !147 ; [#uses=1 type=i8] [debug line = 56:1]
  %p_addr3 = add i8 %p_addr2_cast, %tmp_3_trn_cast, !dbg !147 ; [#uses=1 type=i8] [debug line = 56:1]
  %tmp_2 = zext i8 %p_addr3 to i64, !dbg !147     ; [#uses=1 type=i64] [debug line = 56:1]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i64 0, i64 %tmp_2, !dbg !147 ; [#uses=1 type=i16*] [debug line = 56:1]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !147 ; [#uses=1 type=i16] [debug line = 56:1]
  %tmp_3 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1, i3 0) ; [#uses=1 type=i7]
  %p_addr4_cast = zext i7 %tmp_3 to i8, !dbg !147 ; [#uses=1 type=i8] [debug line = 56:1]
  %p_addr5 = add i8 %p_addr4_cast, %tmp_4_trn_cast, !dbg !147 ; [#uses=1 type=i8] [debug line = 56:1]
  %tmp_4 = zext i8 %p_addr5 to i64, !dbg !147     ; [#uses=1 type=i64] [debug line = 56:1]
  %out_block_addr = getelementptr [64 x i16]* %out_block, i64 0, i64 %tmp_4, !dbg !147 ; [#uses=1 type=i16*] [debug line = 56:1]
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2, !dbg !147 ; [debug line = 56:1]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !114), !dbg !144 ; [debug line = 55:63] [debug variable = i]
  br label %9, !dbg !144                          ; [debug line = 55:63]

; <label>:11                                      ; preds = %9
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_8), !dbg !148 ; [#uses=0 type=i32] [debug line = 56:77]
  call void @llvm.dbg.value(metadata !{i4 %j_3}, i64 0, metadata !129), !dbg !138 ; [debug line = 53:61] [debug variable = j]
  br label %.preheader, !dbg !138                 ; [debug line = 53:61]

; <label>:12                                      ; preds = %.preheader
  ret void, !dbg !149                             ; [debug line = 57:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=12]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define internal fastcc void @dct_1d([64 x i16]* nocapture %src, i4 %tmp_1, [64 x i16]* nocapture %dst, i4 %tmp_11) {
  %tmp_11_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_11) ; [#uses=1 type=i4]
  %tmp_1_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %tmp_1) ; [#uses=1 type=i4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %src}, i64 0, metadata !150), !dbg !156 ; [debug line = 9:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %dst}, i64 0, metadata !157), !dbg !158 ; [debug line = 9:81] [debug variable = dst]
  br label %1, !dbg !159                          ; [debug line = 18:9]

; <label>:1                                       ; preds = %5, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %5 ]             ; [#uses=4 type=i4]
  %exitcond1 = icmp eq i4 %k, -8, !dbg !159       ; [#uses=1 type=i1] [debug line = 18:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %k_1 = add i4 %k, 1, !dbg !162                  ; [#uses=1 type=i4] [debug line = 18:61]
  br i1 %exitcond1, label %6, label %2, !dbg !159 ; [debug line = 18:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !163 ; [debug line = 18:67]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !165 ; [#uses=1 type=i32] [debug line = 18:107]
  br label %3, !dbg !166                          ; [debug line = 20:11]

; <label>:3                                       ; preds = %4, %2
  %n = phi i4 [ 0, %2 ], [ %n_1, %4 ]             ; [#uses=3 type=i4]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp_5, %4 ]       ; [#uses=2 type=i32]
  %tmp_3 = trunc i32 %tmp1 to i29, !dbg !166      ; [#uses=1 type=i29] [debug line = 20:11]
  %exitcond = icmp eq i4 %n, -8, !dbg !166        ; [#uses=1 type=i1] [debug line = 20:11]
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %n_1 = add i4 %n, 1, !dbg !168                  ; [#uses=1 type=i4] [debug line = 20:72]
  br i1 %exitcond, label %5, label %4, !dbg !166  ; [debug line = 20:11]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind, !dbg !169 ; [debug line = 20:78]
  %tmp_6_trn5_cast = zext i4 %n to i8             ; [#uses=2 type=i8]
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %k, i3 0) ; [#uses=1 type=i7]
  %dct_coeff_table_addr6_cast = zext i7 %tmp_7 to i8, !dbg !171 ; [#uses=1 type=i8] [debug line = 21:48]
  %dct_coeff_table_addr7 = add i8 %dct_coeff_table_addr6_cast, %tmp_6_trn5_cast, !dbg !171 ; [#uses=1 type=i8] [debug line = 21:48]
  %tmp_9 = zext i8 %dct_coeff_table_addr7 to i64, !dbg !171 ; [#uses=1 type=i64] [debug line = 21:48]
  %dct_coeff_table_addr = getelementptr [64 x i15]* @dct_coeff_table, i64 0, i64 %tmp_9, !dbg !171 ; [#uses=1 type=i15*] [debug line = 21:48]
  %dct_coeff_table_load = load i15* %dct_coeff_table_addr, align 2, !dbg !171 ; [#uses=1 type=i15] [debug line = 21:48]
  %coeff_cast = sext i15 %dct_coeff_table_load to i31, !dbg !171 ; [#uses=1 type=i31] [debug line = 21:48]
  %tmp_10 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_1_read, i3 0) ; [#uses=1 type=i7]
  %p_addr_cast = zext i7 %tmp_10 to i8, !dbg !172 ; [#uses=1 type=i8] [debug line = 22:10]
  %p_addr1 = add i8 %p_addr_cast, %tmp_6_trn5_cast, !dbg !172 ; [#uses=1 type=i8] [debug line = 22:10]
  %tmp_12 = zext i8 %p_addr1 to i64, !dbg !172    ; [#uses=1 type=i64] [debug line = 22:10]
  %src_addr = getelementptr [64 x i16]* %src, i64 0, i64 %tmp_12, !dbg !172 ; [#uses=1 type=i16*] [debug line = 22:10]
  %src_load = load i16* %src_addr, align 2, !dbg !172 ; [#uses=1 type=i16] [debug line = 22:10]
  %tmp_7_cast = sext i16 %src_load to i31, !dbg !172 ; [#uses=1 type=i31] [debug line = 22:10]
  %tmp_8 = mul i31 %tmp_7_cast, %coeff_cast, !dbg !172 ; [#uses=1 type=i31] [debug line = 22:10]
  %tmp_8_cast = sext i31 %tmp_8 to i32, !dbg !172 ; [#uses=1 type=i32] [debug line = 22:10]
  %tmp_5 = add nsw i32 %tmp_8_cast, %tmp1, !dbg !172 ; [#uses=1 type=i32] [debug line = 22:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp_5}, i64 0, metadata !173), !dbg !172 ; [debug line = 22:10] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i4 %n_1}, i64 0, metadata !174), !dbg !168 ; [debug line = 20:72] [debug variable = n]
  br label %3, !dbg !168                          ; [debug line = 20:72]

; <label>:5                                       ; preds = %3
  %tmp_2 = add i29 %tmp_3, 4096, !dbg !175        ; [#uses=1 type=i29] [debug line = 24:7]
  %tmp_4 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_2, i32 13, i32 28), !dbg !175 ; [#uses=1 type=i16] [debug line = 24:7]
  %tmp_trn_cast = zext i4 %k to i8                ; [#uses=1 type=i8]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_11_read, i3 0) ; [#uses=1 type=i7]
  %p_addr2_cast = zext i7 %tmp to i8, !dbg !175   ; [#uses=1 type=i8] [debug line = 24:7]
  %p_addr3 = add i8 %p_addr2_cast, %tmp_trn_cast, !dbg !175 ; [#uses=1 type=i8] [debug line = 24:7]
  %tmp_6 = zext i8 %p_addr3 to i64, !dbg !175     ; [#uses=1 type=i64] [debug line = 24:7]
  %dst_addr = getelementptr [64 x i16]* %dst, i64 0, i64 %tmp_6, !dbg !175 ; [#uses=1 type=i16*] [debug line = 24:7]
  store i16 %tmp_4, i16* %dst_addr, align 2, !dbg !175 ; [debug line = 24:7]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_s) nounwind, !dbg !176 ; [#uses=0 type=i32] [debug line = 25:4]
  call void @llvm.dbg.value(metadata !{i4 %k_1}, i64 0, metadata !177), !dbg !162 ; [debug line = 18:61] [debug variable = k]
  br label %1, !dbg !162                          ; [debug line = 18:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !178                             ; [debug line = 26:1]
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_29 = zext i3 %1 to i6                    ; [#uses=2 type=i6]
  %empty_30 = trunc i6 %empty to i3               ; [#uses=1 type=i3]
  %empty_31 = call i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6 %empty_29, i32 3, i32 5) ; [#uses=1 type=i3]
  %empty_32 = or i3 %empty_30, %empty_31          ; [#uses=1 type=i3]
  %empty_33 = call i6 @_ssdm_op_PartSet.i6.i6.i3.i32.i32(i6 %empty_29, i3 %empty_32, i32 3, i32 5) ; [#uses=1 type=i6]
  ret i6 %empty_33
}

; [#uses=9]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_34 = zext i3 %1 to i7                    ; [#uses=2 type=i7]
  %empty_35 = trunc i7 %empty to i4               ; [#uses=1 type=i4]
  %empty_36 = call i4 @_ssdm_op_PartSelect.i4.i7.i32.i32(i7 %empty_34, i32 3, i32 6) ; [#uses=1 type=i4]
  %empty_37 = or i4 %empty_35, %empty_36          ; [#uses=1 type=i4]
  %empty_38 = call i7 @_ssdm_op_PartSet.i7.i7.i4.i32.i32(i7 %empty_34, i4 %empty_37, i32 3, i32 6) ; [#uses=1 type=i7]
  ret i7 %empty_38
}

; [#uses=1]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_39 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_39
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

; [#uses=0]
declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2) ; [#uses=1 type=i6]
  %empty_40 = trunc i6 %empty to i3               ; [#uses=1 type=i3]
  ret i3 %empty_40
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
  %empty_41 = trunc i7 %empty to i4               ; [#uses=1 type=i4]
  ret i4 %empty_41
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
!17 = metadata !{i32 786689, metadata !18, metadata !"input", null, i32 83, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!18 = metadata !{i32 786478, i32 0, metadata !19, metadata !"dct", metadata !"dct", metadata !"_Z3dctPsS_", metadata !19, i32 83, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 84} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786473, metadata !"../../project_documents/LabB/dct.cpp", metadata !"/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB", null} ; [ DW_TAG_file_type ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !22, metadata !22}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !23, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 83, i32 16, metadata !18, null}
!30 = metadata !{i32 786689, metadata !18, metadata !"output", null, i32 83, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 83, i32 38, metadata !18, null}
!32 = metadata !{i32 786688, metadata !33, metadata !"buf_2d_in", metadata !19, i32 85, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!33 = metadata !{i32 786443, metadata !18, i32 84, i32 1, metadata !19, i32 28} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !23, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36, metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 85, i32 10, metadata !33, null}
!38 = metadata !{i32 786688, metadata !33, metadata !"buf_2d_out", metadata !19, i32 86, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 86, i32 10, metadata !33, null}
!40 = metadata !{i32 786689, metadata !41, metadata !"input", null, i32 59, metadata !26, i32 0, metadata !47} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 786478, i32 0, metadata !19, metadata !"read_data", metadata !"read_data", metadata !"_Z9read_dataPsPA8_s", metadata !19, i32 59, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 60} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !22, metadata !44}
!44 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !23, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{metadata !36}
!47 = metadata !{i32 89, i32 4, metadata !33, null}
!48 = metadata !{i32 59, i32 22, metadata !41, metadata !47}
!49 = metadata !{i32 64, i32 9, metadata !50, metadata !47}
!50 = metadata !{i32 786443, metadata !51, i32 64, i32 4, metadata !19, i32 19} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 786443, metadata !41, i32 60, i32 1, metadata !19, i32 18} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 64, i32 61, metadata !50, metadata !47}
!53 = metadata !{i32 64, i32 67, metadata !54, metadata !47}
!54 = metadata !{i32 786443, metadata !50, i32 64, i32 66, metadata !19, i32 20} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 64, i32 104, metadata !54, metadata !47}
!56 = metadata !{i32 67, i32 1, metadata !57, metadata !47}
!57 = metadata !{i32 786443, metadata !58, i32 67, i32 10, metadata !19, i32 22} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !54, i32 66, i32 7, metadata !19, i32 21} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 66, i32 12, metadata !58, metadata !47}
!60 = metadata !{i32 66, i32 64, metadata !58, metadata !47}
!61 = metadata !{i32 67, i32 11, metadata !57, metadata !47}
!62 = metadata !{i32 786688, metadata !51, metadata !"c", metadata !19, i32 61, metadata !63, i32 0, metadata !47} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 68, i32 4, metadata !54, metadata !47}
!65 = metadata !{i32 786688, metadata !51, metadata !"r", metadata !19, i32 61, metadata !63, i32 0, metadata !47} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 91, i32 4, metadata !33, null}
!67 = metadata !{i32 786689, metadata !68, metadata !"output", null, i32 71, metadata !26, i32 0, metadata !71} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 786478, i32 0, metadata !19, metadata !"write_data", metadata !"write_data", metadata !"_Z10write_dataPA8_sPs", metadata !19, i32 71, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 72} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !44, metadata !22}
!71 = metadata !{i32 94, i32 4, metadata !33, null}
!72 = metadata !{i32 71, i32 116, metadata !68, metadata !71}
!73 = metadata !{i32 76, i32 9, metadata !74, metadata !71}
!74 = metadata !{i32 786443, metadata !75, i32 76, i32 4, metadata !19, i32 24} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !68, i32 72, i32 1, metadata !19, i32 23} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 76, i32 61, metadata !74, metadata !71}
!77 = metadata !{i32 76, i32 67, metadata !78, metadata !71}
!78 = metadata !{i32 786443, metadata !74, i32 76, i32 66, metadata !19, i32 25} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 76, i32 104, metadata !78, metadata !71}
!80 = metadata !{i32 79, i32 1, metadata !81, metadata !71}
!81 = metadata !{i32 786443, metadata !82, i32 79, i32 10, metadata !19, i32 27} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !78, i32 78, i32 7, metadata !19, i32 26} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 78, i32 12, metadata !82, metadata !71}
!84 = metadata !{i32 78, i32 64, metadata !82, metadata !71}
!85 = metadata !{i32 79, i32 11, metadata !81, metadata !71}
!86 = metadata !{i32 786688, metadata !75, metadata !"c", metadata !19, i32 73, metadata !63, i32 0, metadata !71} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 80, i32 4, metadata !78, metadata !71}
!88 = metadata !{i32 786688, metadata !75, metadata !"r", metadata !19, i32 73, metadata !63, i32 0, metadata !71} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 95, i32 1, metadata !33, null}
!90 = metadata !{i32 786689, metadata !91, metadata !"in_block", null, i32 28, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 786478, i32 0, metadata !19, metadata !"dct_2d", metadata !"dct_2d", metadata !"_Z6dct_2dPA8_sS0_", metadata !19, i32 28, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 30} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !94, metadata !94}
!94 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ]
!95 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !96, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!96 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !19, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!97 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !96, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!98 = metadata !{i32 28, i32 24, metadata !91, null}
!99 = metadata !{i32 786689, metadata !91, metadata !"out_block", null, i32 29, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 29, i32 18, metadata !91, null}
!101 = metadata !{i32 786688, metadata !102, metadata !"row_outbuf", metadata !19, i32 31, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 786443, metadata !91, i32 30, i32 1, metadata !19, i32 5} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 31, i32 15, metadata !102, null}
!104 = metadata !{i32 786688, metadata !102, metadata !"col_outbuf", metadata !19, i32 32, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 32, i32 15, metadata !102, null}
!106 = metadata !{i32 786688, metadata !102, metadata !"col_inbuf", metadata !19, i32 32, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 32, i32 109, metadata !102, null}
!108 = metadata !{i32 37, i32 8, metadata !109, null}
!109 = metadata !{i32 786443, metadata !102, i32 37, i32 4, metadata !19, i32 6} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 37, i32 60, metadata !109, null}
!111 = metadata !{i32 37, i32 66, metadata !112, null}
!112 = metadata !{i32 786443, metadata !109, i32 37, i32 65, metadata !19, i32 7} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 38, i32 7, metadata !112, null}
!114 = metadata !{i32 786688, metadata !102, metadata !"i", metadata !19, i32 33, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!116 = metadata !{i32 42, i32 9, metadata !117, null}
!117 = metadata !{i32 786443, metadata !102, i32 42, i32 4, metadata !19, i32 8} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 42, i32 61, metadata !117, null}
!119 = metadata !{i32 43, i32 2, metadata !120, null}
!120 = metadata !{i32 786443, metadata !117, i32 43, i32 1, metadata !19, i32 9} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 43, i32 48, metadata !120, null}
!122 = metadata !{i32 44, i32 11, metadata !123, null}
!123 = metadata !{i32 786443, metadata !120, i32 44, i32 7, metadata !19, i32 10} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 44, i32 63, metadata !123, null}
!125 = metadata !{i32 45, i32 11, metadata !126, null}
!126 = metadata !{i32 786443, metadata !123, i32 45, i32 10, metadata !19, i32 11} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 45, i32 1, metadata !126, null}
!128 = metadata !{i32 45, i32 77, metadata !120, null}
!129 = metadata !{i32 786688, metadata !102, metadata !"j", metadata !19, i32 33, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 48, i32 9, metadata !131, null}
!131 = metadata !{i32 786443, metadata !102, i32 48, i32 4, metadata !19, i32 12} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 48, i32 61, metadata !131, null}
!133 = metadata !{i32 48, i32 67, metadata !134, null}
!134 = metadata !{i32 786443, metadata !131, i32 48, i32 66, metadata !19, i32 13} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 49, i32 7, metadata !134, null}
!136 = metadata !{i32 53, i32 9, metadata !137, null}
!137 = metadata !{i32 786443, metadata !102, i32 53, i32 4, metadata !19, i32 14} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 53, i32 61, metadata !137, null}
!139 = metadata !{i32 54, i32 2, metadata !140, null}
!140 = metadata !{i32 786443, metadata !137, i32 54, i32 1, metadata !19, i32 15} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 54, i32 48, metadata !140, null}
!142 = metadata !{i32 55, i32 11, metadata !143, null}
!143 = metadata !{i32 786443, metadata !140, i32 55, i32 7, metadata !19, i32 16} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 55, i32 63, metadata !143, null}
!145 = metadata !{i32 56, i32 11, metadata !146, null}
!146 = metadata !{i32 786443, metadata !143, i32 56, i32 10, metadata !19, i32 17} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 56, i32 1, metadata !146, null}
!148 = metadata !{i32 56, i32 77, metadata !140, null}
!149 = metadata !{i32 57, i32 1, metadata !102, null}
!150 = metadata !{i32 786689, metadata !151, metadata !"src", null, i32 9, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 786478, i32 0, metadata !19, metadata !"dct_1d", metadata !"dct_1d", metadata !"_Z6dct_1dPsS_", metadata !19, i32 9, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 10} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{null, metadata !154, metadata !154}
!154 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ]
!155 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !96, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!156 = metadata !{i32 9, i32 24, metadata !151, null}
!157 = metadata !{i32 786689, metadata !151, metadata !"dst", null, i32 9, metadata !155, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 9, i32 81, metadata !151, null}
!159 = metadata !{i32 18, i32 9, metadata !160, null}
!160 = metadata !{i32 786443, metadata !161, i32 18, i32 4, metadata !19, i32 1} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786443, metadata !151, i32 10, i32 1, metadata !19, i32 0} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 18, i32 61, metadata !160, null}
!163 = metadata !{i32 18, i32 67, metadata !164, null}
!164 = metadata !{i32 786443, metadata !160, i32 18, i32 66, metadata !19, i32 2} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 18, i32 107, metadata !164, null}
!166 = metadata !{i32 20, i32 11, metadata !167, null}
!167 = metadata !{i32 786443, metadata !164, i32 20, i32 7, metadata !19, i32 3} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 20, i32 72, metadata !167, null}
!169 = metadata !{i32 20, i32 78, metadata !170, null}
!170 = metadata !{i32 786443, metadata !167, i32 20, i32 77, metadata !19, i32 4} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 21, i32 48, metadata !170, null}
!172 = metadata !{i32 22, i32 10, metadata !170, null}
!173 = metadata !{i32 786688, metadata !161, metadata !"tmp", metadata !19, i32 12, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 786688, metadata !161, metadata !"n", metadata !19, i32 11, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 24, i32 7, metadata !164, null}
!176 = metadata !{i32 25, i32 4, metadata !164, null}
!177 = metadata !{i32 786688, metadata !161, metadata !"k", metadata !19, i32 11, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 26, i32 1, metadata !161, null}
