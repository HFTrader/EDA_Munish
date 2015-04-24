; ModuleID = '/home/ga38qoh/EDA_Munish/work_dir/dualCore_grayscaleProcessing/GrayScaleIP/grayscale_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str1805 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1806 = private unnamed_addr constant [5 x i8] c"AXIS\00", align 1
@p_str1807 = private unnamed_addr constant [25 x i8] c"-bus_bundle INPUT_STREAM\00", align 1
@p_str1808 = private unnamed_addr constant [26 x i8] c"-bus_bundle OUTPUT_STREAM\00", align 1
@p_str1809 = private unnamed_addr constant [10 x i8] c"AXI_SLAVE\00", align 1
@p_str1810 = private unnamed_addr constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1
@p_str1811 = private unnamed_addr constant [10 x i8] c"ap_stable\00", align 1
@p_str1815 = private unnamed_addr constant [12 x i8] c"loop_height\00", align 1
@p_str1816 = private unnamed_addr constant [11 x i8] c"loop_width\00", align 1
@p_str1823 = private unnamed_addr constant [20 x i8] c"loop_wait_for_start\00", align 1
@p_str1824 = private unnamed_addr constant [18 x i8] c"loop_wait_for_eol\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [11 x i8] c"gray_scale\00"
@str40 = internal constant [8 x i8] c"ap_fifo\00"
@str41 = internal constant [8 x i8] c"ap_fifo\00"
@str42 = internal constant [8 x i8] c"ap_fifo\00"
@str43 = internal constant [8 x i8] c"ap_fifo\00"
@str44 = internal constant [8 x i8] c"ap_fifo\00"
@str45 = internal constant [8 x i8] c"ap_fifo\00"
@str46 = internal constant [8 x i8] c"ap_fifo\00"
@str47 = internal constant [8 x i8] c"ap_fifo\00"
@str48 = internal constant [8 x i8] c"ap_fifo\00"
@str49 = internal constant [8 x i8] c"ap_fifo\00"
@str50 = internal constant [8 x i8] c"ap_fifo\00"
@str51 = internal constant [8 x i8] c"ap_fifo\00"
@str52 = internal constant [8 x i8] c"ap_fifo\00"
@str53 = internal constant [8 x i8] c"ap_fifo\00"
@str61 = internal constant [23 x i8] c"img_0.data_stream[0].V\00"
@str62 = internal constant [1 x i8] zeroinitializer
@str63 = internal constant [8 x i8] c"ap_fifo\00"
@str64 = internal constant [23 x i8] c"img_0.data_stream[1].V\00"
@str65 = internal constant [1 x i8] zeroinitializer
@str66 = internal constant [8 x i8] c"ap_fifo\00"
@str67 = internal constant [23 x i8] c"img_0.data_stream[2].V\00"
@str68 = internal constant [1 x i8] zeroinitializer
@str69 = internal constant [8 x i8] c"ap_fifo\00"
@str70 = internal constant [23 x i8] c"img_1.data_stream[0].V\00"
@str71 = internal constant [1 x i8] zeroinitializer
@str72 = internal constant [8 x i8] c"ap_fifo\00"
@str73 = internal constant [23 x i8] c"img_1.data_stream[1].V\00"
@str74 = internal constant [1 x i8] zeroinitializer
@str75 = internal constant [8 x i8] c"ap_fifo\00"
@str76 = internal constant [23 x i8] c"img_1.data_stream[2].V\00"
@str77 = internal constant [1 x i8] zeroinitializer
@str78 = internal constant [8 x i8] c"ap_fifo\00"

define void @gray_scale(i32* %input_V_data_V, i4* %input_V_keep_V, i4* %input_V_strb_V, i1* %input_V_user_V, i1* %input_V_last_V, i1* %input_V_id_V, i1* %input_V_dest_V, i32* %output_V_data_V, i4* %output_V_keep_V, i4* %output_V_strb_V, i1* %output_V_user_V, i1* %output_V_last_V, i1* %output_V_id_V, i1* %output_V_dest_V, i32 %rows, i32 %cols) {
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %input_V_data_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %input_V_keep_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %input_V_strb_V), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_V_user_V), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_V_last_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_V_id_V), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_V_dest_V), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output_V_data_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_V_keep_V), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_V_strb_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_V_user_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_V_last_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_V_id_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_V_dest_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %rows), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %cols), !map !69
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_dest_V, [8 x i8]* @str53, i32 0, i32 0, i32 0, [8 x i8]* @str53)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_id_V, [8 x i8]* @str52, i32 0, i32 0, i32 0, [8 x i8]* @str52)
  %empty_25 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_last_V, [8 x i8]* @str51, i32 0, i32 0, i32 0, [8 x i8]* @str51)
  %empty_26 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_user_V, [8 x i8]* @str50, i32 0, i32 0, i32 0, [8 x i8]* @str50)
  %empty_27 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %output_V_strb_V, [8 x i8]* @str49, i32 0, i32 0, i32 0, [8 x i8]* @str49)
  %empty_28 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %output_V_keep_V, [8 x i8]* @str48, i32 0, i32 0, i32 0, [8 x i8]* @str48)
  %empty_29 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %output_V_data_V, [8 x i8]* @str47, i32 0, i32 0, i32 0, [8 x i8]* @str47)
  %empty_30 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_dest_V, [8 x i8]* @str46, i32 0, i32 0, i32 0, [8 x i8]* @str46)
  %empty_31 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_id_V, [8 x i8]* @str45, i32 0, i32 0, i32 0, [8 x i8]* @str45)
  %empty_32 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_last_V, [8 x i8]* @str44, i32 0, i32 0, i32 0, [8 x i8]* @str44)
  %empty_33 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_user_V, [8 x i8]* @str43, i32 0, i32 0, i32 0, [8 x i8]* @str43)
  %empty_34 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %input_V_strb_V, [8 x i8]* @str42, i32 0, i32 0, i32 0, [8 x i8]* @str42)
  %empty_35 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %input_V_keep_V, [8 x i8]* @str41, i32 0, i32 0, i32 0, [8 x i8]* @str41)
  %empty_36 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %input_V_data_V, [8 x i8]* @str40, i32 0, i32 0, i32 0, [8 x i8]* @str40)
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @str) nounwind
  %cols_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %cols)
  %rows_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %rows)
  %img_0_data_stream_0_V = alloca i8, align 1
  %empty_37 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str61, i32 1, [1 x i8]* @str62, [1 x i8]* @str62, i32 1, i32 1, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_0_V)
  %empty_38 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_0_data_stream_0_V, [8 x i8]* @str63, i32 0, i32 0, i32 0, [8 x i8]* @str63)
  %img_0_data_stream_1_V = alloca i8, align 1
  %empty_39 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str64, i32 1, [1 x i8]* @str65, [1 x i8]* @str65, i32 1, i32 1, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_1_V)
  %empty_40 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_0_data_stream_1_V, [8 x i8]* @str66, i32 0, i32 0, i32 0, [8 x i8]* @str66)
  %img_0_data_stream_2_V = alloca i8, align 1
  %empty_41 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str67, i32 1, [1 x i8]* @str68, [1 x i8]* @str68, i32 1, i32 1, i8* %img_0_data_stream_2_V, i8* %img_0_data_stream_2_V)
  %empty_42 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_0_data_stream_2_V, [8 x i8]* @str69, i32 0, i32 0, i32 0, [8 x i8]* @str69)
  %img_1_data_stream_0_V = alloca i8, align 1
  %empty_43 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str70, i32 1, [1 x i8]* @str71, [1 x i8]* @str71, i32 1, i32 1, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_0_V)
  %empty_44 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_1_data_stream_0_V, [8 x i8]* @str72, i32 0, i32 0, i32 0, [8 x i8]* @str72)
  %img_1_data_stream_1_V = alloca i8, align 1
  %empty_45 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str73, i32 1, [1 x i8]* @str74, [1 x i8]* @str74, i32 1, i32 1, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_1_V)
  %empty_46 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_1_data_stream_1_V, [8 x i8]* @str75, i32 0, i32 0, i32 0, [8 x i8]* @str75)
  %img_1_data_stream_2_V = alloca i8, align 1
  %empty_47 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str76, i32 1, [1 x i8]* @str77, [1 x i8]* @str77, i32 1, i32 1, i8* %img_1_data_stream_2_V, i8* %img_1_data_stream_2_V)
  %empty_48 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_1_data_stream_2_V, [8 x i8]* @str78, i32 0, i32 0, i32 0, [8 x i8]* @str78)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %input_V_data_V, i4* %input_V_keep_V, i4* %input_V_strb_V, i1* %input_V_user_V, i1* %input_V_last_V, i1* %input_V_id_V, i1* %input_V_dest_V, [1 x i8]* @p_str1805, [5 x i8]* @p_str1806, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [25 x i8]* @p_str1807)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %output_V_data_V, i4* %output_V_keep_V, i4* %output_V_strb_V, i1* %output_V_user_V, i1* %output_V_last_V, i1* %output_V_id_V, i1* %output_V_dest_V, [1 x i8]* @p_str1805, [5 x i8]* @p_str1806, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [26 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str1805, [10 x i8]* @p_str1809, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [24 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str1805, [10 x i8]* @p_str1809, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [24 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1805, [10 x i8]* @p_str1809, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [24 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecWire(i32 %rows, [10 x i8]* @p_str1811, i32 0, i32 0, i32 0, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %cols, [10 x i8]* @p_str1811, i32 0, i32 0, i32 0, [1 x i8]* @p_str1805) nounwind
  %call_ret = call fastcc { i12, i12, i12, i12 } @init(i32 %rows_read, i32 %cols_read)
  %img_0_rows_V = extractvalue { i12, i12, i12, i12 } %call_ret, 0
  %img_0_rows_V_channel5 = extractvalue { i12, i12, i12, i12 } %call_ret, 1
  %img_0_cols_V = extractvalue { i12, i12, i12, i12 } %call_ret, 2
  %img_0_cols_V_channel6 = extractvalue { i12, i12, i12, i12 } %call_ret, 3
  %call_ret1 = call fastcc { i12, i12 } @init.1(i32 %rows_read, i32 %cols_read)
  %img_1_rows_V = extractvalue { i12, i12 } %call_ret1, 0
  %img_1_cols_V = extractvalue { i12, i12 } %call_ret1, 1
  call fastcc void @"AXIvideo2Mat<32,1080,1920,32>"(i32* %input_V_data_V, i4* %input_V_keep_V, i4* %input_V_strb_V, i1* %input_V_user_V, i1* %input_V_last_V, i1* %input_V_id_V, i1* %input_V_dest_V, i12 %img_0_rows_V, i12 %img_0_cols_V, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V)
  call fastcc void @"CvtColor<0,32,32,1080,1920>"(i12 %img_0_rows_V_channel5, i12 %img_0_cols_V_channel6, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V)
  call fastcc void @"Mat2AXIvideo<32,1080,1920,32>"(i12 %img_1_rows_V, i12 %img_1_cols_V, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V, i32* %output_V_data_V, i4* %output_V_keep_V, i4* %output_V_strb_V, i1* %output_V_user_V, i1* %output_V_last_V, i1* %output_V_id_V, i1* %output_V_dest_V)
  ret void
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
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

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecFifo(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_49 = trunc i32 %empty to i8
  ret i8 %empty_49
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_50 = zext i8 %3 to i16
  %empty_51 = trunc i16 %empty to i8
  %empty_52 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %empty_50, i32 8, i32 15)
  %empty_53 = or i8 %empty_51, %empty_52
  %empty_54 = call i16 @_ssdm_op_PartSet.i16.i16.i8.i32.i32(i16 %empty_50, i8 %empty_53, i32 8, i32 15)
  %empty_55 = zext i8 %1 to i24
  %empty_56 = zext i16 %empty_54 to i24
  %empty_57 = trunc i24 %empty_55 to i8
  %empty_58 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %empty_56, i32 16, i32 23)
  %empty_59 = or i8 %empty_57, %empty_58
  %empty_60 = call i24 @_ssdm_op_PartSet.i24.i24.i8.i32.i32(i24 %empty_56, i8 %empty_59, i32 16, i32 23)
  %empty_61 = zext i8 %0 to i32
  %empty_62 = zext i24 %empty_60 to i32
  %empty_63 = trunc i32 %empty_61 to i8
  %empty_64 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %empty_62, i32 24, i32 31)
  %empty_65 = or i8 %empty_63, %empty_64
  %empty_66 = call i32 @_ssdm_op_PartSet.i32.i32.i8.i32.i32(i32 %empty_62, i8 %empty_65, i32 24, i32 31)
  ret i32 %empty_66
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define internal fastcc void @"AXIvideo2Mat<32,1080,1920,32>"(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_2_V, [8 x i8]* @str69, i32 0, i32 0, i32 0, [8 x i8]* @str69)
  %empty_67 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_1_V, [8 x i8]* @str66, i32 0, i32 0, i32 0, [8 x i8]* @str66)
  %empty_68 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_0_V, [8 x i8]* @str63, i32 0, i32 0, i32 0, [8 x i8]* @str63)
  %empty_69 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_dest_V, [8 x i8]* @str46, i32 0, i32 0, i32 0, [8 x i8]* @str46)
  %empty_70 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_id_V, [8 x i8]* @str45, i32 0, i32 0, i32 0, [8 x i8]* @str45)
  %empty_71 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_last_V, [8 x i8]* @str44, i32 0, i32 0, i32 0, [8 x i8]* @str44)
  %empty_72 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_user_V, [8 x i8]* @str43, i32 0, i32 0, i32 0, [8 x i8]* @str43)
  %empty_73 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_strb_V, [8 x i8]* @str42, i32 0, i32 0, i32 0, [8 x i8]* @str42)
  %empty_74 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_keep_V, [8 x i8]* @str41, i32 0, i32 0, i32 0, [8 x i8]* @str41)
  %empty_75 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %AXI_video_strm_V_data_V, [8 x i8]* @str40, i32 0, i32 0, i32 0, [8 x i8]* @str40)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [1 x i8]* @p_str1805, [5 x i8]* @p_str1806, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [25 x i8]* @p_str1807)
  %img_cols_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_cols_V_read)
  %img_rows_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_rows_V_read)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %axi_4 = phi i1 [ undef, %0 ], [ %tmp_last_V, %2 ]
  %axi = phi i32 [ undef, %0 ], [ %tmp_data_V, %2 ]
  %sof = phi i1 [ false, %0 ], [ %tmp_user_V, %2 ]
  br i1 %sof, label %.preheader148.preheader, label %2

.preheader148.preheader:                          ; preds = %1
  %sof_1 = alloca i1, align 1
  store i1 true, i1* %sof_1, align 1
  br label %.preheader148

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str1823) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @p_str1823)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind
  %empty_76 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.ap_fifo.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_76, 0
  %tmp_user_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_76, 3
  %tmp_last_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_76, 4
  %empty_77 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @p_str1823, i32 %tmp)
  br label %1

.preheader148:                                    ; preds = %.preheader148.preheader, %8
  %axi_4_1 = phi i1 [ %axi_4_4, %8 ], [ %axi_4, %.preheader148.preheader ]
  %axi_0_1 = phi i32 [ %axi_0_4, %8 ], [ %axi, %.preheader148.preheader ]
  %p_s = phi i12 [ %i_V, %8 ], [ 0, %.preheader148.preheader ]
  %exitcond1 = icmp eq i12 %p_s, %img_rows_V_read_1
  %i_V = add i12 %p_s, 1
  br i1 %exitcond1, label %9, label %3

; <label>:3                                       ; preds = %.preheader148
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1815) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1815)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str1805) nounwind
  br label %4

; <label>:4                                       ; preds = %._crit_edge, %3
  %eol_1 = phi i1 [ %axi_4_1, %3 ], [ %eol_2, %._crit_edge ]
  %axi_0_2 = phi i32 [ %axi_0_1, %3 ], [ %p_Val2_s, %._crit_edge ]
  %p_1 = phi i12 [ 0, %3 ], [ %j_V, %._crit_edge ]
  %eol = phi i1 [ false, %3 ], [ %eol_2, %._crit_edge ]
  %exitcond2 = icmp eq i12 %p_1, %img_cols_V_read_1
  %j_V = add i12 %p_1, 1
  br i1 %exitcond2, label %.preheader, label %5

; <label>:5                                       ; preds = %4
  %sof_1_load = load i1* %sof_1, align 1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1816) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1816)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind
  %brmerge = or i1 %sof_1_load, %eol
  %not_sof_2 = xor i1 %sof_1_load, true
  %eol_1_mux = or i1 %eol_1, %not_sof_2
  br i1 %brmerge, label %._crit_edge, label %6

; <label>:6                                       ; preds = %5
  %empty_78 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.ap_fifo.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_78, 0
  %tmp_last_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_78, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %6, %5
  %p_Val2_s = phi i32 [ %tmp_data_V_1, %6 ], [ %axi_0_2, %5 ]
  %eol_2 = phi i1 [ %tmp_last_V_1, %6 ], [ %eol_1_mux, %5 ]
  %tmp_5 = trunc i32 %p_Val2_s to i8
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 8, i32 15)
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 16, i32 23)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V, i8 %tmp_5)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V, i8 %tmp_6)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V, i8 %tmp_4)
  %empty_79 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1816, i32 %tmp_2)
  store i1 false, i1* %sof_1, align 1
  br label %4

.preheader:                                       ; preds = %4, %7
  %axi_4_4 = phi i1 [ %tmp_last_V_2, %7 ], [ %eol_1, %4 ]
  %axi_0_4 = phi i32 [ %tmp_data_V_2, %7 ], [ %axi_0_2, %4 ]
  %eol_3 = phi i1 [ %tmp_last_V_2, %7 ], [ %eol, %4 ]
  br i1 %eol_3, label %8, label %7

; <label>:7                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @p_str1824) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str1824)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind
  %empty_80 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.ap_fifo.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_80, 0
  %tmp_last_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_80, 4
  %empty_81 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str1824, i32 %tmp_3)
  br label %.preheader

; <label>:8                                       ; preds = %.preheader
  %empty_82 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1815, i32 %tmp_1)
  br label %.preheader148

; <label>:9                                       ; preds = %.preheader148
  ret void
}

define internal fastcc void @"CvtColor<0,32,32,1080,1920>"(i12 %p_src_rows_V_read, i12 %p_src_cols_V_read, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V) {
._crit_edge.i46:
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_2_V, [8 x i8]* @str78, i32 0, i32 0, i32 0, [8 x i8]* @str78)
  %empty_83 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_1_V, [8 x i8]* @str75, i32 0, i32 0, i32 0, [8 x i8]* @str75)
  %empty_84 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_0_V, [8 x i8]* @str72, i32 0, i32 0, i32 0, [8 x i8]* @str72)
  %empty_85 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_2_V, [8 x i8]* @str69, i32 0, i32 0, i32 0, [8 x i8]* @str69)
  %empty_86 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_1_V, [8 x i8]* @str66, i32 0, i32 0, i32 0, [8 x i8]* @str66)
  %empty_87 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_0_V, [8 x i8]* @str63, i32 0, i32 0, i32 0, [8 x i8]* @str63)
  %p_src_cols_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_cols_V_read)
  %p_src_rows_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_rows_V_read)
  br label %0

; <label>:0                                       ; preds = %3, %._crit_edge.i46
  %i = phi i12 [ 0, %._crit_edge.i46 ], [ %i_1, %3 ]
  %exitcond8 = icmp eq i12 %i, %p_src_rows_V_read_1
  %i_1 = add i12 %i, 1
  br i1 %exitcond8, label %4, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1815) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1815)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str1805) nounwind
  br label %2

; <label>:2                                       ; preds = %"operator>>.exit", %1
  %j = phi i12 [ 0, %1 ], [ %j_1, %"operator>>.exit" ]
  %exitcond = icmp eq i12 %j, %p_src_cols_V_read_1
  %j_1 = add i12 %j, 1
  br i1 %exitcond, label %3, label %"operator>>.exit"

"operator>>.exit":                                ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1816) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1816)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind
  %tmp_14 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_0_V)
  %tmp_15 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_1_V)
  %tmp_10 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_2_V)
  %OP2_V_cast = zext i8 %tmp_10 to i27
  %p_Val2_s = mul i27 %OP2_V_cast, 239075
  %OP2_V_1_cast = zext i8 %tmp_15 to i29
  %p_Val2_1 = mul i29 %OP2_V_1_cast, 1231028
  %OP2_V_2_cast = zext i8 %tmp_14 to i28
  %p_Val2_2 = mul i28 %OP2_V_2_cast, 627048
  %tmp_cast = zext i27 %p_Val2_s to i28
  %p_Val2_3 = add i28 %p_Val2_2, %tmp_cast
  %tmp_8_cast = zext i28 %p_Val2_3 to i29
  %p_Val2_4 = add i29 %p_Val2_1, %tmp_8_cast
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i29.i32.i32(i29 %p_Val2_4, i32 21, i32 28)
  %p_Val2_5_cast = zext i8 %tmp_1 to i9
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i29.i32(i29 %p_Val2_4, i32 20)
  %tmp_11_cast = zext i1 %tmp_11 to i9
  %p_Val2_6 = add i9 %p_Val2_5_cast, %tmp_11_cast
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %p_Val2_6, i32 8)
  %tmp_13 = trunc i9 %p_Val2_6 to i8
  %tmp_9 = select i1 %tmp_12, i8 -1, i8 %tmp_13
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_0_V, i8 %tmp_9)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_1_V, i8 %tmp_9)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_2_V, i8 %tmp_9)
  %empty_88 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1816, i32 %tmp_s)
  br label %2

; <label>:3                                       ; preds = %2
  %empty_89 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1815, i32 %tmp)
  br label %0

; <label>:4                                       ; preds = %0
  ret void
}

define internal fastcc void @"Mat2AXIvideo<32,1080,1920,32>"(i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V, i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) {
  %tmp_user_V = alloca i1, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_2_V, [8 x i8]* @str78, i32 0, i32 0, i32 0, [8 x i8]* @str78)
  %empty_90 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_1_V, [8 x i8]* @str75, i32 0, i32 0, i32 0, [8 x i8]* @str75)
  %empty_91 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_0_V, [8 x i8]* @str72, i32 0, i32 0, i32 0, [8 x i8]* @str72)
  %empty_92 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_dest_V, [8 x i8]* @str53, i32 0, i32 0, i32 0, [8 x i8]* @str53)
  %empty_93 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_id_V, [8 x i8]* @str52, i32 0, i32 0, i32 0, [8 x i8]* @str52)
  %empty_94 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_last_V, [8 x i8]* @str51, i32 0, i32 0, i32 0, [8 x i8]* @str51)
  %empty_95 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_user_V, [8 x i8]* @str50, i32 0, i32 0, i32 0, [8 x i8]* @str50)
  %empty_96 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_strb_V, [8 x i8]* @str49, i32 0, i32 0, i32 0, [8 x i8]* @str49)
  %empty_97 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_keep_V, [8 x i8]* @str48, i32 0, i32 0, i32 0, [8 x i8]* @str48)
  %empty_98 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %AXI_video_strm_V_data_V, [8 x i8]* @str47, i32 0, i32 0, i32 0, [8 x i8]* @str47)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [1 x i8]* @p_str1805, [5 x i8]* @p_str1806, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [26 x i8]* @p_str1808)
  %img_cols_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_cols_V_read)
  %img_rows_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_rows_V_read)
  %tmp_cast = zext i12 %img_cols_V_read_2 to i13
  %op2_assign = add i13 %tmp_cast, -1
  store i1 true, i1* %tmp_user_V, align 1
  br label %1

; <label>:1                                       ; preds = %4, %0
  %p_s = phi i12 [ 0, %0 ], [ %i_V, %4 ]
  %exitcond3 = icmp eq i12 %p_s, %img_rows_V_read_2
  %i_V = add i12 %p_s, 1
  br i1 %exitcond3, label %5, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1815) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1815)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str1805) nounwind
  br label %3

; <label>:3                                       ; preds = %"operator>>.exit", %2
  %p_3 = phi i12 [ 0, %2 ], [ %j_V, %"operator>>.exit" ]
  %exitcond4 = icmp eq i12 %p_3, %img_cols_V_read_2
  %j_V = add i12 %p_3, 1
  br i1 %exitcond4, label %4, label %"operator>>.exit"

"operator>>.exit":                                ; preds = %3
  %tmp_user_V_load = load i1* %tmp_user_V, align 1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1816) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1816)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str1805) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str1805) nounwind
  %tmp_cast_99 = zext i12 %p_3 to i13
  %axi_last_V = icmp eq i13 %tmp_cast_99, %op2_assign
  %tmp_16 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V)
  %tmp_17 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V)
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V)
  %tmp_data_V = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 -1, i8 %tmp, i8 %tmp_17, i8 %tmp_16)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i32 %tmp_data_V, i4 -1, i4 undef, i1 %tmp_user_V_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_100 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1816, i32 %tmp_1)
  store i1 false, i1* %tmp_user_V, align 1
  br label %3

; <label>:4                                       ; preds = %3
  %empty_101 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1815, i32 %tmp_s)
  br label %1

; <label>:5                                       ; preds = %1
  ret void
}

define internal fastcc { i12, i12, i12, i12 } @init(i32 %p_rows, i32 %p_cols) {
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str1805, [10 x i8]* @p_str1809, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [24 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str1805, [10 x i8]* @p_str1809, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [24 x i8]* @p_str1810)
  %p_cols_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_cols)
  %p_rows_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_rows)
  %tmp = trunc i32 %p_rows_read to i12
  %tmp_18 = trunc i32 %p_cols_read to i12
  %mrv = insertvalue { i12, i12, i12, i12 } undef, i12 %tmp, 0
  %mrv_1 = insertvalue { i12, i12, i12, i12 } %mrv, i12 %tmp, 1
  %mrv_2 = insertvalue { i12, i12, i12, i12 } %mrv_1, i12 %tmp_18, 2
  %mrv_3 = insertvalue { i12, i12, i12, i12 } %mrv_2, i12 %tmp_18, 3
  ret { i12, i12, i12, i12 } %mrv_3
}

define internal fastcc { i12, i12 } @init.1(i32 %p_rows, i32 %p_cols) {
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str1805, [10 x i8]* @p_str1809, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [24 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str1805, [10 x i8]* @p_str1809, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [1 x i8]* @p_str1805, [24 x i8]* @p_str1810)
  %p_cols_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_cols)
  %p_rows_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_rows)
  %tmp = trunc i32 %p_rows_read to i12
  %tmp_19 = trunc i32 %p_cols_read to i12
  %mrv = insertvalue { i12, i12 } undef, i12 %tmp, 0
  %mrv_1 = insertvalue { i12, i12 } %mrv, i12 %tmp_19, 1
  ret { i12, i12 } %mrv_1
}

define weak i8 @_ssdm_op_PartSelect.i8.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_102 = trunc i29 %empty to i8
  ret i8 %empty_102
}

define weak i32 @_ssdm_op_Read.ap_stable.i32(i32) {
entry:
  ret i32 %0
}

define weak i12 @_ssdm_op_Read.ap_auto.i12(i12) {
entry:
  ret i12 %0
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32, i4, i4, i1, i1, i1, i1) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %7)
  %empty_103 = call i4 @_autotb_FifoWrite_i4(i4* %1, i4 %8)
  %empty_104 = call i4 @_autotb_FifoWrite_i4(i4* %2, i4 %9)
  %empty_105 = call i1 @_autotb_FifoWrite_i1(i1* %3, i1 %10)
  %empty_106 = call i1 @_autotb_FifoWrite_i1(i1* %4, i1 %11)
  %empty_107 = call i1 @_autotb_FifoWrite_i1(i1* %5, i1 %12)
  %empty_108 = call i1 @_autotb_FifoWrite_i1(i1* %6, i1 %13)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.ap_fifo.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  %empty_109 = call i4 @_autotb_FifoRead_i4(i4* %1)
  %empty_110 = call i4 @_autotb_FifoRead_i4(i4* %2)
  %empty_111 = call i1 @_autotb_FifoRead_i1(i1* %3)
  %empty_112 = call i1 @_autotb_FifoRead_i1(i1* %4)
  %empty_113 = call i1 @_autotb_FifoRead_i1(i1* %5)
  %empty_114 = call i1 @_autotb_FifoRead_i1(i1* %6)
  %mrv_0 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_109, 1
  %mrv2 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_110, 2
  %mrv3 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_111, 3
  %mrv4 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_112, 4
  %mrv5 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_113, 5
  %mrv6 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_114, 6
  ret { i32, i4, i4, i1, i1, i1, i1 } %mrv6
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i29.i32(i29, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i29
  %empty_115 = shl i29 1, %empty
  %empty_116 = and i29 %0, %empty_115
  %empty_117 = icmp ne i29 %empty_116, 0
  ret i1 %empty_117
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_118 = shl i9 1, %empty
  %empty_119 = and i9 %0, %empty_118
  %empty_120 = icmp ne i9 %empty_119, 0
  ret i1 %empty_120
}

declare i8 @_autotb_FifoRead_i8(i8*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i4 @_autotb_FifoWrite_i4(i4*, i4)

declare i1 @_autotb_FifoWrite_i1(i1*, i1)

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i32 @_autotb_FifoRead_i32(i32*)

declare i4 @_autotb_FifoRead_i4(i4*)

declare i1 @_autotb_FifoRead_i1(i1*)

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_121 = trunc i16 %empty to i8
  ret i8 %empty_121
}

define weak i16 @_ssdm_op_PartSet.i16.i16.i8.i32.i32(i16, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.set.i16.i8(i16 %0, i8 %1, i32 %2, i32 %3)
  ret i16 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_122 = trunc i24 %empty to i8
  ret i8 %empty_122
}

define weak i24 @_ssdm_op_PartSet.i24.i24.i8.i32.i32(i24, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.set.i24.i8(i24 %0, i8 %1, i32 %2, i32 %3)
  ret i24 %empty
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i8.i32.i32(i32, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i8(i32 %0, i8 %1, i32 %2, i32 %3)
  ret i32 %empty
}

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i16 @llvm.part.set.i16.i8(i16, i8, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i24 @llvm.part.set.i24.i8(i24, i8, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i8(i32, i8, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"input.V.data.V", metadata !5, metadata !"uint32"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 3, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"input.V.keep.V", metadata !5, metadata !"uint4"}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 3, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"input.V.strb.V", metadata !5, metadata !"uint4"}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"input.V.user.V", metadata !5, metadata !"uint1"}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"input.V.last.V", metadata !5, metadata !"uint1"}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"input.V.id.V", metadata !5, metadata !"uint1"}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"input.V.dest.V", metadata !5, metadata !"uint1"}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"output.V.data.V", metadata !5, metadata !"uint32"}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 3, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"output.V.keep.V", metadata !5, metadata !"uint4"}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 3, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"output.V.strb.V", metadata !5, metadata !"uint4"}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 0, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"output.V.user.V", metadata !5, metadata !"uint1"}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"output.V.last.V", metadata !5, metadata !"uint1"}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"output.V.id.V", metadata !5, metadata !"uint1"}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"output.V.dest.V", metadata !5, metadata !"uint1"}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"rows", metadata !67, metadata !"int"}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 0, i32 0}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 31, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"cols", metadata !67, metadata !"int"}
