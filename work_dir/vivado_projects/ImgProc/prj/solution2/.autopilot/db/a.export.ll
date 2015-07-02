; ModuleID = '/ise_local2/umair_temp/vivado_projects/ImgProc/prj/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i4, i4, i1, i1, i1, i1 }
%"hls::GetMaxDepth_ret" = type { double, double }
%"hls::Mat<1080, 1920, 16>::init.1_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 16>::init.2_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 16>::init.3_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 16>::init_ret" = type { i12, i12, i12, i12 }
%"hls::getStructuringElement<unsigned char, int, int, 3, 3>_ret" = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%"struct.ap_axiu<32,1,1,1>" = type { %"struct.ap_fixed<32,11,SC_RND,SC_WRAP,0>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_fixed<12,12,SC_RND,SC_WRAP,0>" = type { %"struct.ap_fixed_base<12,12,true,SC_RND,SC_WRAP,0>" }
%"struct.ap_fixed<32,11,SC_RND,SC_WRAP,0>" = type { %"struct.ap_fixed_base<32,11,true,SC_RND,SC_WRAP,0>" }
%"struct.ap_fixed_base<12,12,true,SC_RND,SC_WRAP,0>" = type { %"struct.ssdm_int<12,false>" }
%"struct.ap_fixed_base<32,11,true,SC_RND,SC_WRAP,0>" = type { %"struct.ssdm_int<32,false>" }
%"struct.ap_int_base<1,false,true>" = type { %"struct.ssdm_int<1,false>" }
%"struct.ap_int_base<4,false,true>" = type { %"struct.ssdm_int<4,false>" }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1,false,true>" }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4,false,true>" }
%"struct.hls::Mat<1080,1920,16>" = type { %"struct.ap_fixed<12,12,SC_RND,SC_WRAP,0>", %"struct.ap_fixed<12,12,SC_RND,SC_WRAP,0>", [3 x %"struct.hls::stream<unsigned char>"] }
%"struct.hls::Point_<int>" = type { i32, i32 }
%"struct.hls::Window<3,3,int>" = type { [3 x [3 x i32]] }
%"struct.hls::Window<3,3,unsigned char>" = type { [3 x [3 x i8]] }
%"struct.hls::erode_kernel" = type <{ i8 }>
%"struct.hls::stream<ap_axiu<32, 1, 1, 1> >" = type { %"struct.ap_axiu<32,1,1,1>" }
%"struct.hls::stream<unsigned char>" = type { i8 }
%"struct.ssdm_int<1,false>" = type { i1 }
%"struct.ssdm_int<12,false>" = type { i12 }
%"struct.ssdm_int<32,false>" = type { i32 }
%"struct.ssdm_int<4,false>" = type { i4 }

@p_str20 = private constant [1 x i8] zeroinitializer, align 1 ; <[1 x i8]*> [#uses=76]
@p_str25 = private constant [13 x i8] c"hls_label_17\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str26 = private constant [13 x i8] c"hls_label_18\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str27 = private constant [13 x i8] c"hls_label_19\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str28 = private constant [13 x i8] c"hls_label_20\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str30 = private constant [13 x i8] c"hls_label_75\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str31 = private constant [13 x i8] c"hls_label_76\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str32 = private constant [13 x i8] c"hls_label_21\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str33 = private constant [13 x i8] c"hls_label_22\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str34 = private constant [13 x i8] c"hls_label_72\00", align 1 ; <[13 x i8]*> [#uses=4]
@p_str35 = private constant [13 x i8] c"hls_label_73\00", align 1 ; <[13 x i8]*> [#uses=4]
@p_str41 = private constant [5 x i8] c"AXIS\00", align 1 ; <[5 x i8]*> [#uses=4]
@p_str42 = private constant [25 x i8] c"-bus_bundle INPUT_STREAM\00", align 1 ; <[25 x i8]*> [#uses=2]
@p_str43 = private constant [26 x i8] c"-bus_bundle OUTPUT_STREAM\00", align 1 ; <[26 x i8]*> [#uses=2]
@p_str44 = private constant [10 x i8] c"AXI_SLAVE\00", align 1 ; <[10 x i8]*> [#uses=11]
@p_str45 = private constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1 ; <[24 x i8]*> [#uses=11]
@p_str46 = private constant [10 x i8] c"ap_stable\00", align 1 ; <[10 x i8]*> [#uses=2]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I__Z5SobelRN3hls3MatILi1080ELi1920ELi16EEES2_ii] ; <[1 x void ()*]*> [#uses=0]
@llvm_global_dtors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_dtors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__D__Z5SobelRN3hls3MatILi1080ELi1920ELi16EEES2_ii] ; <[1 x void ()*]*> [#uses=0]
@p_str47 = internal constant [59 x i8] c"hls::LineBuffer<3, 1920, unsigned char>::LineBuffer.region\00" ; <[59 x i8]*> [#uses=2]
@p_str48 = internal constant [59 x i8] c"hls::LineBuffer<3, 1920, unsigned char>::LineBuffer.region\00" ; <[59 x i8]*> [#uses=2]
@p_str49 = internal constant [56 x i8] c"hls::LineBuffer<1, 3, unsigned char>::LineBuffer.region\00" ; <[56 x i8]*> [#uses=2]
@p_str50 = internal constant [56 x i8] c"hls::LineBuffer<1, 3, unsigned char>::LineBuffer.region\00" ; <[56 x i8]*> [#uses=2]
@p_str51 = internal constant [56 x i8] c"hls::LineBuffer<3, 1, unsigned char>::LineBuffer.region\00" ; <[56 x i8]*> [#uses=2]
@p_str52 = internal constant [56 x i8] c"hls::LineBuffer<3, 1, unsigned char>::LineBuffer.region\00" ; <[56 x i8]*> [#uses=2]
@str = internal constant [8 x i8] c"ap_fifo\00"   ; <[8 x i8]*> [#uses=4]
@str65 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str66 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str67 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str68 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str69 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str70 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str71 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str72 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str73 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str74 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str75 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str76 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str77 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str135 = internal constant [22 x i8] c"img_0.data_stream.V.0\00" ; <[22 x i8]*> [#uses=1]
@str136 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str137 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str138 = internal constant [22 x i8] c"img_0.data_stream.V.1\00" ; <[22 x i8]*> [#uses=1]
@str139 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str140 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str141 = internal constant [22 x i8] c"img_0.data_stream.V.2\00" ; <[22 x i8]*> [#uses=1]
@str142 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str143 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str144 = internal constant [22 x i8] c"img_1.data_stream.V.0\00" ; <[22 x i8]*> [#uses=1]
@str145 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str146 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=8]
@str147 = internal constant [22 x i8] c"img_1.data_stream.V.1\00" ; <[22 x i8]*> [#uses=1]
@str148 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str149 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=8]
@str150 = internal constant [22 x i8] c"img_1.data_stream.V.2\00" ; <[22 x i8]*> [#uses=1]
@str151 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str152 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=8]
@str153 = internal constant [22 x i8] c"img_2.data_stream.V.0\00" ; <[22 x i8]*> [#uses=1]
@str154 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str155 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=10]
@str156 = internal constant [22 x i8] c"img_2.data_stream.V.1\00" ; <[22 x i8]*> [#uses=1]
@str157 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str158 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=10]
@str159 = internal constant [22 x i8] c"img_2.data_stream.V.2\00" ; <[22 x i8]*> [#uses=1]
@str160 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str161 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=10]
@str162 = internal constant [22 x i8] c"img_3.data_stream.V.0\00" ; <[22 x i8]*> [#uses=1]
@str163 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str164 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=8]
@str165 = internal constant [22 x i8] c"img_3.data_stream.V.1\00" ; <[22 x i8]*> [#uses=1]
@str166 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str167 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=8]
@str168 = internal constant [22 x i8] c"img_3.data_stream.V.2\00" ; <[22 x i8]*> [#uses=1]
@str169 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str170 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=8]

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

declare void @_ssdm_SpecDependence(...) nounwind

define void @image_processor(i32* %input_V_data_V, i4* %input_V_keep_V, i4* %input_V_strb_V, i1* %input_V_user_V, i1* %input_V_last_V, i1* %input_V_id_V, i1* %input_V_dest_V, i32* %output_V_data_V, i4* %output_V_keep_V, i4* %output_V_strb_V, i1* %output_V_user_V, i1* %output_V_last_V, i1* %output_V_id_V, i1* %output_V_dest_V, i32 %rows, i32 %cols) {
entry:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str20) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_dest_V, [8 x i8]* @str77, i32 0, i32 0, [8 x i8]* @str77) ; <i32> [#uses=0]
  %empty_38 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_id_V, [8 x i8]* @str76, i32 0, i32 0, [8 x i8]* @str76) ; <i32> [#uses=0]
  %empty_39 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_last_V, [8 x i8]* @str75, i32 0, i32 0, [8 x i8]* @str75) ; <i32> [#uses=0]
  %empty_40 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_user_V, [8 x i8]* @str74, i32 0, i32 0, [8 x i8]* @str74) ; <i32> [#uses=0]
  %empty_41 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %output_V_strb_V, [8 x i8]* @str73, i32 0, i32 0, [8 x i8]* @str73) ; <i32> [#uses=0]
  %empty_42 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %output_V_keep_V, [8 x i8]* @str72, i32 0, i32 0, [8 x i8]* @str72) ; <i32> [#uses=0]
  %empty_43 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %output_V_data_V, [8 x i8]* @str71, i32 0, i32 0, [8 x i8]* @str71) ; <i32> [#uses=0]
  %empty_44 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_dest_V, [8 x i8]* @str70, i32 0, i32 0, [8 x i8]* @str70) ; <i32> [#uses=0]
  %empty_45 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_id_V, [8 x i8]* @str69, i32 0, i32 0, [8 x i8]* @str69) ; <i32> [#uses=0]
  %empty_46 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_last_V, [8 x i8]* @str68, i32 0, i32 0, [8 x i8]* @str68) ; <i32> [#uses=0]
  %empty_47 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_user_V, [8 x i8]* @str67, i32 0, i32 0, [8 x i8]* @str67) ; <i32> [#uses=0]
  %empty_48 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %input_V_strb_V, [8 x i8]* @str66, i32 0, i32 0, [8 x i8]* @str66) ; <i32> [#uses=0]
  %empty_49 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %input_V_keep_V, [8 x i8]* @str65, i32 0, i32 0, [8 x i8]* @str65) ; <i32> [#uses=0]
  %empty_50 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %input_V_data_V, [8 x i8]* @str, i32 0, i32 0, [8 x i8]* @str) ; <i32> [#uses=0]
  %cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %cols) ; <i32> [#uses=4]
  %rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %rows) ; <i32> [#uses=4]
  %img_0_data_stream_0_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_51 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str135, i32 1, [1 x i8]* @str136, [1 x i8]* @str136, i32 1, i32 1, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_0_V) ; <i32> [#uses=0]
  %empty_52 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_0_data_stream_0_V, [8 x i8]* @str137, i32 0, i32 0, [8 x i8]* @str137) ; <i32> [#uses=0]
  %img_0_data_stream_1_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_53 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str138, i32 1, [1 x i8]* @str139, [1 x i8]* @str139, i32 1, i32 1, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_1_V) ; <i32> [#uses=0]
  %empty_54 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_0_data_stream_1_V, [8 x i8]* @str140, i32 0, i32 0, [8 x i8]* @str140) ; <i32> [#uses=0]
  %img_0_data_stream_2_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_55 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str141, i32 1, [1 x i8]* @str142, [1 x i8]* @str142, i32 1, i32 1, i8* %img_0_data_stream_2_V, i8* %img_0_data_stream_2_V) ; <i32> [#uses=0]
  %empty_56 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_0_data_stream_2_V, [8 x i8]* @str143, i32 0, i32 0, [8 x i8]* @str143) ; <i32> [#uses=0]
  %img_1_data_stream_0_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_57 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str144, i32 1, [1 x i8]* @str145, [1 x i8]* @str145, i32 1, i32 1, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_0_V) ; <i32> [#uses=0]
  %empty_58 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_1_data_stream_0_V, [8 x i8]* @str146, i32 0, i32 0, [8 x i8]* @str146) ; <i32> [#uses=0]
  %img_1_data_stream_1_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_59 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str147, i32 1, [1 x i8]* @str148, [1 x i8]* @str148, i32 1, i32 1, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_1_V) ; <i32> [#uses=0]
  %empty_60 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_1_data_stream_1_V, [8 x i8]* @str149, i32 0, i32 0, [8 x i8]* @str149) ; <i32> [#uses=0]
  %img_1_data_stream_2_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_61 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str150, i32 1, [1 x i8]* @str151, [1 x i8]* @str151, i32 1, i32 1, i8* %img_1_data_stream_2_V, i8* %img_1_data_stream_2_V) ; <i32> [#uses=0]
  %empty_62 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_1_data_stream_2_V, [8 x i8]* @str152, i32 0, i32 0, [8 x i8]* @str152) ; <i32> [#uses=0]
  %img_2_data_stream_0_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_63 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str153, i32 1, [1 x i8]* @str154, [1 x i8]* @str154, i32 1, i32 1, i8* %img_2_data_stream_0_V, i8* %img_2_data_stream_0_V) ; <i32> [#uses=0]
  %empty_64 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_2_data_stream_0_V, [8 x i8]* @str155, i32 0, i32 0, [8 x i8]* @str155) ; <i32> [#uses=0]
  %img_2_data_stream_1_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_65 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str156, i32 1, [1 x i8]* @str157, [1 x i8]* @str157, i32 1, i32 1, i8* %img_2_data_stream_1_V, i8* %img_2_data_stream_1_V) ; <i32> [#uses=0]
  %empty_66 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_2_data_stream_1_V, [8 x i8]* @str158, i32 0, i32 0, [8 x i8]* @str158) ; <i32> [#uses=0]
  %img_2_data_stream_2_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_67 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str159, i32 1, [1 x i8]* @str160, [1 x i8]* @str160, i32 1, i32 1, i8* %img_2_data_stream_2_V, i8* %img_2_data_stream_2_V) ; <i32> [#uses=0]
  %empty_68 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_2_data_stream_2_V, [8 x i8]* @str161, i32 0, i32 0, [8 x i8]* @str161) ; <i32> [#uses=0]
  %img_3_data_stream_0_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_69 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str162, i32 1, [1 x i8]* @str163, [1 x i8]* @str163, i32 1, i32 1, i8* %img_3_data_stream_0_V, i8* %img_3_data_stream_0_V) ; <i32> [#uses=0]
  %empty_70 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_3_data_stream_0_V, [8 x i8]* @str164, i32 0, i32 0, [8 x i8]* @str164) ; <i32> [#uses=0]
  %img_3_data_stream_1_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_71 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str165, i32 1, [1 x i8]* @str166, [1 x i8]* @str166, i32 1, i32 1, i8* %img_3_data_stream_1_V, i8* %img_3_data_stream_1_V) ; <i32> [#uses=0]
  %empty_72 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_3_data_stream_1_V, [8 x i8]* @str167, i32 0, i32 0, [8 x i8]* @str167) ; <i32> [#uses=0]
  %img_3_data_stream_2_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_73 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str168, i32 1, [1 x i8]* @str169, [1 x i8]* @str169, i32 1, i32 1, i8* %img_3_data_stream_2_V, i8* %img_3_data_stream_2_V) ; <i32> [#uses=0]
  %empty_74 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_3_data_stream_2_V, [8 x i8]* @str170, i32 0, i32 0, [8 x i8]* @str170) ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %input_V_data_V, i4* %input_V_keep_V, i4* %input_V_strb_V, i1* %input_V_user_V, i1* %input_V_last_V, i1* %input_V_id_V, i1* %input_V_dest_V, [1 x i8]* @p_str20, [5 x i8]* @p_str41, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [25 x i8]* @p_str42)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %output_V_data_V, i4* %output_V_keep_V, i4* %output_V_strb_V, i1* %output_V_user_V, i1* %output_V_last_V, i1* %output_V_id_V, i1* %output_V_dest_V, [1 x i8]* @p_str20, [5 x i8]* @p_str41, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [26 x i8]* @p_str43)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str20, [10 x i8]* @p_str44, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str45)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str20, [10 x i8]* @p_str44, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str45)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str20, [10 x i8]* @p_str44, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str45)
  call void (...)* @_ssdm_op_SpecWire(i32 %rows, [10 x i8]* @p_str46, i32 0, i32 0, [1 x i8]* @p_str20) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %cols, [10 x i8]* @p_str46, i32 0, i32 0, [1 x i8]* @p_str20) nounwind
  %call_ret = call fastcc %"hls::Mat<1080, 1920, 16>::init_ret" @init(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=4]
  %img_0_rows_V = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret, 0 ; <i12> [#uses=1]
  %img_0_rows_V_channel = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret, 1 ; <i12> [#uses=1]
  %img_0_cols_V = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret, 2 ; <i12> [#uses=1]
  %img_0_cols_V_channel = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret, 3 ; <i12> [#uses=1]
  %call_ret1 = call fastcc %"hls::Mat<1080, 1920, 16>::init.1_ret" @init.1(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 16>::init.1_ret"> [#uses=2]
  %img_1_rows_V = extractvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" %call_ret1, 0 ; <i12> [#uses=1]
  %img_1_cols_V = extractvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" %call_ret1, 1 ; <i12> [#uses=1]
  %call_ret2 = call fastcc %"hls::Mat<1080, 1920, 16>::init.1_ret" @init.2(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 16>::init.1_ret"> [#uses=2]
  %img_2_rows_V = extractvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" %call_ret2, 0 ; <i12> [#uses=1]
  %img_2_cols_V = extractvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" %call_ret2, 1 ; <i12> [#uses=1]
  %call_ret3 = call fastcc %"hls::Mat<1080, 1920, 16>::init.1_ret" @init.3(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 16>::init.1_ret"> [#uses=2]
  %img_3_rows_V = extractvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" %call_ret3, 0 ; <i12> [#uses=1]
  %img_3_cols_V = extractvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" %call_ret3, 1 ; <i12> [#uses=1]
  call fastcc void @"AXIvideo2Mat<32,1080,1920,16>"(i32* %input_V_data_V, i4* %input_V_keep_V, i4* %input_V_strb_V, i1* %input_V_user_V, i1* %input_V_last_V, i1* %input_V_id_V, i1* %input_V_dest_V, i12 %img_0_rows_V, i12 %img_0_cols_V, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V)
  call fastcc void @"CvtColor<0,16,16,1080,1920>"(i12 %img_0_rows_V_channel, i12 %img_0_cols_V_channel, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V)
  call fastcc void @Sobel(i12 %img_1_rows_V, i12 %img_1_cols_V, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V, i8* %img_2_data_stream_0_V, i8* %img_2_data_stream_1_V, i8* %img_2_data_stream_2_V)
  call fastcc void @"Erode<16,16,1080,1920>"(i12 %img_2_rows_V, i12 %img_2_cols_V, i8* %img_2_data_stream_0_V, i8* %img_2_data_stream_1_V, i8* %img_2_data_stream_2_V, i8* %img_3_data_stream_0_V, i8* %img_3_data_stream_1_V, i8* %img_3_data_stream_2_V)
  call fastcc void @"Mat2AXIvideo<32,1080,1920,16>"(i12 %img_3_rows_V, i12 %img_3_cols_V, i8* %img_3_data_stream_0_V, i8* %img_3_data_stream_1_V, i8* %img_3_data_stream_2_V, i32* %output_V_data_V, i4* %output_V_keep_V, i4* %output_V_strb_V, i1* %output_V_user_V, i1* %output_V_last_V, i1* %output_V_id_V, i1* %output_V_dest_V)
  ret void
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @_GLOBAL__I__Z5SobelRN3hls3MatILi1080ELi1920ELi16EEES2_ii() nounwind

declare void @_GLOBAL__D__Z5SobelRN3hls3MatILi1080ELi1920ELi16EEES2_ii() nounwind

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

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; <i32> [#uses=1]
  %empty_75 = trunc i32 %empty to i8              ; <i8> [#uses=1]
  ret i8 %empty_75
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; <i16> [#uses=1]
  %empty_76 = zext i8 %3 to i16                   ; <i16> [#uses=2]
  %empty_77 = trunc i16 %empty to i8              ; <i8> [#uses=1]
  %empty_78 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %empty_76, i32 8, i32 15) ; <i8> [#uses=1]
  %empty_79 = or i8 %empty_77, %empty_78          ; <i8> [#uses=1]
  %empty_80 = call i16 @_ssdm_op_PartSet.i16.i16.i8.i32.i32(i16 %empty_76, i8 %empty_79, i32 8, i32 15) ; <i16> [#uses=1]
  %empty_81 = zext i8 %1 to i24                   ; <i24> [#uses=1]
  %empty_82 = zext i16 %empty_80 to i24           ; <i24> [#uses=2]
  %empty_83 = trunc i24 %empty_81 to i8           ; <i8> [#uses=1]
  %empty_84 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %empty_82, i32 16, i32 23) ; <i8> [#uses=1]
  %empty_85 = or i8 %empty_83, %empty_84          ; <i8> [#uses=1]
  %empty_86 = call i24 @_ssdm_op_PartSet.i24.i24.i8.i32.i32(i24 %empty_82, i8 %empty_85, i32 16, i32 23) ; <i24> [#uses=1]
  %empty_87 = zext i8 %0 to i32                   ; <i32> [#uses=1]
  %empty_88 = zext i24 %empty_86 to i32           ; <i32> [#uses=2]
  %empty_89 = trunc i32 %empty_87 to i8           ; <i8> [#uses=1]
  %empty_90 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %empty_88, i32 24, i32 31) ; <i8> [#uses=1]
  %empty_91 = or i8 %empty_89, %empty_90          ; <i8> [#uses=1]
  %empty_92 = call i32 @_ssdm_op_PartSet.i32.i32.i8.i32.i32(i32 %empty_88, i8 %empty_91, i32 24, i32 31) ; <i32> [#uses=1]
  ret i32 %empty_92
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define internal fastcc void @"filter_opr<filter2d_kernel,16,16,int,int,1080,1920,3,3>"(i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V, i12 %rows, i12 %cols) {
entry_ifconv:
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_2_V, [8 x i8]* @str161, i32 0, i32 0, [8 x i8]* @str161) ; <i32> [#uses=0]
  %empty_93 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_1_V, [8 x i8]* @str158, i32 0, i32 0, [8 x i8]* @str158) ; <i32> [#uses=0]
  %empty_94 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_0_V, [8 x i8]* @str155, i32 0, i32 0, [8 x i8]* @str155) ; <i32> [#uses=0]
  %empty_95 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_2_V, [8 x i8]* @str152, i32 0, i32 0, [8 x i8]* @str152) ; <i32> [#uses=0]
  %empty_96 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_1_V, [8 x i8]* @str149, i32 0, i32 0, [8 x i8]* @str149) ; <i32> [#uses=0]
  %empty_97 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_0_V, [8 x i8]* @str146, i32 0, i32 0, [8 x i8]* @str146) ; <i32> [#uses=0]
  %cols_read = call i12 @_ssdm_op_WireRead.i12(i12 %cols) ; <i12> [#uses=5]
  %rows_read = call i12 @_ssdm_op_WireRead.i12(i12 %rows) ; <i12> [#uses=4]
  %k_buf_0_val_0 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=3]
  %k_buf_0_val_1 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %k_buf_0_val_2 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %k_buf_1_val_0 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=3]
  %k_buf_1_val_1 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %k_buf_1_val_2 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %k_buf_2_val_0 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=3]
  %k_buf_2_val_1 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %k_buf_2_val_2 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %right_border_buf_0_val_0_0 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_0_val_0_1 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_0_val_0_2 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_1_val_0_0 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_1_val_0_1 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_1_val_0_2 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_2_val_0_0 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_2_val_0_1 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_2_val_0_2 = alloca i8, align 1 ; <i8*> [#uses=3]
  %col_buf_val_0_0_0 = alloca i8, align 1         ; <i8*> [#uses=1]
  %col_buf_val_1_0_0 = alloca i8, align 1         ; <i8*> [#uses=1]
  %col_buf_val_2_0_0 = alloca i8, align 1         ; <i8*> [#uses=1]
  br label %bb4

bb3:                                              ; preds = %bb4
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([59 x i8]* @p_str47) nounwind ; <i32> [#uses=1]
  switch i2 %p_0202_rec, label %branch2 [
    i2 0, label %branch0
    i2 1, label %branch1
  ]

bb3304:                                           ; preds = %branch2, %branch1, %branch0
  switch i2 %p_0202_rec, label %branch5 [
    i2 0, label %branch3
    i2 1, label %branch4
  ]

bb3304305:                                        ; preds = %branch5, %branch4, %branch3
  %rend484 = call i32 (...)* @_ssdm_op_SpecRegionEnd([59 x i8]* @p_str47, i32 %rbegin2) nounwind ; <i32> [#uses=0]
  br label %bb4

bb4:                                              ; preds = %bb3304305, %entry_ifconv
  %p_0202_rec = phi i2 [ %p_rec5, %bb3304305 ], [ 0, %entry_ifconv ] ; <i2> [#uses=4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %exitcond8 = icmp eq i2 %p_0202_rec, -1         ; <i1> [#uses=1]
  %p_rec5 = add i2 %p_0202_rec, 1                 ; <i2> [#uses=1]
  br i1 %exitcond8, label %bb7, label %bb3

bb6:                                              ; preds = %bb7
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([56 x i8]* @p_str49) nounwind ; <i32> [#uses=1]
  switch i2 %p_0206_rec, label %branch8 [
    i2 0, label %branch6
    i2 1, label %branch7
  ]

bb6345:                                           ; preds = %branch8, %branch7, %branch6
  switch i2 %p_0206_rec, label %branch11 [
    i2 0, label %branch9
    i2 1, label %branch10
  ]

bb6345346:                                        ; preds = %branch11, %branch10, %branch9
  %rend486 = call i32 (...)* @_ssdm_op_SpecRegionEnd([56 x i8]* @p_str49, i32 %rbegin3) nounwind ; <i32> [#uses=0]
  br label %bb7

bb7:                                              ; preds = %bb4, %bb6345346
  %p_0206_rec = phi i2 [ %p_rec6, %bb6345346 ], [ 0, %bb4 ] ; <i2> [#uses=4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %exitcond7 = icmp eq i2 %p_0206_rec, -1         ; <i1> [#uses=1]
  %p_rec6 = add i2 %p_0206_rec, 1                 ; <i2> [#uses=1]
  br i1 %exitcond7, label %bb10, label %bb6

bb9:                                              ; preds = %bb10
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([56 x i8]* @p_str51) nounwind ; <i32> [#uses=1]
  switch i2 %p_0210_rec, label %branch14 [
    i2 0, label %branch12
    i2 1, label %branch13
  ]

bb9470:                                           ; preds = %branch14, %branch13, %branch12
  switch i2 %p_0210_rec, label %branch17 [
    i2 0, label %branch15
    i2 1, label %branch16
  ]

bb9470471:                                        ; preds = %branch17, %branch16, %branch15
  %rend488 = call i32 (...)* @_ssdm_op_SpecRegionEnd([56 x i8]* @p_str51, i32 %rbegin4) nounwind ; <i32> [#uses=0]
  br label %bb10

bb10:                                             ; preds = %bb7, %bb9470471
  %p_0210_rec = phi i2 [ %p_rec, %bb9470471 ], [ 0, %bb7 ] ; <i2> [#uses=4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %exitcond6 = icmp eq i2 %p_0210_rec, -1         ; <i1> [#uses=1]
  %p_rec = add i2 %p_0210_rec, 1                  ; <i2> [#uses=1]
  br i1 %exitcond6, label %bb11, label %bb9

bb11:                                             ; preds = %bb10
  %src_kernel_win_0_val_0_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_0_val_0_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_2_val_1_0_1 = alloca i8         ; <i8*> [#uses=7]
  %src_kernel_win_0_val_1_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_0_val_1_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_2_val_0_0_1 = alloca i8         ; <i8*> [#uses=7]
  %src_kernel_win_0_val_2_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_0_val_2_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_1_val_1_0_1 = alloca i8         ; <i8*> [#uses=7]
  %src_kernel_win_1_val_0_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_1_val_0_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_1_val_0_0_1 = alloca i8         ; <i8*> [#uses=5]
  %src_kernel_win_1_val_2_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_1_val_1_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_1_val_1_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_0_val_1_0_1 = alloca i8         ; <i8*> [#uses=5]
  %src_kernel_win_1_val_2_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_0_val_0_0_1 = alloca i8         ; <i8*> [#uses=5]
  %src_kernel_win_2_val_0_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_2_val_0_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_2_val_2_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_2_val_2_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_2_val_1_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_2_val_1_1 = alloca i8           ; <i8*> [#uses=2]
  %rows_cast1 = zext i12 %rows_read to i13        ; <i13> [#uses=5]
  %heightloop = add i13 %rows_cast1, 5            ; <i13> [#uses=1]
  %heightloop_cast63_cast = zext i13 %heightloop to i14 ; <i14> [#uses=3]
  %cols_cast1 = zext i12 %cols_read to i13        ; <i13> [#uses=4]
  %widthloop = add i13 %cols_cast1, 2             ; <i13> [#uses=2]
  %rows_cast = zext i12 %rows_read to i14         ; <i14> [#uses=3]
  %ref = add i13 %rows_cast1, -1                  ; <i13> [#uses=3]
  %cols_cast2 = zext i12 %cols_read to i14        ; <i14> [#uses=7]
  %tmp_s = add i13 %cols_cast1, -1                ; <i13> [#uses=1]
  %tmp_150_cast_cast_cast = sext i13 %tmp_s to i15 ; <i15> [#uses=6]
  %tmp = trunc i12 %cols_read to i2               ; <i2> [#uses=1]
  %tmp_1 = add i13 %cols_cast1, -3                ; <i13> [#uses=3]
  %tmp_8 = icmp eq i12 %cols_read, 1              ; <i1> [#uses=2]
  %tmp_9 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %cols_read, i1 false) ; <i13> [#uses=1]
  %tmp_164_0_cast_cast = zext i13 %tmp_9 to i15   ; <i15> [#uses=1]
  %tmp_10 = icmp eq i12 %rows_read, 1             ; <i1> [#uses=6]
  %tmp_11 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %rows_read, i1 false) ; <i13> [#uses=1]
  %tmp_198_0_0_cast_cast_cast = zext i13 %tmp_11 to i14 ; <i14> [#uses=3]
  %tmp_12 = trunc i13 %ref to i2                  ; <i2> [#uses=1]
  %tmp_13 = xor i2 %tmp, -1                       ; <i2> [#uses=9]
  br label %bb106

bb12:                                             ; preds = %bb106
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str34) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 1080, i64 0)
  %ult = icmp ult i14 %tmp7_cast, %heightloop_cast63_cast ; <i1> [#uses=1]
  %rev1 = xor i1 %ult, true                       ; <i1> [#uses=1]
  %ImagLoc_y = add i13 %tmp7_cast1, -4            ; <i13> [#uses=10]
  %ImagLoc_y_0_0_cast59_cast_cast3_cast = zext i13 %ImagLoc_y to i14 ; <i14> [#uses=1]
  %ImagLoc_y_0_0_cast_cast = sext i13 %ImagLoc_y to i14 ; <i14> [#uses=1]
  %tmp_170_not = icmp sgt i13 %ImagLoc_y, -2      ; <i1> [#uses=2]
  %tr1 = call i12 @_ssdm_op_PartSelect.i12.i13.i32.i32(i13 %ImagLoc_y, i32 1, i32 12) ; <i12> [#uses=1]
  %icmp1 = icmp slt i12 %tr1, 1                   ; <i1> [#uses=2]
  %or_cond_98 = and i1 %icmp1, %tmp_170_not       ; <i1> [#uses=1]
  %tmp_14 = icmp slt i13 %ImagLoc_y, %ref         ; <i1> [#uses=1]
  %tmp_15 = icmp ult i13 %ImagLoc_y, %rows_cast1  ; <i1> [#uses=3]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %ImagLoc_y, i32 12) ; <i1> [#uses=1]
  %p_assign_5 = select i1 %tmp_16, i13 %p_assign_4, i13 %ImagLoc_y ; <i13> [#uses=3]
  %p_assign_23_0_0_cast53_cast = sext i13 %p_assign_5 to i14 ; <i14> [#uses=1]
  %tmp_17 = icmp slt i14 %p_assign_23_0_0_cast53_cast, %rows_cast ; <i1> [#uses=1]
  %tmp_19 = xor i13 %p_assign_5, -1               ; <i13> [#uses=1]
  %tmp_199_0_0_cast_cast61_cast = zext i13 %tmp_19 to i14 ; <i14> [#uses=1]
  %p_assign_6 = add i14 %tmp_198_0_0_cast_cast_cast, %tmp_199_0_0_cast_cast61_cast ; <i14> [#uses=1]
  %sel_tmp3 = xor i1 %tmp_15, true                ; <i1> [#uses=1]
  %sel_tmp4 = and i1 %tmp_10, %sel_tmp3           ; <i1> [#uses=1]
  %sel_tmp19_demorgan = or i1 %tmp_15, %tmp_10    ; <i1> [#uses=1]
  %sel_tmp8 = xor i1 %sel_tmp19_demorgan, true    ; <i1> [#uses=1]
  %sel_tmp9 = and i1 %tmp_17, %sel_tmp8           ; <i1> [#uses=2]
  %newSel = select i1 %sel_tmp9, i13 %p_assign_5, i13 0 ; <i13> [#uses=1]
  %newSel_cast_cast = zext i13 %newSel to i14     ; <i14> [#uses=1]
  %or_cond = or i1 %sel_tmp9, %sel_tmp4           ; <i1> [#uses=1]
  %newSel3 = select i1 %tmp_15, i14 %ImagLoc_y_0_0_cast59_cast_cast3_cast, i14 %p_assign_6 ; <i14> [#uses=1]
  %newSel5 = select i1 %or_cond, i14 %newSel_cast_cast, i14 %newSel3 ; <i14> [#uses=1]
  %tmp_7 = select i1 %tmp_14, i2 -2, i2 %tmp_12   ; <i2> [#uses=5]
  %tmp_20 = trunc i14 %newSel5 to i2              ; <i2> [#uses=2]
  %locy_0_0_t = sub i2 %tmp_7, %tmp_20            ; <i2> [#uses=1]
  %sel_tmp10 = icmp eq i2 %tmp_7, %tmp_20         ; <i1> [#uses=3]
  %sel_tmp12 = icmp eq i2 %locy_0_0_t, 1          ; <i1> [#uses=3]
  %p_assign_7 = add i13 %p_assign_4, 1            ; <i13> [#uses=1]
  %ImagLoc_y_1 = add i13 %tmp7_cast1, -5          ; <i13> [#uses=4]
  %curp_y_assign_0_0_1_cast55_cast158_cast = zext i13 %ImagLoc_y_1 to i14 ; <i14> [#uses=1]
  %tmp_182_0_1 = icmp ult i13 %ImagLoc_y_1, %rows_cast1 ; <i1> [#uses=3]
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %ImagLoc_y_1, i32 12) ; <i1> [#uses=1]
  %p_assign_8 = select i1 %tmp_21, i13 %p_assign_7, i13 %ImagLoc_y_1 ; <i13> [#uses=3]
  %p_assign_23_0_1_cast50_cast = sext i13 %p_assign_8 to i14 ; <i14> [#uses=1]
  %tmp_194_0_1 = icmp slt i14 %p_assign_23_0_1_cast50_cast, %rows_cast ; <i1> [#uses=1]
  %tmp_199_0_1 = xor i13 %p_assign_8, 3           ; <i13> [#uses=1]
  %tmp_199_0_1_cast62_cast = zext i13 %tmp_199_0_1 to i14 ; <i14> [#uses=1]
  %p_assign_9 = add i14 %tmp_198_0_0_cast_cast_cast, %tmp_199_0_1_cast62_cast ; <i14> [#uses=1]
  %sel_tmp13 = xor i1 %tmp_182_0_1, true          ; <i1> [#uses=1]
  %sel_tmp14 = and i1 %tmp_10, %sel_tmp13         ; <i1> [#uses=1]
  %sel_tmp32_demorgan = or i1 %tmp_182_0_1, %tmp_10 ; <i1> [#uses=1]
  %sel_tmp15 = xor i1 %sel_tmp32_demorgan, true   ; <i1> [#uses=1]
  %sel_tmp16 = and i1 %tmp_194_0_1, %sel_tmp15    ; <i1> [#uses=2]
  %newSel7 = select i1 %sel_tmp16, i13 %p_assign_8, i13 0 ; <i13> [#uses=1]
  %newSel7_cast = zext i13 %newSel7 to i14        ; <i14> [#uses=1]
  %or_cond8 = or i1 %sel_tmp16, %sel_tmp14        ; <i1> [#uses=1]
  %newSel9 = select i1 %tmp_182_0_1, i14 %curp_y_assign_0_0_1_cast55_cast158_cast, i14 %p_assign_9 ; <i14> [#uses=1]
  %newSel1 = select i1 %or_cond8, i14 %newSel7_cast, i14 %newSel9 ; <i14> [#uses=1]
  %tmp_22 = trunc i14 %newSel1 to i2              ; <i2> [#uses=2]
  %locy_0_1_t = sub i2 %tmp_7, %tmp_22            ; <i2> [#uses=1]
  %sel_tmp17 = icmp eq i2 %tmp_7, %tmp_22         ; <i1> [#uses=3]
  %sel_tmp19 = icmp eq i2 %locy_0_1_t, 1          ; <i1> [#uses=3]
  %p_assign_s = add i13 %p_assign_4, 2            ; <i13> [#uses=1]
  %ImagLoc_y_2 = add i13 %tmp7_cast1, -6          ; <i13> [#uses=4]
  %curp_y_assign_0_0_2_cast52_cast161_cast = zext i13 %ImagLoc_y_2 to i14 ; <i14> [#uses=1]
  %tmp_182_0_2 = icmp ult i13 %ImagLoc_y_2, %rows_cast1 ; <i1> [#uses=3]
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %ImagLoc_y_2, i32 12) ; <i1> [#uses=1]
  %p_assign_10 = select i1 %tmp_23, i13 %p_assign_s, i13 %ImagLoc_y_2 ; <i13> [#uses=3]
  %p_assign_23_0_2_cast48_cast = sext i13 %p_assign_10 to i14 ; <i14> [#uses=1]
  %tmp_194_0_2 = icmp slt i14 %p_assign_23_0_2_cast48_cast, %rows_cast ; <i1> [#uses=1]
  %tmp_199_0_2 = xor i13 %p_assign_10, 3          ; <i13> [#uses=1]
  %tmp_199_0_2_cast63_cast = zext i13 %tmp_199_0_2 to i14 ; <i14> [#uses=1]
  %p_assign_11 = add i14 %tmp_198_0_0_cast_cast_cast, %tmp_199_0_2_cast63_cast ; <i14> [#uses=1]
  %sel_tmp20 = xor i1 %tmp_182_0_2, true          ; <i1> [#uses=1]
  %sel_tmp21 = and i1 %tmp_10, %sel_tmp20         ; <i1> [#uses=1]
  %sel_tmp45_demorgan = or i1 %tmp_182_0_2, %tmp_10 ; <i1> [#uses=1]
  %sel_tmp22 = xor i1 %sel_tmp45_demorgan, true   ; <i1> [#uses=1]
  %sel_tmp23 = and i1 %tmp_194_0_2, %sel_tmp22    ; <i1> [#uses=2]
  %newSel2 = select i1 %sel_tmp23, i13 %p_assign_10, i13 0 ; <i13> [#uses=1]
  %newSel13_cast = zext i13 %newSel2 to i14       ; <i14> [#uses=1]
  %or_cond1 = or i1 %sel_tmp23, %sel_tmp21        ; <i1> [#uses=1]
  %newSel4 = select i1 %tmp_182_0_2, i14 %curp_y_assign_0_0_2_cast52_cast161_cast, i14 %p_assign_11 ; <i14> [#uses=1]
  %newSel6 = select i1 %or_cond1, i14 %newSel13_cast, i14 %newSel4 ; <i14> [#uses=1]
  %tmp_24 = trunc i14 %newSel6 to i2              ; <i2> [#uses=1]
  %locy_0_2_t = sub i2 %tmp_7, %tmp_24            ; <i2> [#uses=3]
  %tmp_25 = icmp slt i13 %ImagLoc_y, 1            ; <i1> [#uses=1]
  %slt = icmp slt i13 %ImagLoc_y, %ref            ; <i1> [#uses=1]
  %rev = xor i1 %slt, true                        ; <i1> [#uses=2]
  %tmp_176_2 = icmp slt i14 %ImagLoc_y_0_0_cast_cast, %heightloop_cast63_cast ; <i1> [#uses=1]
  %or_cond29_2 = and i1 %tmp_176_2, %rev          ; <i1> [#uses=1]
  %brmerge31_2 = or i1 %icmp1, %rev               ; <i1> [#uses=1]
  %or_cond3 = and i1 %brmerge31_2, %tmp_170_not   ; <i1> [#uses=3]
  br label %bb103

bb13_ifconv:                                      ; preds = %bb103
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str35) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 1920, i64 0)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str20) nounwind
  %tr = call i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12 %t_V_1, i32 1, i32 11) ; <i11> [#uses=1]
  %icmp = icmp eq i11 %tr, 0                      ; <i1> [#uses=1]
  %ImagLoc_x = add i13 %tmp_155_cast1, -1         ; <i13> [#uses=14]
  %ImagLoc_x_0_0_cast61_cast_cast = sext i13 %ImagLoc_x to i15 ; <i15> [#uses=1]
  %ImagLoc_x_0_0_cast_cast = sext i13 %ImagLoc_x to i14 ; <i14> [#uses=6]
  %tmp_6 = icmp ult i13 %ImagLoc_x, %cols_cast1   ; <i1> [#uses=3]
  %p_assign_1 = sub i13 0, %tmp_155_cast1         ; <i13> [#uses=1]
  %tmp_26 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %ImagLoc_x, i32 12) ; <i1> [#uses=7]
  %p_assign_2 = select i1 %tmp_26, i13 %p_assign_1, i13 %ImagLoc_x ; <i13> [#uses=3]
  %p_assign_14_0_cast56_cast = sext i13 %p_assign_2 to i14 ; <i14> [#uses=1]
  %p_assign_14_0_cast_cast_cast = sext i13 %p_assign_2 to i15 ; <i15> [#uses=1]
  %tmp_18 = icmp slt i14 %p_assign_14_0_cast56_cast, %cols_cast2 ; <i1> [#uses=1]
  %tmp_27 = xor i13 %p_assign_2, -1               ; <i13> [#uses=1]
  %tmp_165_0_cast_cast = sext i13 %tmp_27 to i15  ; <i15> [#uses=1]
  %p_assign_3 = add i15 %tmp_164_0_cast_cast, %tmp_165_0_cast_cast ; <i15> [#uses=1]
  %sel_tmp = select i1 %tmp_6, i15 %ImagLoc_x_0_0_cast61_cast_cast, i15 %p_assign_3 ; <i15> [#uses=1]
  %sel_tmp5 = xor i1 %tmp_6, true                 ; <i1> [#uses=1]
  %sel_tmp6 = and i1 %tmp_8, %sel_tmp5            ; <i1> [#uses=1]
  %sel_tmp7 = select i1 %sel_tmp6, i15 0, i15 %sel_tmp ; <i15> [#uses=1]
  %sel_tmp10_demorgan = or i1 %tmp_6, %tmp_8      ; <i1> [#uses=1]
  %sel_tmp1 = xor i1 %sel_tmp10_demorgan, true    ; <i1> [#uses=1]
  %sel_tmp2 = and i1 %tmp_18, %sel_tmp1           ; <i1> [#uses=1]
  %x = select i1 %sel_tmp2, i15 %p_assign_14_0_cast_cast_cast, i15 %sel_tmp7 ; <i15> [#uses=21]
  %brmerge = or i1 %or_cond_98, %or_cond29_2      ; <i1> [#uses=3]
  br i1 %brmerge, label %bb29.preheader.0_ifconv, label %bb33.0

bb99.0_ifconv:                                    ; preds = %bb4.i502.preheader.0_ifconv, %bb85.0
  br i1 %brmerge, label %bb29.preheader.1_ifconv, label %bb33.1

bb85.0.pre:                                       ; preds = %bb29.preheader.0_ifconv
  store i8 %k_buf_0_val_1_load, i8* %src_kernel_win_0_val_0_0_1
  store i8 %k_buf_0_val_2_load, i8* %src_kernel_win_0_val_1_0_1
  store i8 %k_buf_0_val_1_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_2, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_2, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

bb85.0:                                           ; preds = %bb85.0.pre, %branch50, %branch49, %branch48, %branch47, %branch46, %branch45, %branch26, %branch24, %bb61.preheader.0, %bb74.0, %bb33.0, %bb52.preheader.0
  %ult1 = icmp ult i13 %tmp_155_cast1, %widthloop ; <i1> [#uses=1]
  %rev3 = xor i1 %ult1, true                      ; <i1> [#uses=1]
  %tmp1 = or i1 %icmp, %tmp_25                    ; <i1> [#uses=1]
  %tmp2 = or i1 %rev1, %rev3                      ; <i1> [#uses=1]
  %brmerge2 = or i1 %tmp2, %tmp1                  ; <i1> [#uses=3]
  br i1 %brmerge2, label %bb99.0_ifconv, label %bb4.i502.preheader.0_ifconv

bb52.preheader.0:                                 ; preds = %branch53, %branch52, %branch51, %bb38.0
  %k_buf_0_val_1_addr_2 = getelementptr [1920 x i8]* %k_buf_0_val_1, i64 0, i64 %tmp_30 ; <i8*> [#uses=2]
  %temp_10 = load i8* %k_buf_0_val_1_addr_2, align 1 ; <i8> [#uses=3]
  store i8 %temp_10, i8* %k_buf_0_val_2_addr_1, align 1
  %k_buf_0_val_0_addr_2 = getelementptr [1920 x i8]* %k_buf_0_val_0, i64 0, i64 %tmp_30 ; <i8*> [#uses=2]
  %temp_11 = load i8* %k_buf_0_val_0_addr_2, align 1 ; <i8> [#uses=3]
  store i8 %temp_11, i8* %k_buf_0_val_1_addr_2, align 1
  %tmp_53 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %p_src_data_stream_0_V) ; <i8> [#uses=1]
  store i8 %tmp_53, i8* %k_buf_0_val_0_addr_2, align 1
  store i8 %temp_11, i8* %src_kernel_win_0_val_0_0_1
  store i8 %temp_10, i8* %src_kernel_win_0_val_1_0_1
  store i8 %Toppixel, i8* %src_kernel_win_0_val_2_0
  store i8 %temp_10, i8* %src_kernel_win_0_val_1_0
  store i8 %temp_11, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

bb38.0:                                           ; preds = %bb37.0
  %tmp_30 = sext i13 %ImagLoc_x to i64            ; <i64> [#uses=3]
  %k_buf_0_val_2_addr_1 = getelementptr [1920 x i8]* %k_buf_0_val_2, i64 0, i64 %tmp_30 ; <i8*> [#uses=2]
  %Toppixel = load i8* %k_buf_0_val_2_addr_1, align 1 ; <i8> [#uses=4]
  %tmp_31 = icmp slt i13 %ImagLoc_x, %tmp_1       ; <i1> [#uses=1]
  br i1 %tmp_31, label %bb52.preheader.0, label %bb41.0

bb37.0:                                           ; preds = %bb36.0
  %tmp_29 = icmp slt i14 %ImagLoc_x_0_0_cast_cast, %cols_cast2 ; <i1> [#uses=1]
  br i1 %tmp_29, label %bb38.0, label %bb55.0

bb36.0:                                           ; preds = %bb33.0
  br i1 %tmp_26, label %bb61.preheader.0, label %bb37.0

bb33.0:                                           ; preds = %bb13_ifconv
  br i1 %or_cond3, label %bb85.0, label %bb36.0

bb41.0:                                           ; preds = %bb38.0
  %tmp_32 = trunc i13 %ImagLoc_x to i2            ; <i2> [#uses=1]
  %tmp_187_0_t = add i2 %tmp_32, %tmp_13          ; <i2> [#uses=1]
  switch i2 %tmp_187_0_t, label %branch53 [
    i2 0, label %branch51
    i2 1, label %branch52
  ]

bb70.preheader.0:                                 ; preds = %bb63.0
  %tmp_35 = trunc i15 %x to i2                    ; <i2> [#uses=1]
  %tmp_206_0_t = add i2 %tmp_35, %tmp_13          ; <i2> [#uses=1]
  switch i2 %tmp_206_0_t, label %branch50 [
    i2 0, label %branch48
    i2 1, label %branch49
  ]

bb63.0:                                           ; preds = %bb55.0
  %slt1 = icmp slt i14 %ImagLoc_x_0_0_cast_cast, %cols_cast2 ; <i1> [#uses=1]
  %rev2 = xor i1 %slt1, true                      ; <i1> [#uses=2]
  %tmp_34 = icmp eq i15 %tmp_150_cast_cast_cast, %x ; <i1> [#uses=1]
  %or_cond5 = and i1 %rev2, %tmp_34               ; <i1> [#uses=1]
  br i1 %or_cond5, label %bb70.preheader.0, label %bb74.0

bb55.0:                                           ; preds = %bb37.0
  br i1 %tmp_26, label %bb61.preheader.0, label %bb63.0

bb74.0:                                           ; preds = %bb63.0
  %tmp_36 = icmp sgt i15 %tmp_150_cast_cast_cast, %x ; <i1> [#uses=1]
  %or_cond6 = and i1 %rev2, %tmp_36               ; <i1> [#uses=1]
  br i1 %or_cond6, label %bb81.preheader.0, label %bb85.0

bb81.preheader.0:                                 ; preds = %bb74.0
  %tmp_37 = sext i15 %x to i64                    ; <i64> [#uses=2]
  %k_buf_0_val_1_addr_3 = getelementptr [1920 x i8]* %k_buf_0_val_1, i64 0, i64 %tmp_37 ; <i8*> [#uses=1]
  %src_kernel_win_0_val_0_0_9 = load i8* %k_buf_0_val_1_addr_3, align 1 ; <i8> [#uses=3]
  %k_buf_0_val_2_addr_3 = getelementptr [1920 x i8]* %k_buf_0_val_2, i64 0, i64 %tmp_37 ; <i8*> [#uses=1]
  %src_kernel_win_0_val_1_0_8 = load i8* %k_buf_0_val_2_addr_3, align 1 ; <i8> [#uses=3]
  %tmp_38 = trunc i15 %x to i2                    ; <i2> [#uses=1]
  %tmp_211_0_t = add i2 %tmp_38, %tmp_13          ; <i2> [#uses=1]
  switch i2 %tmp_211_0_t, label %branch47 [
    i2 0, label %branch45
    i2 1, label %branch46
  ]

bb61.preheader.0:                                 ; preds = %bb55.0, %bb36.0
  %tmp_33 = sext i15 %x to i64                    ; <i64> [#uses=3]
  %k_buf_0_val_0_addr_1 = getelementptr [1920 x i8]* %k_buf_0_val_0, i64 0, i64 %tmp_33 ; <i8*> [#uses=1]
  %src_kernel_win_0_val_0_0_5 = load i8* %k_buf_0_val_0_addr_1, align 1 ; <i8> [#uses=1]
  %k_buf_0_val_1_addr_1 = getelementptr [1920 x i8]* %k_buf_0_val_1, i64 0, i64 %tmp_33 ; <i8*> [#uses=1]
  %src_kernel_win_0_val_1_0_4 = load i8* %k_buf_0_val_1_addr_1, align 1 ; <i8> [#uses=1]
  %k_buf_0_val_2_addr_2 = getelementptr [1920 x i8]* %k_buf_0_val_2, i64 0, i64 %tmp_33 ; <i8*> [#uses=1]
  %src_kernel_win_0_val_2_0_3 = load i8* %k_buf_0_val_2_addr_2, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_0_val_2_0_3, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_4, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_5, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

bb29.preheader.0_ifconv:                          ; preds = %bb13_ifconv
  %tmp_28 = sext i15 %x to i64                    ; <i64> [#uses=3]
  %k_buf_0_val_0_addr = getelementptr [1920 x i8]* %k_buf_0_val_0, i64 0, i64 %tmp_28 ; <i8*> [#uses=1]
  %k_buf_0_val_0_load = load i8* %k_buf_0_val_0_addr, align 1 ; <i8> [#uses=4]
  store i8 %k_buf_0_val_0_load, i8* %col_buf_val_0_0_0, align 1
  %k_buf_0_val_1_addr = getelementptr [1920 x i8]* %k_buf_0_val_1, i64 0, i64 %tmp_28 ; <i8*> [#uses=1]
  %k_buf_0_val_1_load = load i8* %k_buf_0_val_1_addr, align 1 ; <i8> [#uses=6]
  %k_buf_0_val_2_addr = getelementptr [1920 x i8]* %k_buf_0_val_2, i64 0, i64 %tmp_28 ; <i8*> [#uses=1]
  %k_buf_0_val_2_load = load i8* %k_buf_0_val_2_addr, align 1 ; <i8> [#uses=6]
  %sel_tmp11 = select i1 %sel_tmp10, i8 %k_buf_0_val_0_load, i8 %k_buf_0_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_0_val_0_0_2 = select i1 %sel_tmp12, i8 %k_buf_0_val_1_load, i8 %sel_tmp11 ; <i8> [#uses=3]
  %sel_tmp18 = select i1 %sel_tmp17, i8 %k_buf_0_val_0_load, i8 %k_buf_0_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_0_val_1_0_2 = select i1 %sel_tmp19, i8 %k_buf_0_val_1_load, i8 %sel_tmp18 ; <i8> [#uses=3]
  switch i2 %locy_0_2_t, label %branch26 [
    i2 0, label %branch24
    i2 1, label %bb85.0.pre
  ]

bb4.i502.preheader.0_ifconv:                      ; preds = %bb85.0
  %src_kernel_win_0_val_0_0_load = load i8* %src_kernel_win_0_val_0_0 ; <i8> [#uses=1]
  %src_kernel_win_0_val_0_1_load = load i8* %src_kernel_win_0_val_0_1 ; <i8> [#uses=1]
  %src_kernel_win_0_val_1_0_load = load i8* %src_kernel_win_0_val_1_0 ; <i8> [#uses=1]
  %src_kernel_win_0_val_1_1_load = load i8* %src_kernel_win_0_val_1_1 ; <i8> [#uses=1]
  %src_kernel_win_0_val_2_0_load = load i8* %src_kernel_win_0_val_2_0 ; <i8> [#uses=1]
  %src_kernel_win_0_val_2_1_load = load i8* %src_kernel_win_0_val_2_1 ; <i8> [#uses=1]
  %tmp_229_0_0_0_cast_cast = zext i8 %src_kernel_win_0_val_2_1_load to i9 ; <i9> [#uses=1]
  %tmp_230_0_0_2_cast_cast = zext i8 %src_kernel_win_0_val_2_0_load to i9 ; <i9> [#uses=1]
  %sum_V = sub i9 %tmp_230_0_0_2_cast_cast, %tmp_229_0_0_0_cast_cast ; <i9> [#uses=1]
  %sum_V_4_0_0_2_cast_cast = sext i9 %sum_V to i11 ; <i11> [#uses=1]
  %tmp_39 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_0_val_1_1_load, i1 false) ; <i9> [#uses=1]
  %p_shl = zext i9 %tmp_39 to i11                 ; <i11> [#uses=1]
  %sum_V_1 = sub i11 %sum_V_4_0_0_2_cast_cast, %p_shl ; <i11> [#uses=1]
  %tmp_230_0_1_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_0_val_1_0_load, i1 false) ; <i9> [#uses=1]
  %tmp_230_0_1_2_cast_cast = zext i9 %tmp_230_0_1_2 to i11 ; <i11> [#uses=1]
  %sum_V_2 = add i11 %sum_V_1, %tmp_230_0_1_2_cast_cast ; <i11> [#uses=1]
  %tmp_229_0_2_0_cast_cast = zext i8 %src_kernel_win_0_val_0_1_load to i9 ; <i9> [#uses=1]
  %tmp_230_0_2 = sub i9 0, %tmp_229_0_2_0_cast_cast ; <i9> [#uses=1]
  %tmp_230_0_2_cast = sext i9 %tmp_230_0_2 to i11 ; <i11> [#uses=1]
  %sum_V_3 = add i11 %sum_V_2, %tmp_230_0_2_cast  ; <i11> [#uses=1]
  %tmp_230_0_2_2_cast_cast = zext i8 %src_kernel_win_0_val_0_0_load to i11 ; <i11> [#uses=1]
  %sum_V_4 = add i11 %sum_V_3, %tmp_230_0_2_2_cast_cast ; <i11> [#uses=3]
  %tmp_40 = icmp sgt i11 %sum_V_4, 0              ; <i1> [#uses=1]
  %tr2 = call i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11 %sum_V_4, i32 8, i32 10) ; <i3> [#uses=1]
  %icmp2 = icmp sgt i3 %tr2, 0                    ; <i1> [#uses=1]
  %tmp_41 = trunc i11 %sum_V_4 to i8              ; <i8> [#uses=1]
  %phitmp = select i1 %icmp2, i8 -1, i8 %tmp_41   ; <i8> [#uses=1]
  %temp_1 = select i1 %tmp_40, i8 %phitmp, i8 0   ; <i8> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %p_dst_data_stream_0_V, i8 %temp_1)
  br label %bb99.0_ifconv

bb99.1_ifconv:                                    ; preds = %bb4.i502.preheader.1_ifconv, %bb85.1
  br i1 %brmerge, label %bb29.preheader.2_ifconv, label %bb33.2

bb85.1.pre:                                       ; preds = %bb29.preheader.1_ifconv
  store i8 %src_kernel_win_1_val_1_0_2, i8* %src_kernel_win_1_val_1_0
  store i8 %k_buf_1_val_1_load, i8* %src_kernel_win_1_val_2_0
  store i8 %k_buf_1_val_1_load, i8* %src_kernel_win_1_val_0_0_1
  store i8 %src_kernel_win_1_val_0_0_2, i8* %src_kernel_win_1_val_0_0
  store i8 %k_buf_1_val_2_load, i8* %src_kernel_win_1_val_1_0_1
  br label %bb85.1

bb85.1:                                           ; preds = %bb85.1.pre, %branch59, %branch58, %branch57, %branch56, %branch55, %branch54, %branch35, %branch33, %bb61.preheader.1, %bb74.1, %bb33.1, %bb52.preheader.1
  br i1 %brmerge2, label %bb99.1_ifconv, label %bb4.i502.preheader.1_ifconv

bb52.preheader.1:                                 ; preds = %branch62, %branch61, %branch60, %bb38.1
  %k_buf_1_val_1_addr_2 = getelementptr [1920 x i8]* %k_buf_1_val_1, i64 0, i64 %tmp_184_1 ; <i8*> [#uses=2]
  %temp = load i8* %k_buf_1_val_1_addr_2, align 1 ; <i8> [#uses=3]
  store i8 %temp, i8* %k_buf_1_val_2_addr_1, align 1
  %k_buf_1_val_0_addr_2 = getelementptr [1920 x i8]* %k_buf_1_val_0, i64 0, i64 %tmp_184_1 ; <i8*> [#uses=2]
  %temp_12 = load i8* %k_buf_1_val_0_addr_2, align 1 ; <i8> [#uses=3]
  store i8 %temp_12, i8* %k_buf_1_val_1_addr_2, align 1
  %tmp_54 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %p_src_data_stream_1_V) ; <i8> [#uses=1]
  store i8 %tmp_54, i8* %k_buf_1_val_0_addr_2, align 1
  store i8 %temp, i8* %src_kernel_win_1_val_1_0
  store i8 %Toppixel_1, i8* %src_kernel_win_1_val_2_0
  store i8 %temp_12, i8* %src_kernel_win_1_val_0_0_1
  store i8 %temp_12, i8* %src_kernel_win_1_val_0_0
  store i8 %temp, i8* %src_kernel_win_1_val_1_0_1
  br label %bb85.1

bb38.1:                                           ; preds = %bb37.1
  %tmp_184_1 = sext i13 %ImagLoc_x to i64         ; <i64> [#uses=3]
  %k_buf_1_val_2_addr_1 = getelementptr [1920 x i8]* %k_buf_1_val_2, i64 0, i64 %tmp_184_1 ; <i8*> [#uses=2]
  %Toppixel_1 = load i8* %k_buf_1_val_2_addr_1, align 1 ; <i8> [#uses=4]
  %tmp_185_1 = icmp slt i13 %ImagLoc_x, %tmp_1    ; <i1> [#uses=1]
  br i1 %tmp_185_1, label %bb52.preheader.1, label %bb41.1

bb37.1:                                           ; preds = %bb36.1
  %tmp_183_1 = icmp slt i14 %ImagLoc_x_0_0_cast_cast, %cols_cast2 ; <i1> [#uses=1]
  br i1 %tmp_183_1, label %bb38.1, label %bb55.1

bb36.1:                                           ; preds = %bb33.1
  br i1 %tmp_26, label %bb61.preheader.1, label %bb37.1

bb33.1:                                           ; preds = %bb99.0_ifconv
  br i1 %or_cond3, label %bb85.1, label %bb36.1

bb41.1:                                           ; preds = %bb38.1
  %tmp_42 = trunc i13 %ImagLoc_x to i2            ; <i2> [#uses=1]
  %tmp_187_1_t = add i2 %tmp_42, %tmp_13          ; <i2> [#uses=1]
  switch i2 %tmp_187_1_t, label %branch62 [
    i2 0, label %branch60
    i2 1, label %branch61
  ]

bb70.preheader.1:                                 ; preds = %bb63.1
  %tmp_43 = trunc i15 %x to i2                    ; <i2> [#uses=1]
  %tmp_206_1_t = add i2 %tmp_43, %tmp_13          ; <i2> [#uses=1]
  switch i2 %tmp_206_1_t, label %branch59 [
    i2 0, label %branch57
    i2 1, label %branch58
  ]

bb63.1:                                           ; preds = %bb55.1
  %slt2 = icmp slt i14 %ImagLoc_x_0_0_cast_cast, %cols_cast2 ; <i1> [#uses=1]
  %rev4 = xor i1 %slt2, true                      ; <i1> [#uses=2]
  %tmp_190_1 = icmp eq i15 %tmp_150_cast_cast_cast, %x ; <i1> [#uses=1]
  %or_cond5_1 = and i1 %rev4, %tmp_190_1          ; <i1> [#uses=1]
  br i1 %or_cond5_1, label %bb70.preheader.1, label %bb74.1

bb55.1:                                           ; preds = %bb37.1
  br i1 %tmp_26, label %bb61.preheader.1, label %bb63.1

bb74.1:                                           ; preds = %bb63.1
  %tmp_192_1 = icmp sgt i15 %tmp_150_cast_cast_cast, %x ; <i1> [#uses=1]
  %or_cond6_1 = and i1 %rev4, %tmp_192_1          ; <i1> [#uses=1]
  br i1 %or_cond6_1, label %bb81.preheader.1, label %bb85.1

bb81.preheader.1:                                 ; preds = %bb74.1
  %tmp_197_1 = sext i15 %x to i64                 ; <i64> [#uses=2]
  %k_buf_1_val_1_addr_3 = getelementptr [1920 x i8]* %k_buf_1_val_1, i64 0, i64 %tmp_197_1 ; <i8*> [#uses=1]
  %src_kernel_win_1_val_0_0_9 = load i8* %k_buf_1_val_1_addr_3, align 1 ; <i8> [#uses=3]
  %k_buf_1_val_2_addr_3 = getelementptr [1920 x i8]* %k_buf_1_val_2, i64 0, i64 %tmp_197_1 ; <i8*> [#uses=1]
  %src_kernel_win_1_val_1_0_6 = load i8* %k_buf_1_val_2_addr_3, align 1 ; <i8> [#uses=3]
  %tmp_45 = trunc i15 %x to i2                    ; <i2> [#uses=1]
  %tmp_211_1_t = add i2 %tmp_45, %tmp_13          ; <i2> [#uses=1]
  switch i2 %tmp_211_1_t, label %branch56 [
    i2 0, label %branch54
    i2 1, label %branch55
  ]

bb61.preheader.1:                                 ; preds = %bb55.1, %bb36.1
  %tmp_189_1 = sext i15 %x to i64                 ; <i64> [#uses=3]
  %k_buf_1_val_0_addr_1 = getelementptr [1920 x i8]* %k_buf_1_val_0, i64 0, i64 %tmp_189_1 ; <i8*> [#uses=1]
  %src_kernel_win_1_val_0_0_5 = load i8* %k_buf_1_val_0_addr_1, align 1 ; <i8> [#uses=1]
  %k_buf_1_val_1_addr_1 = getelementptr [1920 x i8]* %k_buf_1_val_1, i64 0, i64 %tmp_189_1 ; <i8*> [#uses=1]
  %src_kernel_win_1_val_1_0_4 = load i8* %k_buf_1_val_1_addr_1, align 1 ; <i8> [#uses=1]
  %k_buf_1_val_2_addr_2 = getelementptr [1920 x i8]* %k_buf_1_val_2, i64 0, i64 %tmp_189_1 ; <i8*> [#uses=1]
  %src_kernel_win_1_val_2_0_3 = load i8* %k_buf_1_val_2_addr_2, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_4, i8* %src_kernel_win_1_val_1_0
  store i8 %src_kernel_win_1_val_2_0_3, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_5, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

bb29.preheader.1_ifconv:                          ; preds = %bb99.0_ifconv
  %tmp_177_1 = sext i15 %x to i64                 ; <i64> [#uses=3]
  %k_buf_1_val_0_addr = getelementptr [1920 x i8]* %k_buf_1_val_0, i64 0, i64 %tmp_177_1 ; <i8*> [#uses=1]
  %k_buf_1_val_0_load = load i8* %k_buf_1_val_0_addr, align 1 ; <i8> [#uses=4]
  store i8 %k_buf_1_val_0_load, i8* %col_buf_val_1_0_0, align 1
  %k_buf_1_val_1_addr = getelementptr [1920 x i8]* %k_buf_1_val_1, i64 0, i64 %tmp_177_1 ; <i8*> [#uses=1]
  %k_buf_1_val_1_load = load i8* %k_buf_1_val_1_addr, align 1 ; <i8> [#uses=6]
  %k_buf_1_val_2_addr = getelementptr [1920 x i8]* %k_buf_1_val_2, i64 0, i64 %tmp_177_1 ; <i8*> [#uses=1]
  %k_buf_1_val_2_load = load i8* %k_buf_1_val_2_addr, align 1 ; <i8> [#uses=6]
  %sel_tmp24 = select i1 %sel_tmp10, i8 %k_buf_1_val_0_load, i8 %k_buf_1_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_1_val_0_0_2 = select i1 %sel_tmp12, i8 %k_buf_1_val_1_load, i8 %sel_tmp24 ; <i8> [#uses=3]
  %sel_tmp25 = select i1 %sel_tmp17, i8 %k_buf_1_val_0_load, i8 %k_buf_1_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_1_val_1_0_2 = select i1 %sel_tmp19, i8 %k_buf_1_val_1_load, i8 %sel_tmp25 ; <i8> [#uses=3]
  switch i2 %locy_0_2_t, label %branch35 [
    i2 0, label %branch33
    i2 1, label %bb85.1.pre
  ]

bb4.i502.preheader.1_ifconv:                      ; preds = %bb85.1
  %src_kernel_win_1_val_0_0_load = load i8* %src_kernel_win_1_val_0_0 ; <i8> [#uses=1]
  %src_kernel_win_1_val_0_1_load = load i8* %src_kernel_win_1_val_0_1 ; <i8> [#uses=1]
  %src_kernel_win_1_val_2_0_load = load i8* %src_kernel_win_1_val_2_0 ; <i8> [#uses=1]
  %src_kernel_win_1_val_1_0_load = load i8* %src_kernel_win_1_val_1_0 ; <i8> [#uses=1]
  %src_kernel_win_1_val_1_1_load = load i8* %src_kernel_win_1_val_1_1 ; <i8> [#uses=1]
  %src_kernel_win_1_val_2_1_load = load i8* %src_kernel_win_1_val_2_1 ; <i8> [#uses=1]
  %tmp_229_1_0_0_cast_cast = zext i8 %src_kernel_win_1_val_2_1_load to i9 ; <i9> [#uses=1]
  %tmp_230_1_0_2_cast_cast = zext i8 %src_kernel_win_1_val_2_0_load to i9 ; <i9> [#uses=1]
  %sum_V_5 = sub i9 %tmp_230_1_0_2_cast_cast, %tmp_229_1_0_0_cast_cast ; <i9> [#uses=1]
  %sum_V_4_1_0_2_cast_cast = sext i9 %sum_V_5 to i11 ; <i11> [#uses=1]
  %tmp_44 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_1_val_1_1_load, i1 false) ; <i9> [#uses=1]
  %p_shl1 = zext i9 %tmp_44 to i11                ; <i11> [#uses=1]
  %sum_V_6 = sub i11 %sum_V_4_1_0_2_cast_cast, %p_shl1 ; <i11> [#uses=1]
  %tmp_230_1_1_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_1_val_1_0_load, i1 false) ; <i9> [#uses=1]
  %tmp_230_1_1_2_cast_cast = zext i9 %tmp_230_1_1_2 to i11 ; <i11> [#uses=1]
  %sum_V_7 = add i11 %sum_V_6, %tmp_230_1_1_2_cast_cast ; <i11> [#uses=1]
  %tmp_229_1_2_0_cast_cast = zext i8 %src_kernel_win_1_val_0_1_load to i9 ; <i9> [#uses=1]
  %tmp_230_1_2 = sub i9 0, %tmp_229_1_2_0_cast_cast ; <i9> [#uses=1]
  %tmp_230_1_2_cast = sext i9 %tmp_230_1_2 to i11 ; <i11> [#uses=1]
  %sum_V_8 = add i11 %sum_V_7, %tmp_230_1_2_cast  ; <i11> [#uses=1]
  %tmp_230_1_2_2_cast_cast = zext i8 %src_kernel_win_1_val_0_0_load to i11 ; <i11> [#uses=1]
  %sum_V_9 = add i11 %sum_V_8, %tmp_230_1_2_2_cast_cast ; <i11> [#uses=3]
  %tmp_221_1 = icmp sgt i11 %sum_V_9, 0           ; <i1> [#uses=1]
  %tr3 = call i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11 %sum_V_9, i32 8, i32 10) ; <i3> [#uses=1]
  %icmp3 = icmp sgt i3 %tr3, 0                    ; <i1> [#uses=1]
  %tmp_46 = trunc i11 %sum_V_9 to i8              ; <i8> [#uses=1]
  %phitmp_1 = select i1 %icmp3, i8 -1, i8 %tmp_46 ; <i8> [#uses=1]
  %temp_5 = select i1 %tmp_221_1, i8 %phitmp_1, i8 0 ; <i8> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %p_dst_data_stream_1_V, i8 %temp_5)
  br label %bb99.1_ifconv

bb99.2:                                           ; preds = %bb4.i502.preheader.2_ifconv, %bb85.2
  %empty_99 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str35, i32 %tmp_5) ; <i32> [#uses=0]
  store i8 %src_kernel_win_2_val_1_1_1, i8* %src_kernel_win_2_val_1_1
  store i8 %src_kernel_win_2_val_2_1_1, i8* %src_kernel_win_2_val_2_1
  store i8 %src_kernel_win_2_val_0_1_1, i8* %src_kernel_win_2_val_0_1
  store i8 %src_kernel_win_1_val_2_1_1, i8* %src_kernel_win_1_val_2_1
  store i8 %src_kernel_win_1_val_1_1_1, i8* %src_kernel_win_1_val_1_1
  store i8 %src_kernel_win_1_val_0_1_1, i8* %src_kernel_win_1_val_0_1
  store i8 %src_kernel_win_0_val_2_1_1, i8* %src_kernel_win_0_val_2_1
  store i8 %src_kernel_win_0_val_1_1_1, i8* %src_kernel_win_0_val_1_1
  store i8 %src_kernel_win_0_val_0_1_1, i8* %src_kernel_win_0_val_0_1
  br label %bb103

bb85.2.pre:                                       ; preds = %bb29.preheader.2_ifconv
  store i8 %src_kernel_win_2_val_1_0_2, i8* %src_kernel_win_2_val_1_0
  store i8 %k_buf_2_val_1_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_2, i8* %src_kernel_win_2_val_0_0
  store i8 %k_buf_2_val_1_load, i8* %src_kernel_win_2_val_0_0_1
  store i8 %k_buf_2_val_2_load, i8* %src_kernel_win_2_val_1_0_1
  br label %bb85.2

bb85.2:                                           ; preds = %bb85.2.pre, %branch68, %branch67, %branch66, %branch65, %branch64, %branch63, %branch44, %branch42, %bb61.preheader.2, %bb74.2, %bb33.2, %bb52.preheader.2
  br i1 %brmerge2, label %bb99.2, label %bb4.i502.preheader.2_ifconv

bb52.preheader.2:                                 ; preds = %branch71, %branch70, %branch69, %bb38.2
  %k_buf_2_val_1_addr_2 = getelementptr [1920 x i8]* %k_buf_2_val_1, i64 0, i64 %tmp_184_2 ; <i8*> [#uses=2]
  %temp_13 = load i8* %k_buf_2_val_1_addr_2, align 1 ; <i8> [#uses=3]
  store i8 %temp_13, i8* %k_buf_2_val_2_addr_1, align 1
  %k_buf_2_val_0_addr_2 = getelementptr [1920 x i8]* %k_buf_2_val_0, i64 0, i64 %tmp_184_2 ; <i8*> [#uses=2]
  %temp_14 = load i8* %k_buf_2_val_0_addr_2, align 1 ; <i8> [#uses=3]
  store i8 %temp_14, i8* %k_buf_2_val_1_addr_2, align 1
  %tmp_55 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %p_src_data_stream_2_V) ; <i8> [#uses=1]
  store i8 %tmp_55, i8* %k_buf_2_val_0_addr_2, align 1
  store i8 %temp_13, i8* %src_kernel_win_2_val_1_0
  store i8 %Toppixel_2, i8* %src_kernel_win_2_val_2_0
  store i8 %temp_14, i8* %src_kernel_win_2_val_0_0
  store i8 %temp_14, i8* %src_kernel_win_2_val_0_0_1
  store i8 %temp_13, i8* %src_kernel_win_2_val_1_0_1
  br label %bb85.2

bb38.2:                                           ; preds = %bb37.2
  %tmp_184_2 = sext i13 %ImagLoc_x to i64         ; <i64> [#uses=3]
  %k_buf_2_val_2_addr_1 = getelementptr [1920 x i8]* %k_buf_2_val_2, i64 0, i64 %tmp_184_2 ; <i8*> [#uses=2]
  %Toppixel_2 = load i8* %k_buf_2_val_2_addr_1, align 1 ; <i8> [#uses=4]
  %tmp_185_2 = icmp slt i13 %ImagLoc_x, %tmp_1    ; <i1> [#uses=1]
  br i1 %tmp_185_2, label %bb52.preheader.2, label %bb41.2

bb37.2:                                           ; preds = %bb36.2
  %tmp_183_2 = icmp slt i14 %ImagLoc_x_0_0_cast_cast, %cols_cast2 ; <i1> [#uses=1]
  br i1 %tmp_183_2, label %bb38.2, label %bb55.2

bb36.2:                                           ; preds = %bb33.2
  br i1 %tmp_26, label %bb61.preheader.2, label %bb37.2

bb33.2:                                           ; preds = %bb99.1_ifconv
  br i1 %or_cond3, label %bb85.2, label %bb36.2

bb41.2:                                           ; preds = %bb38.2
  %tmp_47 = trunc i13 %ImagLoc_x to i2            ; <i2> [#uses=1]
  %tmp_187_2_t = add i2 %tmp_47, %tmp_13          ; <i2> [#uses=1]
  switch i2 %tmp_187_2_t, label %branch71 [
    i2 0, label %branch69
    i2 1, label %branch70
  ]

bb70.preheader.2:                                 ; preds = %bb63.2
  %tmp_49 = trunc i15 %x to i2                    ; <i2> [#uses=1]
  %tmp_206_2_t = add i2 %tmp_49, %tmp_13          ; <i2> [#uses=1]
  switch i2 %tmp_206_2_t, label %branch68 [
    i2 0, label %branch66
    i2 1, label %branch67
  ]

bb63.2:                                           ; preds = %bb55.2
  %slt3 = icmp slt i14 %ImagLoc_x_0_0_cast_cast, %cols_cast2 ; <i1> [#uses=1]
  %rev5 = xor i1 %slt3, true                      ; <i1> [#uses=2]
  %tmp_190_2 = icmp eq i15 %tmp_150_cast_cast_cast, %x ; <i1> [#uses=1]
  %or_cond5_2 = and i1 %rev5, %tmp_190_2          ; <i1> [#uses=1]
  br i1 %or_cond5_2, label %bb70.preheader.2, label %bb74.2

bb55.2:                                           ; preds = %bb37.2
  br i1 %tmp_26, label %bb61.preheader.2, label %bb63.2

bb74.2:                                           ; preds = %bb63.2
  %tmp_192_2 = icmp sgt i15 %tmp_150_cast_cast_cast, %x ; <i1> [#uses=1]
  %or_cond6_2 = and i1 %rev5, %tmp_192_2          ; <i1> [#uses=1]
  br i1 %or_cond6_2, label %bb81.preheader.2, label %bb85.2

bb81.preheader.2:                                 ; preds = %bb74.2
  %tmp_197_2 = sext i15 %x to i64                 ; <i64> [#uses=2]
  %k_buf_2_val_1_addr_3 = getelementptr [1920 x i8]* %k_buf_2_val_1, i64 0, i64 %tmp_197_2 ; <i8*> [#uses=1]
  %src_kernel_win_2_val_0_0_8 = load i8* %k_buf_2_val_1_addr_3, align 1 ; <i8> [#uses=3]
  %k_buf_2_val_2_addr_3 = getelementptr [1920 x i8]* %k_buf_2_val_2, i64 0, i64 %tmp_197_2 ; <i8*> [#uses=1]
  %src_kernel_win_2_val_1_0_6 = load i8* %k_buf_2_val_2_addr_3, align 1 ; <i8> [#uses=3]
  %tmp_51 = trunc i15 %x to i2                    ; <i2> [#uses=1]
  %tmp_211_2_t = add i2 %tmp_51, %tmp_13          ; <i2> [#uses=1]
  switch i2 %tmp_211_2_t, label %branch65 [
    i2 0, label %branch63
    i2 1, label %branch64
  ]

bb61.preheader.2:                                 ; preds = %bb55.2, %bb36.2
  %tmp_189_2 = sext i15 %x to i64                 ; <i64> [#uses=3]
  %k_buf_2_val_0_addr_1 = getelementptr [1920 x i8]* %k_buf_2_val_0, i64 0, i64 %tmp_189_2 ; <i8*> [#uses=1]
  %src_kernel_win_2_val_0_0_5 = load i8* %k_buf_2_val_0_addr_1, align 1 ; <i8> [#uses=1]
  %k_buf_2_val_1_addr_1 = getelementptr [1920 x i8]* %k_buf_2_val_1, i64 0, i64 %tmp_189_2 ; <i8*> [#uses=1]
  %src_kernel_win_2_val_1_0_4 = load i8* %k_buf_2_val_1_addr_1, align 1 ; <i8> [#uses=1]
  %k_buf_2_val_2_addr_2 = getelementptr [1920 x i8]* %k_buf_2_val_2, i64 0, i64 %tmp_189_2 ; <i8*> [#uses=1]
  %src_kernel_win_2_val_2_0_3 = load i8* %k_buf_2_val_2_addr_2, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_4, i8* %src_kernel_win_2_val_1_0
  store i8 %src_kernel_win_2_val_2_0_3, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_5, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

bb29.preheader.2_ifconv:                          ; preds = %bb99.1_ifconv
  %tmp_177_2 = sext i15 %x to i64                 ; <i64> [#uses=3]
  %k_buf_2_val_0_addr = getelementptr [1920 x i8]* %k_buf_2_val_0, i64 0, i64 %tmp_177_2 ; <i8*> [#uses=1]
  %k_buf_2_val_0_load = load i8* %k_buf_2_val_0_addr, align 1 ; <i8> [#uses=4]
  store i8 %k_buf_2_val_0_load, i8* %col_buf_val_2_0_0, align 1
  %k_buf_2_val_1_addr = getelementptr [1920 x i8]* %k_buf_2_val_1, i64 0, i64 %tmp_177_2 ; <i8*> [#uses=1]
  %k_buf_2_val_1_load = load i8* %k_buf_2_val_1_addr, align 1 ; <i8> [#uses=6]
  %k_buf_2_val_2_addr = getelementptr [1920 x i8]* %k_buf_2_val_2, i64 0, i64 %tmp_177_2 ; <i8*> [#uses=1]
  %k_buf_2_val_2_load = load i8* %k_buf_2_val_2_addr, align 1 ; <i8> [#uses=6]
  %sel_tmp26 = select i1 %sel_tmp10, i8 %k_buf_2_val_0_load, i8 %k_buf_2_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_2_val_0_0_2 = select i1 %sel_tmp12, i8 %k_buf_2_val_1_load, i8 %sel_tmp26 ; <i8> [#uses=3]
  %sel_tmp27 = select i1 %sel_tmp17, i8 %k_buf_2_val_0_load, i8 %k_buf_2_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_2_val_1_0_2 = select i1 %sel_tmp19, i8 %k_buf_2_val_1_load, i8 %sel_tmp27 ; <i8> [#uses=3]
  switch i2 %locy_0_2_t, label %branch44 [
    i2 0, label %branch42
    i2 1, label %bb85.2.pre
  ]

bb4.i502.preheader.2_ifconv:                      ; preds = %bb85.2
  %src_kernel_win_2_val_0_0_load = load i8* %src_kernel_win_2_val_0_0 ; <i8> [#uses=1]
  %src_kernel_win_2_val_0_1_load = load i8* %src_kernel_win_2_val_0_1 ; <i8> [#uses=1]
  %src_kernel_win_2_val_2_1_load = load i8* %src_kernel_win_2_val_2_1 ; <i8> [#uses=1]
  %src_kernel_win_2_val_2_0_load = load i8* %src_kernel_win_2_val_2_0 ; <i8> [#uses=1]
  %src_kernel_win_2_val_1_0_load = load i8* %src_kernel_win_2_val_1_0 ; <i8> [#uses=1]
  %src_kernel_win_2_val_1_1_load = load i8* %src_kernel_win_2_val_1_1 ; <i8> [#uses=1]
  %tmp_229_2_0_0_cast_cast = zext i8 %src_kernel_win_2_val_2_1_load to i9 ; <i9> [#uses=1]
  %tmp_230_2_0_2_cast_cast = zext i8 %src_kernel_win_2_val_2_0_load to i9 ; <i9> [#uses=1]
  %sum_V_10 = sub i9 %tmp_230_2_0_2_cast_cast, %tmp_229_2_0_0_cast_cast ; <i9> [#uses=1]
  %sum_V_4_2_0_2_cast_cast = sext i9 %sum_V_10 to i11 ; <i11> [#uses=1]
  %tmp_48 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_2_val_1_1_load, i1 false) ; <i9> [#uses=1]
  %p_shl2 = zext i9 %tmp_48 to i11                ; <i11> [#uses=1]
  %sum_V_11 = sub i11 %sum_V_4_2_0_2_cast_cast, %p_shl2 ; <i11> [#uses=1]
  %tmp_230_2_1_2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %src_kernel_win_2_val_1_0_load, i1 false) ; <i9> [#uses=1]
  %tmp_230_2_1_2_cast_cast = zext i9 %tmp_230_2_1_2 to i11 ; <i11> [#uses=1]
  %sum_V_12 = add i11 %sum_V_11, %tmp_230_2_1_2_cast_cast ; <i11> [#uses=1]
  %tmp_229_2_2_0_cast_cast = zext i8 %src_kernel_win_2_val_0_1_load to i9 ; <i9> [#uses=1]
  %tmp_230_2_2 = sub i9 0, %tmp_229_2_2_0_cast_cast ; <i9> [#uses=1]
  %tmp_230_2_2_cast = sext i9 %tmp_230_2_2 to i11 ; <i11> [#uses=1]
  %sum_V_13 = add i11 %sum_V_12, %tmp_230_2_2_cast ; <i11> [#uses=1]
  %tmp_230_2_2_2_cast_cast = zext i8 %src_kernel_win_2_val_0_0_load to i11 ; <i11> [#uses=1]
  %sum_V_14 = add i11 %sum_V_13, %tmp_230_2_2_2_cast_cast ; <i11> [#uses=3]
  %tmp_221_2 = icmp sgt i11 %sum_V_14, 0          ; <i1> [#uses=1]
  %tr4 = call i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11 %sum_V_14, i32 8, i32 10) ; <i3> [#uses=1]
  %icmp4 = icmp sgt i3 %tr4, 0                    ; <i1> [#uses=1]
  %tmp_52 = trunc i11 %sum_V_14 to i8             ; <i8> [#uses=1]
  %phitmp_2 = select i1 %icmp4, i8 -1, i8 %tmp_52 ; <i8> [#uses=1]
  %temp_9 = select i1 %tmp_221_2, i8 %phitmp_2, i8 0 ; <i8> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %p_dst_data_stream_2_V, i8 %temp_9)
  br label %bb99.2

bb103:                                            ; preds = %bb99.2, %bb12
  %t_V_1 = phi i12 [ 0, %bb12 ], [ %j_V, %bb99.2 ] ; <i12> [#uses=3]
  %src_kernel_win_0_val_0_1_1 = load i8* %src_kernel_win_0_val_0_0 ; <i8> [#uses=1]
  %src_kernel_win_0_val_1_1_1 = load i8* %src_kernel_win_0_val_1_0 ; <i8> [#uses=1]
  %src_kernel_win_0_val_2_1_1 = load i8* %src_kernel_win_0_val_2_0 ; <i8> [#uses=1]
  %src_kernel_win_1_val_0_1_1 = load i8* %src_kernel_win_1_val_0_0 ; <i8> [#uses=1]
  %src_kernel_win_1_val_0_0_7 = load i8* %src_kernel_win_1_val_0_0_1 ; <i8> [#uses=3]
  %src_kernel_win_1_val_2_1_1 = load i8* %src_kernel_win_1_val_2_0 ; <i8> [#uses=1]
  %src_kernel_win_1_val_1_1_1 = load i8* %src_kernel_win_1_val_1_0 ; <i8> [#uses=1]
  %src_kernel_win_0_val_1_0_5 = load i8* %src_kernel_win_0_val_1_0_1 ; <i8> [#uses=3]
  %src_kernel_win_0_val_0_0_7 = load i8* %src_kernel_win_0_val_0_0_1 ; <i8> [#uses=3]
  %src_kernel_win_2_val_0_1_1 = load i8* %src_kernel_win_2_val_0_0 ; <i8> [#uses=1]
  %src_kernel_win_2_val_2_1_1 = load i8* %src_kernel_win_2_val_2_0 ; <i8> [#uses=1]
  %src_kernel_win_2_val_1_1_1 = load i8* %src_kernel_win_2_val_1_0 ; <i8> [#uses=1]
  %tmp_155_cast1 = zext i12 %t_V_1 to i13         ; <i13> [#uses=4]
  %tmp_4 = icmp ult i13 %tmp_155_cast1, %widthloop ; <i1> [#uses=1]
  %j_V = add i12 %t_V_1, 1                        ; <i12> [#uses=1]
  br i1 %tmp_4, label %bb13_ifconv, label %bb104

bb104:                                            ; preds = %bb103
  %empty_100 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str34, i32 %tmp_3) ; <i32> [#uses=0]
  br label %bb106

bb106:                                            ; preds = %bb104, %bb11
  %t_V = phi i12 [ 0, %bb11 ], [ %i_V, %bb104 ]   ; <i12> [#uses=3]
  %tmp7_cast1 = zext i12 %t_V to i13              ; <i13> [#uses=4]
  %tmp7_cast = zext i12 %t_V to i14               ; <i14> [#uses=2]
  %p_assign_4 = sub i13 3, %tmp7_cast1            ; <i13> [#uses=3]
  %tmp_2 = icmp ult i14 %tmp7_cast, %heightloop_cast63_cast ; <i1> [#uses=1]
  %i_V = add i12 %t_V, 1                          ; <i12> [#uses=1]
  br i1 %tmp_2, label %bb12, label %bb107

bb107:                                            ; preds = %bb106
  ret void

branch0:                                          ; preds = %bb3
  br label %bb3304

branch1:                                          ; preds = %bb3
  br label %bb3304

branch2:                                          ; preds = %bb3
  br label %bb3304

branch3:                                          ; preds = %bb3304
  br label %bb3304305

branch4:                                          ; preds = %bb3304
  br label %bb3304305

branch5:                                          ; preds = %bb3304
  br label %bb3304305

branch6:                                          ; preds = %bb6
  br label %bb6345

branch7:                                          ; preds = %bb6
  br label %bb6345

branch8:                                          ; preds = %bb6
  br label %bb6345

branch9:                                          ; preds = %bb6345
  br label %bb6345346

branch10:                                         ; preds = %bb6345
  br label %bb6345346

branch11:                                         ; preds = %bb6345
  br label %bb6345346

branch12:                                         ; preds = %bb9
  br label %bb9470

branch13:                                         ; preds = %bb9
  br label %bb9470

branch14:                                         ; preds = %bb9
  br label %bb9470

branch15:                                         ; preds = %bb9470
  br label %bb9470471

branch16:                                         ; preds = %bb9470
  br label %bb9470471

branch17:                                         ; preds = %bb9470
  br label %bb9470471

branch24:                                         ; preds = %bb29.preheader.0_ifconv
  store i8 %k_buf_0_val_1_load, i8* %src_kernel_win_0_val_0_0_1
  store i8 %k_buf_0_val_2_load, i8* %src_kernel_win_0_val_1_0_1
  store i8 %k_buf_0_val_0_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_2, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_2, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch26:                                         ; preds = %bb29.preheader.0_ifconv
  store i8 %k_buf_0_val_1_load, i8* %src_kernel_win_0_val_0_0_1
  store i8 %k_buf_0_val_2_load, i8* %src_kernel_win_0_val_1_0_1
  store i8 %k_buf_0_val_2_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_2, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_2, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch33:                                         ; preds = %bb29.preheader.1_ifconv
  store i8 %src_kernel_win_1_val_1_0_2, i8* %src_kernel_win_1_val_1_0
  store i8 %k_buf_1_val_0_load, i8* %src_kernel_win_1_val_2_0
  store i8 %k_buf_1_val_1_load, i8* %src_kernel_win_1_val_0_0_1
  store i8 %src_kernel_win_1_val_0_0_2, i8* %src_kernel_win_1_val_0_0
  store i8 %k_buf_1_val_2_load, i8* %src_kernel_win_1_val_1_0_1
  br label %bb85.1

branch35:                                         ; preds = %bb29.preheader.1_ifconv
  store i8 %src_kernel_win_1_val_1_0_2, i8* %src_kernel_win_1_val_1_0
  store i8 %k_buf_1_val_2_load, i8* %src_kernel_win_1_val_2_0
  store i8 %k_buf_1_val_1_load, i8* %src_kernel_win_1_val_0_0_1
  store i8 %src_kernel_win_1_val_0_0_2, i8* %src_kernel_win_1_val_0_0
  store i8 %k_buf_1_val_2_load, i8* %src_kernel_win_1_val_1_0_1
  br label %bb85.1

branch42:                                         ; preds = %bb29.preheader.2_ifconv
  store i8 %src_kernel_win_2_val_1_0_2, i8* %src_kernel_win_2_val_1_0
  store i8 %k_buf_2_val_0_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_2, i8* %src_kernel_win_2_val_0_0
  store i8 %k_buf_2_val_1_load, i8* %src_kernel_win_2_val_0_0_1
  store i8 %k_buf_2_val_2_load, i8* %src_kernel_win_2_val_1_0_1
  br label %bb85.2

branch44:                                         ; preds = %bb29.preheader.2_ifconv
  store i8 %src_kernel_win_2_val_1_0_2, i8* %src_kernel_win_2_val_1_0
  store i8 %k_buf_2_val_2_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_2, i8* %src_kernel_win_2_val_0_0
  store i8 %k_buf_2_val_1_load, i8* %src_kernel_win_2_val_0_0_1
  store i8 %k_buf_2_val_2_load, i8* %src_kernel_win_2_val_1_0_1
  br label %bb85.2

branch45:                                         ; preds = %bb81.preheader.0
  %right_border_buf_0_val_0_0_load_1 = load i8* %right_border_buf_0_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_0_load_1, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_8, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_9, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch46:                                         ; preds = %bb81.preheader.0
  %right_border_buf_0_val_0_1_load_1 = load i8* %right_border_buf_0_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_1_load_1, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_8, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_9, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch47:                                         ; preds = %bb81.preheader.0
  %right_border_buf_0_val_0_2_load_1 = load i8* %right_border_buf_0_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_2_load_1, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_8, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_9, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch48:                                         ; preds = %bb70.preheader.0
  %right_border_buf_0_val_0_0_load = load i8* %right_border_buf_0_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_0_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_5, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_7, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch49:                                         ; preds = %bb70.preheader.0
  %right_border_buf_0_val_0_1_load = load i8* %right_border_buf_0_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_1_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_5, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_7, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch50:                                         ; preds = %bb70.preheader.0
  %right_border_buf_0_val_0_2_load = load i8* %right_border_buf_0_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_2_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_5, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_7, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch51:                                         ; preds = %bb41.0
  store i8 %Toppixel, i8* %right_border_buf_0_val_0_0, align 1
  br label %bb52.preheader.0

branch52:                                         ; preds = %bb41.0
  store i8 %Toppixel, i8* %right_border_buf_0_val_0_1, align 1
  br label %bb52.preheader.0

branch53:                                         ; preds = %bb41.0
  store i8 %Toppixel, i8* %right_border_buf_0_val_0_2, align 1
  br label %bb52.preheader.0

branch54:                                         ; preds = %bb81.preheader.1
  %right_border_buf_1_val_0_0_load_1 = load i8* %right_border_buf_1_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_6, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_0_load_1, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_9, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch55:                                         ; preds = %bb81.preheader.1
  %right_border_buf_1_val_0_1_load_1 = load i8* %right_border_buf_1_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_6, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_1_load_1, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_9, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch56:                                         ; preds = %bb81.preheader.1
  %right_border_buf_1_val_0_2_load_1 = load i8* %right_border_buf_1_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_6, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_2_load_1, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_9, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch57:                                         ; preds = %bb70.preheader.1
  %src_kernel_win_1_val_1_0_1_load_1 = load i8* %src_kernel_win_1_val_1_0_1 ; <i8> [#uses=1]
  %right_border_buf_1_val_0_0_load = load i8* %right_border_buf_1_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_1_load_1, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_0_load, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_7, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch58:                                         ; preds = %bb70.preheader.1
  %src_kernel_win_1_val_1_0_1_load_2 = load i8* %src_kernel_win_1_val_1_0_1 ; <i8> [#uses=1]
  %right_border_buf_1_val_0_1_load = load i8* %right_border_buf_1_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_1_load_2, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_1_load, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_7, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch59:                                         ; preds = %bb70.preheader.1
  %src_kernel_win_1_val_1_0_1_load = load i8* %src_kernel_win_1_val_1_0_1 ; <i8> [#uses=1]
  %right_border_buf_1_val_0_2_load = load i8* %right_border_buf_1_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_1_load, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_2_load, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_7, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch60:                                         ; preds = %bb41.1
  store i8 %Toppixel_1, i8* %right_border_buf_1_val_0_0, align 1
  br label %bb52.preheader.1

branch61:                                         ; preds = %bb41.1
  store i8 %Toppixel_1, i8* %right_border_buf_1_val_0_1, align 1
  br label %bb52.preheader.1

branch62:                                         ; preds = %bb41.1
  store i8 %Toppixel_1, i8* %right_border_buf_1_val_0_2, align 1
  br label %bb52.preheader.1

branch63:                                         ; preds = %bb81.preheader.2
  %right_border_buf_2_val_0_0_load_1 = load i8* %right_border_buf_2_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_6, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_0_load_1, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_8, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch64:                                         ; preds = %bb81.preheader.2
  %right_border_buf_2_val_0_1_load_1 = load i8* %right_border_buf_2_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_6, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_1_load_1, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_8, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch65:                                         ; preds = %bb81.preheader.2
  %right_border_buf_2_val_0_2_load_1 = load i8* %right_border_buf_2_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_6, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_2_load_1, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_8, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch66:                                         ; preds = %bb70.preheader.2
  %src_kernel_win_2_val_1_0_1_load_1 = load i8* %src_kernel_win_2_val_1_0_1 ; <i8> [#uses=1]
  %src_kernel_win_2_val_0_0_1_load_1 = load i8* %src_kernel_win_2_val_0_0_1 ; <i8> [#uses=1]
  %right_border_buf_2_val_0_0_load = load i8* %right_border_buf_2_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_1_load_1, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_0_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_1_load_1, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch67:                                         ; preds = %bb70.preheader.2
  %src_kernel_win_2_val_1_0_1_load_2 = load i8* %src_kernel_win_2_val_1_0_1 ; <i8> [#uses=1]
  %src_kernel_win_2_val_0_0_1_load_2 = load i8* %src_kernel_win_2_val_0_0_1 ; <i8> [#uses=1]
  %right_border_buf_2_val_0_1_load = load i8* %right_border_buf_2_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_1_load_2, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_1_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_1_load_2, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch68:                                         ; preds = %bb70.preheader.2
  %src_kernel_win_2_val_1_0_1_load = load i8* %src_kernel_win_2_val_1_0_1 ; <i8> [#uses=1]
  %src_kernel_win_2_val_0_0_1_load = load i8* %src_kernel_win_2_val_0_0_1 ; <i8> [#uses=1]
  %right_border_buf_2_val_0_2_load = load i8* %right_border_buf_2_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_1_load, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_2_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_1_load, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch69:                                         ; preds = %bb41.2
  store i8 %Toppixel_2, i8* %right_border_buf_2_val_0_0, align 1
  br label %bb52.preheader.2

branch70:                                         ; preds = %bb41.2
  store i8 %Toppixel_2, i8* %right_border_buf_2_val_0_1, align 1
  br label %bb52.preheader.2

branch71:                                         ; preds = %bb41.2
  store i8 %Toppixel_2, i8* %right_border_buf_2_val_0_2, align 1
  br label %bb52.preheader.2
}

define internal fastcc void @"getStructuringElement<unsigned char,int,int,3,3>"() nounwind readnone {
entry:
  br label %bb32, !dbg !466

bb27:                                             ; preds = %bb32, %bb27
  %j = phi i2 [ %indvar_next1, %bb27 ], [ 0, %bb32 ] ; <i2> [#uses=2]
  call void @llvm.dbg.value(metadata !{i2 %j}, i64 0, metadata !500), !dbg !501
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %exitcond = icmp eq i2 %j, -1, !dbg !503        ; <i1> [#uses=1]
  %indvar_next1 = add i2 %j, 1, !dbg !503         ; <i2> [#uses=1]
  br i1 %exitcond, label %bb30, label %bb27, !dbg !503

bb30:                                             ; preds = %bb27, %bb30
  %indvar = phi i32 [ %indvar_next, %bb30 ], [ 0, %bb27 ] ; <i32> [#uses=2]
  %exitcond5 = icmp eq i32 %indvar, 0, !dbg !504  ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 0, i64 0)
  %indvar_next = add i32 %indvar, 1, !dbg !504    ; <i32> [#uses=1]
  br i1 %exitcond5, label %bb32, label %bb30, !dbg !504

bb32:                                             ; preds = %bb30, %entry
  %i = phi i2 [ 0, %entry ], [ %i_1, %bb30 ]      ; <i2> [#uses=2]
  call void @llvm.dbg.value(metadata !{i2 %i}, i64 0, metadata !505)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %exitcond1 = icmp eq i2 %i, -1, !dbg !506       ; <i1> [#uses=1]
  %i_1 = add i2 %i, 1, !dbg !506                  ; <i2> [#uses=1]
  call void @llvm.dbg.value(metadata !{i2 %i_1}, i64 0, metadata !505), !dbg !506
  br i1 %exitcond1, label %return, label %bb27, !dbg !506

return:                                           ; preds = %bb32
  ret void
}

define internal fastcc void @"filter_opr<erode_kernel,16,16,unsigned char,int,1080,1920,3,3>"(i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V, i8 %kernel_val_0_0_read, i8 %kernel_val_0_1_read, i8 %kernel_val_0_2_read, i8 %kernel_val_1_0_read, i8 %kernel_val_1_1_read, i8 %kernel_val_1_2_read, i8 %kernel_val_2_0_read, i8 %kernel_val_2_1_read, i8 %kernel_val_2_2_read, i12 %rows, i12 %cols) {
entry_ifconv:
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_2_V, [8 x i8]* @str170, i32 0, i32 0, [8 x i8]* @str170) ; <i32> [#uses=0]
  %empty_101 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_1_V, [8 x i8]* @str167, i32 0, i32 0, [8 x i8]* @str167) ; <i32> [#uses=0]
  %empty_102 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_0_V, [8 x i8]* @str164, i32 0, i32 0, [8 x i8]* @str164) ; <i32> [#uses=0]
  %empty_103 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_2_V, [8 x i8]* @str161, i32 0, i32 0, [8 x i8]* @str161) ; <i32> [#uses=0]
  %empty_104 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_1_V, [8 x i8]* @str158, i32 0, i32 0, [8 x i8]* @str158) ; <i32> [#uses=0]
  %empty_105 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_0_V, [8 x i8]* @str155, i32 0, i32 0, [8 x i8]* @str155) ; <i32> [#uses=0]
  %cols_read = call i12 @_ssdm_op_WireRead.i12(i12 %cols) ; <i12> [#uses=3]
  %rows_read = call i12 @_ssdm_op_WireRead.i12(i12 %rows) ; <i12> [#uses=1]
  %kernel_val_2_2_read_1 = call i8 @_ssdm_op_WireRead.i8(i8 %kernel_val_2_2_read) ; <i8> [#uses=1]
  %kernel_val_2_1_read_1 = call i8 @_ssdm_op_WireRead.i8(i8 %kernel_val_2_1_read) ; <i8> [#uses=1]
  %kernel_val_2_0_read_1 = call i8 @_ssdm_op_WireRead.i8(i8 %kernel_val_2_0_read) ; <i8> [#uses=1]
  %kernel_val_1_2_read_1 = call i8 @_ssdm_op_WireRead.i8(i8 %kernel_val_1_2_read) ; <i8> [#uses=1]
  %kernel_val_1_1_read_1 = call i8 @_ssdm_op_WireRead.i8(i8 %kernel_val_1_1_read) ; <i8> [#uses=1]
  %kernel_val_1_0_read_1 = call i8 @_ssdm_op_WireRead.i8(i8 %kernel_val_1_0_read) ; <i8> [#uses=1]
  %kernel_val_0_2_read_1 = call i8 @_ssdm_op_WireRead.i8(i8 %kernel_val_0_2_read) ; <i8> [#uses=1]
  %kernel_val_0_1_read_1 = call i8 @_ssdm_op_WireRead.i8(i8 %kernel_val_0_1_read) ; <i8> [#uses=1]
  %kernel_val_0_0_read_1 = call i8 @_ssdm_op_WireRead.i8(i8 %kernel_val_0_0_read) ; <i8> [#uses=1]
  %k_buf_0_val_0 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=3]
  %k_buf_0_val_1 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %k_buf_0_val_2 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %k_buf_1_val_0 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=3]
  %k_buf_1_val_1 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %k_buf_1_val_2 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %k_buf_2_val_0 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=3]
  %k_buf_2_val_1 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %k_buf_2_val_2 = alloca [1920 x i8], align 1    ; <[1920 x i8]*> [#uses=4]
  %right_border_buf_0_val_0_0 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_0_val_0_1 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_0_val_0_2 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_1_val_0_0 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_1_val_0_1 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_1_val_0_2 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_2_val_0_0 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_2_val_0_1 = alloca i8, align 1 ; <i8*> [#uses=3]
  %right_border_buf_2_val_0_2 = alloca i8, align 1 ; <i8*> [#uses=3]
  %col_buf_val_0_0_0 = alloca i8, align 1         ; <i8*> [#uses=1]
  %col_buf_val_1_0_0 = alloca i8, align 1         ; <i8*> [#uses=1]
  %col_buf_val_2_0_0 = alloca i8, align 1         ; <i8*> [#uses=1]
  br label %bb4

bb3:                                              ; preds = %bb4
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([59 x i8]* @p_str48) nounwind ; <i32> [#uses=1]
  switch i2 %p_0202_rec, label %branch2 [
    i2 0, label %branch0
    i2 1, label %branch1
  ]

bb3315:                                           ; preds = %branch2, %branch1, %branch0
  switch i2 %p_0202_rec, label %branch5 [
    i2 0, label %branch3
    i2 1, label %branch4
  ]

bb3315316:                                        ; preds = %branch5, %branch4, %branch3
  %rend484 = call i32 (...)* @_ssdm_op_SpecRegionEnd([59 x i8]* @p_str48, i32 %rbegin6) nounwind ; <i32> [#uses=0]
  br label %bb4

bb4:                                              ; preds = %bb3315316, %entry_ifconv
  %p_0202_rec = phi i2 [ %p_rec2, %bb3315316 ], [ 0, %entry_ifconv ] ; <i2> [#uses=4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %exitcond9 = icmp eq i2 %p_0202_rec, -1         ; <i1> [#uses=1]
  %p_rec2 = add i2 %p_0202_rec, 1                 ; <i2> [#uses=1]
  br i1 %exitcond9, label %bb7, label %bb3

bb6:                                              ; preds = %bb7
  %rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([56 x i8]* @p_str50) nounwind ; <i32> [#uses=1]
  switch i2 %p_0206_rec, label %branch8 [
    i2 0, label %branch6
    i2 1, label %branch7
  ]

bb6356:                                           ; preds = %branch8, %branch7, %branch6
  switch i2 %p_0206_rec, label %branch11 [
    i2 0, label %branch9
    i2 1, label %branch10
  ]

bb6356357:                                        ; preds = %branch11, %branch10, %branch9
  %rend486 = call i32 (...)* @_ssdm_op_SpecRegionEnd([56 x i8]* @p_str50, i32 %rbegin7) nounwind ; <i32> [#uses=0]
  br label %bb7

bb7:                                              ; preds = %bb4, %bb6356357
  %p_0206_rec = phi i2 [ %p_rec3, %bb6356357 ], [ 0, %bb4 ] ; <i2> [#uses=4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %exitcond8 = icmp eq i2 %p_0206_rec, -1         ; <i1> [#uses=1]
  %p_rec3 = add i2 %p_0206_rec, 1                 ; <i2> [#uses=1]
  br i1 %exitcond8, label %bb10, label %bb6

bb9:                                              ; preds = %bb10
  %rbegin8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([56 x i8]* @p_str52) nounwind ; <i32> [#uses=1]
  switch i2 %p_0210_rec, label %branch14 [
    i2 0, label %branch12
    i2 1, label %branch13
  ]

bb9481:                                           ; preds = %branch14, %branch13, %branch12
  switch i2 %p_0210_rec, label %branch17 [
    i2 0, label %branch15
    i2 1, label %branch16
  ]

bb9481482:                                        ; preds = %branch17, %branch16, %branch15
  %rend488 = call i32 (...)* @_ssdm_op_SpecRegionEnd([56 x i8]* @p_str52, i32 %rbegin8) nounwind ; <i32> [#uses=0]
  br label %bb10

bb10:                                             ; preds = %bb7, %bb9481482
  %p_0210_rec = phi i2 [ %p_rec, %bb9481482 ], [ 0, %bb7 ] ; <i2> [#uses=4]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %exitcond7 = icmp eq i2 %p_0210_rec, -1         ; <i1> [#uses=1]
  %p_rec = add i2 %p_0210_rec, 1                  ; <i2> [#uses=1]
  br i1 %exitcond7, label %bb11, label %bb9

bb11:                                             ; preds = %bb10
  %src_kernel_win_0_val_0_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_0_val_0_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_2_val_1_0_7 = alloca i8         ; <i8*> [#uses=7]
  %src_kernel_win_0_val_1_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_0_val_1_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_2_val_0_0_11 = alloca i8        ; <i8*> [#uses=7]
  %src_kernel_win_0_val_2_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_0_val_2_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_1_val_1_0_7 = alloca i8         ; <i8*> [#uses=7]
  %src_kernel_win_1_val_0_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_1_val_0_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_1_val_0_0_11 = alloca i8        ; <i8*> [#uses=5]
  %src_kernel_win_1_val_2_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_1_val_1_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_1_val_1_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_0_val_1_0_10 = alloca i8        ; <i8*> [#uses=5]
  %src_kernel_win_1_val_2_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_0_val_0_0_11 = alloca i8        ; <i8*> [#uses=5]
  %src_kernel_win_2_val_0_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_2_val_0_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_2_val_2_1 = alloca i8           ; <i8*> [#uses=2]
  %src_kernel_win_2_val_2_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_2_val_1_0 = alloca i8           ; <i8*> [#uses=13]
  %src_kernel_win_2_val_1_1 = alloca i8           ; <i8*> [#uses=2]
  %rows_cast = zext i12 %rows_read to i13         ; <i13> [#uses=5]
  %heightloop = add i13 %rows_cast, 5             ; <i13> [#uses=1]
  %heightloop_cast59_cast = zext i13 %heightloop to i14 ; <i14> [#uses=3]
  %cols_cast7 = zext i12 %cols_read to i13        ; <i13> [#uses=4]
  %widthloop = add i13 %cols_cast7, 2             ; <i13> [#uses=2]
  %ref = add i13 %rows_cast, -1                   ; <i13> [#uses=6]
  %cols_cast8 = zext i12 %cols_read to i14        ; <i14> [#uses=6]
  %tmp_s = add i13 %cols_cast7, -1                ; <i13> [#uses=7]
  %tmp_57 = trunc i12 %cols_read to i2            ; <i2> [#uses=1]
  %tmp_5 = add i13 %cols_cast7, -3                ; <i13> [#uses=3]
  %tmp_59 = trunc i13 %ref to i2                  ; <i2> [#uses=1]
  %tmp_142_2 = icmp eq i8 %kernel_val_2_2_read_1, 0 ; <i1> [#uses=3]
  %tmp_142_2_0_1_not = icmp ne i8 %kernel_val_2_1_read_1, 0 ; <i1> [#uses=3]
  %tmp_142_2_0_2_not = icmp ne i8 %kernel_val_2_0_read_1, 0 ; <i1> [#uses=3]
  %tmp_142_2_1_0_not = icmp ne i8 %kernel_val_1_2_read_1, 0 ; <i1> [#uses=3]
  %tmp_142_2_1_1_not = icmp ne i8 %kernel_val_1_1_read_1, 0 ; <i1> [#uses=3]
  %tmp_142_2_1_2_not = icmp ne i8 %kernel_val_1_0_read_1, 0 ; <i1> [#uses=3]
  %tmp_142_2_2_0_not = icmp ne i8 %kernel_val_0_2_read_1, 0 ; <i1> [#uses=3]
  %tmp_142_2_2_1_not = icmp ne i8 %kernel_val_0_1_read_1, 0 ; <i1> [#uses=3]
  %tmp_142_2_2_2_not = icmp ne i8 %kernel_val_0_0_read_1, 0 ; <i1> [#uses=3]
  %tmp_49 = xor i2 %tmp_57, -1                    ; <i2> [#uses=9]
  br label %bb106

bb12:                                             ; preds = %bb106
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str34) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 1080, i64 0)
  %ult = icmp ult i14 %tmp19_cast, %heightloop_cast59_cast ; <i1> [#uses=1]
  %rev6 = xor i1 %ult, true                       ; <i1> [#uses=1]
  %ImagLoc_y = add i13 %tmp19_cast1, -4           ; <i13> [#uses=9]
  %ImagLoc_y_0_0_cast1 = sext i13 %ImagLoc_y to i14 ; <i14> [#uses=1]
  %tmp_87_not = icmp sgt i13 %ImagLoc_y, -2       ; <i1> [#uses=2]
  %tr5 = call i12 @_ssdm_op_PartSelect.i12.i13.i32.i32(i13 %ImagLoc_y, i32 1, i32 12) ; <i12> [#uses=1]
  %icmp5 = icmp slt i12 %tr5, 1                   ; <i1> [#uses=2]
  %or_cond = and i1 %icmp5, %tmp_87_not           ; <i1> [#uses=1]
  %tmp_51 = icmp slt i13 %ImagLoc_y, %ref         ; <i1> [#uses=1]
  %tmp_53 = icmp ult i13 %ImagLoc_y, %rows_cast   ; <i1> [#uses=1]
  %tmp_61 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %ImagLoc_y, i32 12) ; <i1> [#uses=1]
  %p_assign_s = select i1 %tmp_61, i13 0, i13 %ref ; <i13> [#uses=1]
  %tmp_54 = select i1 %tmp_53, i13 %ImagLoc_y, i13 %p_assign_s ; <i13> [#uses=1]
  %tmp_52 = select i1 %tmp_51, i2 -2, i2 %tmp_59  ; <i2> [#uses=5]
  %tmp_63 = trunc i13 %tmp_54 to i2               ; <i2> [#uses=2]
  %locy_0_0_t = sub i2 %tmp_52, %tmp_63           ; <i2> [#uses=1]
  %sel_tmp = icmp eq i2 %tmp_52, %tmp_63          ; <i1> [#uses=3]
  %sel_tmp4 = icmp eq i2 %locy_0_0_t, 1           ; <i1> [#uses=3]
  %ImagLoc_y_3 = add i13 %tmp19_cast1, -5         ; <i13> [#uses=3]
  %tmp_99_0_1 = icmp ult i13 %ImagLoc_y_3, %rows_cast ; <i1> [#uses=1]
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %ImagLoc_y_3, i32 12) ; <i1> [#uses=1]
  %p_assign_12 = select i1 %tmp_68, i13 0, i13 %ref ; <i13> [#uses=1]
  %tmp_132_0_1_v = select i1 %tmp_99_0_1, i13 %ImagLoc_y_3, i13 %p_assign_12 ; <i13> [#uses=1]
  %tmp_72 = trunc i13 %tmp_132_0_1_v to i2        ; <i2> [#uses=2]
  %locy_0_1_t = sub i2 %tmp_52, %tmp_72           ; <i2> [#uses=1]
  %sel_tmp7 = icmp eq i2 %tmp_52, %tmp_72         ; <i1> [#uses=3]
  %sel_tmp9 = icmp eq i2 %locy_0_1_t, 1           ; <i1> [#uses=3]
  %ImagLoc_y_4 = add i13 %tmp19_cast1, -6         ; <i13> [#uses=3]
  %tmp_99_0_2 = icmp ult i13 %ImagLoc_y_4, %rows_cast ; <i1> [#uses=1]
  %tmp_74 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %ImagLoc_y_4, i32 12) ; <i1> [#uses=1]
  %p_assign_13 = select i1 %tmp_74, i13 0, i13 %ref ; <i13> [#uses=1]
  %tmp_132_0_2_v = select i1 %tmp_99_0_2, i13 %ImagLoc_y_4, i13 %p_assign_13 ; <i13> [#uses=1]
  %tmp_76 = trunc i13 %tmp_132_0_2_v to i2        ; <i2> [#uses=1]
  %locy_0_2_t = sub i2 %tmp_52, %tmp_76           ; <i2> [#uses=3]
  %tmp_55 = icmp slt i13 %ImagLoc_y, 1            ; <i1> [#uses=1]
  %slt = icmp slt i13 %ImagLoc_y, %ref            ; <i1> [#uses=1]
  %rev = xor i1 %slt, true                        ; <i1> [#uses=2]
  %tmp_93_2 = icmp slt i14 %ImagLoc_y_0_0_cast1, %heightloop_cast59_cast ; <i1> [#uses=1]
  %or_cond36_2 = and i1 %tmp_93_2, %rev           ; <i1> [#uses=1]
  %brmerge38_2 = or i1 %icmp5, %rev               ; <i1> [#uses=1]
  %or_cond1 = and i1 %brmerge38_2, %tmp_87_not    ; <i1> [#uses=3]
  br label %bb103

bb13_ifconv:                                      ; preds = %bb103
  %tmp_50 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str35) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 1920, i64 0)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str20) nounwind
  %tr = call i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12 %t_V_2, i32 1, i32 11) ; <i11> [#uses=1]
  %icmp = icmp eq i11 %tr, 0                      ; <i1> [#uses=1]
  %ImagLoc_x = add i13 %tmp_72_cast1, -1          ; <i13> [#uses=13]
  %ImagLoc_x_0_0_cast1 = sext i13 %ImagLoc_x to i14 ; <i14> [#uses=6]
  %tmp_56 = icmp ult i13 %ImagLoc_x, %cols_cast7  ; <i1> [#uses=1]
  %tmp_77 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %ImagLoc_x, i32 12) ; <i1> [#uses=7]
  %p_assign_1 = select i1 %tmp_77, i13 0, i13 %tmp_s ; <i13> [#uses=1]
  %x = select i1 %tmp_56, i13 %ImagLoc_x, i13 %p_assign_1 ; <i13> [#uses=21]
  %brmerge = or i1 %or_cond, %or_cond36_2         ; <i1> [#uses=3]
  br i1 %brmerge, label %bb29.preheader.0_ifconv, label %bb33.0

bb99.0_ifconv:                                    ; preds = %bb7.i505.preheader.0, %bb85.0
  br i1 %brmerge, label %bb29.preheader.1_ifconv, label %bb33.1

bb85.0.pre:                                       ; preds = %bb29.preheader.0_ifconv
  store i8 %k_buf_0_val_1_load, i8* %src_kernel_win_0_val_0_0_11
  store i8 %k_buf_0_val_2_load, i8* %src_kernel_win_0_val_1_0_10
  store i8 %k_buf_0_val_1_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_1, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_9, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

bb85.0:                                           ; preds = %bb85.0.pre, %branch50, %branch49, %branch48, %branch47, %branch46, %branch45, %branch26, %branch24, %bb61.preheader.0, %bb74.0, %bb33.0, %bb52.preheader.0
  %ult2 = icmp ult i13 %tmp_72_cast1, %widthloop  ; <i1> [#uses=1]
  %rev8 = xor i1 %ult2, true                      ; <i1> [#uses=1]
  %tmp43 = or i1 %icmp, %tmp_55                   ; <i1> [#uses=1]
  %tmp44 = or i1 %rev6, %rev8                     ; <i1> [#uses=1]
  %brmerge1 = or i1 %tmp44, %tmp43                ; <i1> [#uses=3]
  br i1 %brmerge1, label %bb99.0_ifconv, label %bb7.i505.preheader.0

bb52.preheader.0:                                 ; preds = %branch53, %branch52, %branch51, %bb38.0
  %k_buf_0_val_1_addr_5 = getelementptr [1920 x i8]* %k_buf_0_val_1, i64 0, i64 %tmp_62 ; <i8*> [#uses=2]
  %temp_57 = load i8* %k_buf_0_val_1_addr_5, align 1 ; <i8> [#uses=3]
  store i8 %temp_57, i8* %k_buf_0_val_2_addr_4, align 1
  %k_buf_0_val_0_addr_4 = getelementptr [1920 x i8]* %k_buf_0_val_0, i64 0, i64 %tmp_62 ; <i8*> [#uses=2]
  %temp_58 = load i8* %k_buf_0_val_0_addr_4, align 1 ; <i8> [#uses=3]
  store i8 %temp_58, i8* %k_buf_0_val_1_addr_5, align 1
  %tmp_90 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %p_src_data_stream_0_V) ; <i8> [#uses=1]
  store i8 %tmp_90, i8* %k_buf_0_val_0_addr_4, align 1
  store i8 %temp_58, i8* %src_kernel_win_0_val_0_0_11
  store i8 %temp_57, i8* %src_kernel_win_0_val_1_0_10
  store i8 %Toppixel, i8* %src_kernel_win_0_val_2_0
  store i8 %temp_57, i8* %src_kernel_win_0_val_1_0
  store i8 %temp_58, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

bb38.0:                                           ; preds = %bb37.0
  %tmp_62 = sext i13 %ImagLoc_x to i64            ; <i64> [#uses=3]
  %k_buf_0_val_2_addr_4 = getelementptr [1920 x i8]* %k_buf_0_val_2, i64 0, i64 %tmp_62 ; <i8*> [#uses=2]
  %Toppixel = load i8* %k_buf_0_val_2_addr_4, align 1 ; <i8> [#uses=4]
  %tmp_64 = icmp slt i13 %ImagLoc_x, %tmp_5       ; <i1> [#uses=1]
  br i1 %tmp_64, label %bb52.preheader.0, label %bb41.0

bb37.0:                                           ; preds = %bb36.0
  %tmp_60 = icmp slt i14 %ImagLoc_x_0_0_cast1, %cols_cast8 ; <i1> [#uses=1]
  br i1 %tmp_60, label %bb38.0, label %bb55.0

bb36.0:                                           ; preds = %bb33.0
  br i1 %tmp_77, label %bb61.preheader.0, label %bb37.0

bb33.0:                                           ; preds = %bb13_ifconv
  br i1 %or_cond1, label %bb85.0, label %bb36.0

bb41.0:                                           ; preds = %bb38.0
  %tmp_78 = trunc i13 %ImagLoc_x to i2            ; <i2> [#uses=1]
  %tmp_104_0_t = add i2 %tmp_78, %tmp_49          ; <i2> [#uses=1]
  switch i2 %tmp_104_0_t, label %branch53 [
    i2 0, label %branch51
    i2 1, label %branch52
  ]

bb70.preheader.0:                                 ; preds = %bb63.0
  %tmp_79 = trunc i13 %x to i2                    ; <i2> [#uses=1]
  %tmp_123_0_t = add i2 %tmp_79, %tmp_49          ; <i2> [#uses=1]
  switch i2 %tmp_123_0_t, label %branch50 [
    i2 0, label %branch48
    i2 1, label %branch49
  ]

bb63.0:                                           ; preds = %bb55.0
  %slt4 = icmp slt i14 %ImagLoc_x_0_0_cast1, %cols_cast8 ; <i1> [#uses=1]
  %rev7 = xor i1 %slt4, true                      ; <i1> [#uses=2]
  %tmp_66 = icmp eq i13 %tmp_s, %x                ; <i1> [#uses=1]
  %or_cond3 = and i1 %rev7, %tmp_66               ; <i1> [#uses=1]
  br i1 %or_cond3, label %bb70.preheader.0, label %bb74.0

bb55.0:                                           ; preds = %bb37.0
  br i1 %tmp_77, label %bb61.preheader.0, label %bb63.0

bb74.0:                                           ; preds = %bb63.0
  %tmp_67 = icmp sgt i13 %tmp_s, %x               ; <i1> [#uses=1]
  %or_cond2 = and i1 %rev7, %tmp_67               ; <i1> [#uses=1]
  br i1 %or_cond2, label %bb81.preheader.0, label %bb85.0

bb81.preheader.0:                                 ; preds = %bb74.0
  %tmp_69 = sext i13 %x to i64                    ; <i64> [#uses=2]
  %k_buf_0_val_1_addr_6 = getelementptr [1920 x i8]* %k_buf_0_val_1, i64 0, i64 %tmp_69 ; <i8*> [#uses=1]
  %src_kernel_win_0_val_0_0_18 = load i8* %k_buf_0_val_1_addr_6, align 1 ; <i8> [#uses=3]
  %k_buf_0_val_2_addr_6 = getelementptr [1920 x i8]* %k_buf_0_val_2, i64 0, i64 %tmp_69 ; <i8*> [#uses=1]
  %src_kernel_win_0_val_1_0_17 = load i8* %k_buf_0_val_2_addr_6, align 1 ; <i8> [#uses=3]
  %tmp_81 = trunc i13 %x to i2                    ; <i2> [#uses=1]
  %tmp_128_0_t = add i2 %tmp_81, %tmp_49          ; <i2> [#uses=1]
  switch i2 %tmp_128_0_t, label %branch47 [
    i2 0, label %branch45
    i2 1, label %branch46
  ]

bb61.preheader.0:                                 ; preds = %bb55.0, %bb36.0
  %tmp_65 = sext i13 %x to i64                    ; <i64> [#uses=3]
  %k_buf_0_val_0_addr_3 = getelementptr [1920 x i8]* %k_buf_0_val_0, i64 0, i64 %tmp_65 ; <i8*> [#uses=1]
  %src_kernel_win_0_val_0_0_14 = load i8* %k_buf_0_val_0_addr_3, align 1 ; <i8> [#uses=1]
  %k_buf_0_val_1_addr_4 = getelementptr [1920 x i8]* %k_buf_0_val_1, i64 0, i64 %tmp_65 ; <i8*> [#uses=1]
  %src_kernel_win_0_val_1_0_13 = load i8* %k_buf_0_val_1_addr_4, align 1 ; <i8> [#uses=1]
  %k_buf_0_val_2_addr_5 = getelementptr [1920 x i8]* %k_buf_0_val_2, i64 0, i64 %tmp_65 ; <i8*> [#uses=1]
  %src_kernel_win_0_val_2_0_6 = load i8* %k_buf_0_val_2_addr_5, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_0_val_2_0_6, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_13, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_14, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

bb29.preheader.0_ifconv:                          ; preds = %bb13_ifconv
  %tmp_58 = sext i13 %x to i64                    ; <i64> [#uses=3]
  %k_buf_0_val_0_addr = getelementptr [1920 x i8]* %k_buf_0_val_0, i64 0, i64 %tmp_58 ; <i8*> [#uses=1]
  %k_buf_0_val_0_load = load i8* %k_buf_0_val_0_addr, align 1 ; <i8> [#uses=4]
  store i8 %k_buf_0_val_0_load, i8* %col_buf_val_0_0_0, align 1
  %k_buf_0_val_1_addr = getelementptr [1920 x i8]* %k_buf_0_val_1, i64 0, i64 %tmp_58 ; <i8*> [#uses=1]
  %k_buf_0_val_1_load = load i8* %k_buf_0_val_1_addr, align 1 ; <i8> [#uses=6]
  %k_buf_0_val_2_addr = getelementptr [1920 x i8]* %k_buf_0_val_2, i64 0, i64 %tmp_58 ; <i8*> [#uses=1]
  %k_buf_0_val_2_load = load i8* %k_buf_0_val_2_addr, align 1 ; <i8> [#uses=6]
  %sel_tmp3 = select i1 %sel_tmp, i8 %k_buf_0_val_0_load, i8 %k_buf_0_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_0_val_0_0_9 = select i1 %sel_tmp4, i8 %k_buf_0_val_1_load, i8 %sel_tmp3 ; <i8> [#uses=3]
  %sel_tmp8 = select i1 %sel_tmp7, i8 %k_buf_0_val_0_load, i8 %k_buf_0_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_0_val_1_0_1 = select i1 %sel_tmp9, i8 %k_buf_0_val_1_load, i8 %sel_tmp8 ; <i8> [#uses=3]
  switch i2 %locy_0_2_t, label %branch26 [
    i2 0, label %branch24
    i2 1, label %bb85.0.pre
  ]

bb7.i505.preheader.0:                             ; preds = %bb85.0
  %src_kernel_win_0_val_0_0_load = load i8* %src_kernel_win_0_val_0_0 ; <i8> [#uses=2]
  %src_kernel_win_0_val_0_1_load = load i8* %src_kernel_win_0_val_0_1 ; <i8> [#uses=2]
  %src_kernel_win_0_val_1_0_load = load i8* %src_kernel_win_0_val_1_0 ; <i8> [#uses=2]
  %src_kernel_win_0_val_1_1_load = load i8* %src_kernel_win_0_val_1_1 ; <i8> [#uses=2]
  %src_kernel_win_0_val_2_0_load = load i8* %src_kernel_win_0_val_2_0 ; <i8> [#uses=2]
  %src_kernel_win_0_val_2_1_load = load i8* %src_kernel_win_0_val_2_1 ; <i8> [#uses=2]
  %tmp_70 = icmp eq i8 %src_kernel_win_0_val_2_1_load, -1 ; <i1> [#uses=1]
  %or_cond5 = or i1 %tmp_142_2, %tmp_70           ; <i1> [#uses=1]
  %src_kernel_win_0_val_2_1_6 = select i1 %or_cond5, i8 -1, i8 %src_kernel_win_0_val_2_1_load ; <i8> [#uses=2]
  %tmp_143_0_0_1 = icmp ugt i8 %src_kernel_win_0_val_2_1_6, %src_kernel_win_0_val_2_1_5 ; <i1> [#uses=1]
  %or_cond6 = and i1 %tmp_142_2_0_1_not, %tmp_143_0_0_1 ; <i1> [#uses=1]
  %src_kernel_win_0_val_2_1_7 = select i1 %or_cond6, i8 %src_kernel_win_0_val_2_1_5, i8 %src_kernel_win_0_val_2_1_6 ; <i8> [#uses=2]
  %tmp_143_0_0_2 = icmp ugt i8 %src_kernel_win_0_val_2_1_7, %src_kernel_win_0_val_2_0_load ; <i1> [#uses=1]
  %or_cond7 = and i1 %tmp_142_2_0_2_not, %tmp_143_0_0_2 ; <i1> [#uses=1]
  %src_kernel_win_0_val_2_0_8 = select i1 %or_cond7, i8 %src_kernel_win_0_val_2_0_load, i8 %src_kernel_win_0_val_2_1_7 ; <i8> [#uses=2]
  %tmp_143_0_1 = icmp ugt i8 %src_kernel_win_0_val_2_0_8, %src_kernel_win_0_val_1_1_load ; <i1> [#uses=1]
  %or_cond8 = and i1 %tmp_142_2_1_0_not, %tmp_143_0_1 ; <i1> [#uses=1]
  %src_kernel_win_0_val_1_1_6 = select i1 %or_cond8, i8 %src_kernel_win_0_val_1_1_load, i8 %src_kernel_win_0_val_2_0_8 ; <i8> [#uses=2]
  %tmp_143_0_1_1 = icmp ugt i8 %src_kernel_win_0_val_1_1_6, %src_kernel_win_0_val_1_1_5 ; <i1> [#uses=1]
  %or_cond9 = and i1 %tmp_142_2_1_1_not, %tmp_143_0_1_1 ; <i1> [#uses=1]
  %src_kernel_win_0_val_1_1_7 = select i1 %or_cond9, i8 %src_kernel_win_0_val_1_1_5, i8 %src_kernel_win_0_val_1_1_6 ; <i8> [#uses=2]
  %tmp_143_0_1_2 = icmp ugt i8 %src_kernel_win_0_val_1_1_7, %src_kernel_win_0_val_1_0_load ; <i1> [#uses=1]
  %or_cond4 = and i1 %tmp_142_2_1_2_not, %tmp_143_0_1_2 ; <i1> [#uses=1]
  %src_kernel_win_0_val_1_0_19 = select i1 %or_cond4, i8 %src_kernel_win_0_val_1_0_load, i8 %src_kernel_win_0_val_1_1_7 ; <i8> [#uses=2]
  %tmp_143_0_2 = icmp ugt i8 %src_kernel_win_0_val_1_0_19, %src_kernel_win_0_val_0_1_load ; <i1> [#uses=1]
  %or_cond10 = and i1 %tmp_142_2_2_0_not, %tmp_143_0_2 ; <i1> [#uses=1]
  %src_kernel_win_0_val_0_1_6 = select i1 %or_cond10, i8 %src_kernel_win_0_val_0_1_load, i8 %src_kernel_win_0_val_1_0_19 ; <i8> [#uses=2]
  %tmp_143_0_2_1 = icmp ugt i8 %src_kernel_win_0_val_0_1_6, %src_kernel_win_0_val_0_1_5 ; <i1> [#uses=1]
  %or_cond11 = and i1 %tmp_142_2_2_1_not, %tmp_143_0_2_1 ; <i1> [#uses=1]
  %src_kernel_win_0_val_0_1_7 = select i1 %or_cond11, i8 %src_kernel_win_0_val_0_1_5, i8 %src_kernel_win_0_val_0_1_6 ; <i8> [#uses=2]
  %tmp_143_0_2_2 = icmp ugt i8 %src_kernel_win_0_val_0_1_7, %src_kernel_win_0_val_0_0_load ; <i1> [#uses=1]
  %or_cond12 = and i1 %tmp_142_2_2_2_not, %tmp_143_0_2_2 ; <i1> [#uses=1]
  %src_kernel_win_0_val_0_0_20 = select i1 %or_cond12, i8 %src_kernel_win_0_val_0_0_load, i8 %src_kernel_win_0_val_0_1_7 ; <i8> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %p_dst_data_stream_0_V, i8 %src_kernel_win_0_val_0_0_20)
  br label %bb99.0_ifconv

bb99.1_ifconv:                                    ; preds = %bb7.i505.preheader.1, %bb85.1
  br i1 %brmerge, label %bb29.preheader.2_ifconv, label %bb33.2

bb85.1.pre:                                       ; preds = %bb29.preheader.1_ifconv
  store i8 %src_kernel_win_1_val_1_0_1, i8* %src_kernel_win_1_val_1_0
  store i8 %k_buf_1_val_1_load, i8* %src_kernel_win_1_val_2_0
  store i8 %k_buf_1_val_1_load, i8* %src_kernel_win_1_val_0_0_11
  store i8 %src_kernel_win_1_val_0_0_9, i8* %src_kernel_win_1_val_0_0
  store i8 %k_buf_1_val_2_load, i8* %src_kernel_win_1_val_1_0_7
  br label %bb85.1

bb85.1:                                           ; preds = %bb85.1.pre, %branch59, %branch58, %branch57, %branch56, %branch55, %branch54, %branch35, %branch33, %bb61.preheader.1, %bb74.1, %bb33.1, %bb52.preheader.1
  br i1 %brmerge1, label %bb99.1_ifconv, label %bb7.i505.preheader.1

bb52.preheader.1:                                 ; preds = %branch62, %branch61, %branch60, %bb38.1
  %k_buf_1_val_1_addr_5 = getelementptr [1920 x i8]* %k_buf_1_val_1, i64 0, i64 %tmp_101_1 ; <i8*> [#uses=2]
  %temp = load i8* %k_buf_1_val_1_addr_5, align 1 ; <i8> [#uses=3]
  store i8 %temp, i8* %k_buf_1_val_2_addr_4, align 1
  %k_buf_1_val_0_addr_4 = getelementptr [1920 x i8]* %k_buf_1_val_0, i64 0, i64 %tmp_101_1 ; <i8*> [#uses=2]
  %temp_59 = load i8* %k_buf_1_val_0_addr_4, align 1 ; <i8> [#uses=3]
  store i8 %temp_59, i8* %k_buf_1_val_1_addr_5, align 1
  %tmp_91 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %p_src_data_stream_1_V) ; <i8> [#uses=1]
  store i8 %tmp_91, i8* %k_buf_1_val_0_addr_4, align 1
  store i8 %temp, i8* %src_kernel_win_1_val_1_0
  store i8 %Toppixel_3, i8* %src_kernel_win_1_val_2_0
  store i8 %temp_59, i8* %src_kernel_win_1_val_0_0_11
  store i8 %temp_59, i8* %src_kernel_win_1_val_0_0
  store i8 %temp, i8* %src_kernel_win_1_val_1_0_7
  br label %bb85.1

bb38.1:                                           ; preds = %bb37.1
  %tmp_101_1 = sext i13 %ImagLoc_x to i64         ; <i64> [#uses=3]
  %k_buf_1_val_2_addr_4 = getelementptr [1920 x i8]* %k_buf_1_val_2, i64 0, i64 %tmp_101_1 ; <i8*> [#uses=2]
  %Toppixel_3 = load i8* %k_buf_1_val_2_addr_4, align 1 ; <i8> [#uses=4]
  %tmp_102_1 = icmp slt i13 %ImagLoc_x, %tmp_5    ; <i1> [#uses=1]
  br i1 %tmp_102_1, label %bb52.preheader.1, label %bb41.1

bb37.1:                                           ; preds = %bb36.1
  %tmp_100_1 = icmp slt i14 %ImagLoc_x_0_0_cast1, %cols_cast8 ; <i1> [#uses=1]
  br i1 %tmp_100_1, label %bb38.1, label %bb55.1

bb36.1:                                           ; preds = %bb33.1
  br i1 %tmp_77, label %bb61.preheader.1, label %bb37.1

bb33.1:                                           ; preds = %bb99.0_ifconv
  br i1 %or_cond1, label %bb85.1, label %bb36.1

bb41.1:                                           ; preds = %bb38.1
  %tmp_82 = trunc i13 %ImagLoc_x to i2            ; <i2> [#uses=1]
  %tmp_104_1_t = add i2 %tmp_82, %tmp_49          ; <i2> [#uses=1]
  switch i2 %tmp_104_1_t, label %branch62 [
    i2 0, label %branch60
    i2 1, label %branch61
  ]

bb70.preheader.1:                                 ; preds = %bb63.1
  %tmp_83 = trunc i13 %x to i2                    ; <i2> [#uses=1]
  %tmp_123_1_t = add i2 %tmp_83, %tmp_49          ; <i2> [#uses=1]
  switch i2 %tmp_123_1_t, label %branch59 [
    i2 0, label %branch57
    i2 1, label %branch58
  ]

bb63.1:                                           ; preds = %bb55.1
  %slt5 = icmp slt i14 %ImagLoc_x_0_0_cast1, %cols_cast8 ; <i1> [#uses=1]
  %rev9 = xor i1 %slt5, true                      ; <i1> [#uses=2]
  %tmp_107_1 = icmp eq i13 %tmp_s, %x             ; <i1> [#uses=1]
  %or_cond3_1 = and i1 %rev9, %tmp_107_1          ; <i1> [#uses=1]
  br i1 %or_cond3_1, label %bb70.preheader.1, label %bb74.1

bb55.1:                                           ; preds = %bb37.1
  br i1 %tmp_77, label %bb61.preheader.1, label %bb63.1

bb74.1:                                           ; preds = %bb63.1
  %tmp_109_1 = icmp sgt i13 %tmp_s, %x            ; <i1> [#uses=1]
  %or_cond4_1 = and i1 %rev9, %tmp_109_1          ; <i1> [#uses=1]
  br i1 %or_cond4_1, label %bb81.preheader.1, label %bb85.1

bb81.preheader.1:                                 ; preds = %bb74.1
  %tmp_114_1 = sext i13 %x to i64                 ; <i64> [#uses=2]
  %k_buf_1_val_1_addr_6 = getelementptr [1920 x i8]* %k_buf_1_val_1, i64 0, i64 %tmp_114_1 ; <i8*> [#uses=1]
  %src_kernel_win_1_val_0_0_18 = load i8* %k_buf_1_val_1_addr_6, align 1 ; <i8> [#uses=3]
  %k_buf_1_val_2_addr_6 = getelementptr [1920 x i8]* %k_buf_1_val_2, i64 0, i64 %tmp_114_1 ; <i8*> [#uses=1]
  %src_kernel_win_1_val_1_0_11 = load i8* %k_buf_1_val_2_addr_6, align 1 ; <i8> [#uses=3]
  %tmp_85 = trunc i13 %x to i2                    ; <i2> [#uses=1]
  %tmp_128_1_t = add i2 %tmp_85, %tmp_49          ; <i2> [#uses=1]
  switch i2 %tmp_128_1_t, label %branch56 [
    i2 0, label %branch54
    i2 1, label %branch55
  ]

bb61.preheader.1:                                 ; preds = %bb55.1, %bb36.1
  %tmp_106_1 = sext i13 %x to i64                 ; <i64> [#uses=3]
  %k_buf_1_val_0_addr_3 = getelementptr [1920 x i8]* %k_buf_1_val_0, i64 0, i64 %tmp_106_1 ; <i8*> [#uses=1]
  %src_kernel_win_1_val_0_0_14 = load i8* %k_buf_1_val_0_addr_3, align 1 ; <i8> [#uses=1]
  %k_buf_1_val_1_addr_4 = getelementptr [1920 x i8]* %k_buf_1_val_1, i64 0, i64 %tmp_106_1 ; <i8*> [#uses=1]
  %src_kernel_win_1_val_1_0_9 = load i8* %k_buf_1_val_1_addr_4, align 1 ; <i8> [#uses=1]
  %k_buf_1_val_2_addr_5 = getelementptr [1920 x i8]* %k_buf_1_val_2, i64 0, i64 %tmp_106_1 ; <i8*> [#uses=1]
  %src_kernel_win_1_val_2_0_6 = load i8* %k_buf_1_val_2_addr_5, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_9, i8* %src_kernel_win_1_val_1_0
  store i8 %src_kernel_win_1_val_2_0_6, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_14, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

bb29.preheader.1_ifconv:                          ; preds = %bb99.0_ifconv
  %tmp_94_1 = sext i13 %x to i64                  ; <i64> [#uses=3]
  %k_buf_1_val_0_addr = getelementptr [1920 x i8]* %k_buf_1_val_0, i64 0, i64 %tmp_94_1 ; <i8*> [#uses=1]
  %k_buf_1_val_0_load = load i8* %k_buf_1_val_0_addr, align 1 ; <i8> [#uses=4]
  store i8 %k_buf_1_val_0_load, i8* %col_buf_val_1_0_0, align 1
  %k_buf_1_val_1_addr = getelementptr [1920 x i8]* %k_buf_1_val_1, i64 0, i64 %tmp_94_1 ; <i8*> [#uses=1]
  %k_buf_1_val_1_load = load i8* %k_buf_1_val_1_addr, align 1 ; <i8> [#uses=6]
  %k_buf_1_val_2_addr = getelementptr [1920 x i8]* %k_buf_1_val_2, i64 0, i64 %tmp_94_1 ; <i8*> [#uses=1]
  %k_buf_1_val_2_load = load i8* %k_buf_1_val_2_addr, align 1 ; <i8> [#uses=6]
  %sel_tmp15 = select i1 %sel_tmp, i8 %k_buf_1_val_0_load, i8 %k_buf_1_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_1_val_0_0_9 = select i1 %sel_tmp4, i8 %k_buf_1_val_1_load, i8 %sel_tmp15 ; <i8> [#uses=3]
  %sel_tmp20 = select i1 %sel_tmp7, i8 %k_buf_1_val_0_load, i8 %k_buf_1_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_1_val_1_0_1 = select i1 %sel_tmp9, i8 %k_buf_1_val_1_load, i8 %sel_tmp20 ; <i8> [#uses=3]
  switch i2 %locy_0_2_t, label %branch35 [
    i2 0, label %branch33
    i2 1, label %bb85.1.pre
  ]

bb7.i505.preheader.1:                             ; preds = %bb85.1
  %src_kernel_win_1_val_0_0_load = load i8* %src_kernel_win_1_val_0_0 ; <i8> [#uses=2]
  %src_kernel_win_1_val_0_1_load = load i8* %src_kernel_win_1_val_0_1 ; <i8> [#uses=2]
  %src_kernel_win_1_val_2_0_load = load i8* %src_kernel_win_1_val_2_0 ; <i8> [#uses=2]
  %src_kernel_win_1_val_1_0_load = load i8* %src_kernel_win_1_val_1_0 ; <i8> [#uses=2]
  %src_kernel_win_1_val_1_1_load = load i8* %src_kernel_win_1_val_1_1 ; <i8> [#uses=2]
  %src_kernel_win_1_val_2_1_load = load i8* %src_kernel_win_1_val_2_1 ; <i8> [#uses=2]
  %tmp_143_1 = icmp eq i8 %src_kernel_win_1_val_2_1_load, -1 ; <i1> [#uses=1]
  %or_cond13 = or i1 %tmp_142_2, %tmp_143_1       ; <i1> [#uses=1]
  %src_kernel_win_1_val_2_1_6 = select i1 %or_cond13, i8 -1, i8 %src_kernel_win_1_val_2_1_load ; <i8> [#uses=2]
  %tmp_143_1_0_1 = icmp ugt i8 %src_kernel_win_1_val_2_1_6, %src_kernel_win_1_val_2_1_5 ; <i1> [#uses=1]
  %or_cond14 = and i1 %tmp_142_2_0_1_not, %tmp_143_1_0_1 ; <i1> [#uses=1]
  %src_kernel_win_1_val_2_1_7 = select i1 %or_cond14, i8 %src_kernel_win_1_val_2_1_5, i8 %src_kernel_win_1_val_2_1_6 ; <i8> [#uses=2]
  %tmp_143_1_0_2 = icmp ugt i8 %src_kernel_win_1_val_2_1_7, %src_kernel_win_1_val_2_0_load ; <i1> [#uses=1]
  %or_cond15 = and i1 %tmp_142_2_0_2_not, %tmp_143_1_0_2 ; <i1> [#uses=1]
  %src_kernel_win_1_val_2_0_8 = select i1 %or_cond15, i8 %src_kernel_win_1_val_2_0_load, i8 %src_kernel_win_1_val_2_1_7 ; <i8> [#uses=2]
  %tmp_143_1_1 = icmp ugt i8 %src_kernel_win_1_val_2_0_8, %src_kernel_win_1_val_1_1_load ; <i1> [#uses=1]
  %or_cond16 = and i1 %tmp_142_2_1_0_not, %tmp_143_1_1 ; <i1> [#uses=1]
  %src_kernel_win_1_val_1_1_6 = select i1 %or_cond16, i8 %src_kernel_win_1_val_1_1_load, i8 %src_kernel_win_1_val_2_0_8 ; <i8> [#uses=2]
  %tmp_143_1_1_1 = icmp ugt i8 %src_kernel_win_1_val_1_1_6, %src_kernel_win_1_val_1_1_5 ; <i1> [#uses=1]
  %or_cond17 = and i1 %tmp_142_2_1_1_not, %tmp_143_1_1_1 ; <i1> [#uses=1]
  %src_kernel_win_1_val_1_1_7 = select i1 %or_cond17, i8 %src_kernel_win_1_val_1_1_5, i8 %src_kernel_win_1_val_1_1_6 ; <i8> [#uses=2]
  %tmp_143_1_1_2 = icmp ugt i8 %src_kernel_win_1_val_1_1_7, %src_kernel_win_1_val_1_0_load ; <i1> [#uses=1]
  %or_cond18 = and i1 %tmp_142_2_1_2_not, %tmp_143_1_1_2 ; <i1> [#uses=1]
  %src_kernel_win_1_val_1_0_13 = select i1 %or_cond18, i8 %src_kernel_win_1_val_1_0_load, i8 %src_kernel_win_1_val_1_1_7 ; <i8> [#uses=2]
  %tmp_143_1_2 = icmp ugt i8 %src_kernel_win_1_val_1_0_13, %src_kernel_win_1_val_0_1_load ; <i1> [#uses=1]
  %or_cond19 = and i1 %tmp_142_2_2_0_not, %tmp_143_1_2 ; <i1> [#uses=1]
  %src_kernel_win_1_val_0_1_6 = select i1 %or_cond19, i8 %src_kernel_win_1_val_0_1_load, i8 %src_kernel_win_1_val_1_0_13 ; <i8> [#uses=2]
  %tmp_143_1_2_1 = icmp ugt i8 %src_kernel_win_1_val_0_1_6, %src_kernel_win_1_val_0_1_5 ; <i1> [#uses=1]
  %or_cond20 = and i1 %tmp_142_2_2_1_not, %tmp_143_1_2_1 ; <i1> [#uses=1]
  %src_kernel_win_1_val_0_1_7 = select i1 %or_cond20, i8 %src_kernel_win_1_val_0_1_5, i8 %src_kernel_win_1_val_0_1_6 ; <i8> [#uses=2]
  %tmp_143_1_2_2 = icmp ugt i8 %src_kernel_win_1_val_0_1_7, %src_kernel_win_1_val_0_0_load ; <i1> [#uses=1]
  %or_cond21 = and i1 %tmp_142_2_2_2_not, %tmp_143_1_2_2 ; <i1> [#uses=1]
  %src_kernel_win_1_val_0_0_20 = select i1 %or_cond21, i8 %src_kernel_win_1_val_0_0_load, i8 %src_kernel_win_1_val_0_1_7 ; <i8> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %p_dst_data_stream_1_V, i8 %src_kernel_win_1_val_0_0_20)
  br label %bb99.1_ifconv

bb99.2:                                           ; preds = %bb7.i505.preheader.2, %bb85.2
  %empty_106 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str35, i32 %tmp_50) ; <i32> [#uses=0]
  store i8 %src_kernel_win_2_val_1_1_5, i8* %src_kernel_win_2_val_1_1
  store i8 %src_kernel_win_2_val_2_1_5, i8* %src_kernel_win_2_val_2_1
  store i8 %src_kernel_win_2_val_0_1_5, i8* %src_kernel_win_2_val_0_1
  store i8 %src_kernel_win_1_val_2_1_5, i8* %src_kernel_win_1_val_2_1
  store i8 %src_kernel_win_1_val_1_1_5, i8* %src_kernel_win_1_val_1_1
  store i8 %src_kernel_win_1_val_0_1_5, i8* %src_kernel_win_1_val_0_1
  store i8 %src_kernel_win_0_val_2_1_5, i8* %src_kernel_win_0_val_2_1
  store i8 %src_kernel_win_0_val_1_1_5, i8* %src_kernel_win_0_val_1_1
  store i8 %src_kernel_win_0_val_0_1_5, i8* %src_kernel_win_0_val_0_1
  br label %bb103

bb85.2.pre:                                       ; preds = %bb29.preheader.2_ifconv
  store i8 %src_kernel_win_2_val_1_0_1, i8* %src_kernel_win_2_val_1_0
  store i8 %k_buf_2_val_1_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_9, i8* %src_kernel_win_2_val_0_0
  store i8 %k_buf_2_val_1_load, i8* %src_kernel_win_2_val_0_0_11
  store i8 %k_buf_2_val_2_load, i8* %src_kernel_win_2_val_1_0_7
  br label %bb85.2

bb85.2:                                           ; preds = %bb85.2.pre, %branch68, %branch67, %branch66, %branch65, %branch64, %branch63, %branch44, %branch42, %bb61.preheader.2, %bb74.2, %bb33.2, %bb52.preheader.2
  br i1 %brmerge1, label %bb99.2, label %bb7.i505.preheader.2

bb52.preheader.2:                                 ; preds = %branch71, %branch70, %branch69, %bb38.2
  %k_buf_2_val_1_addr_5 = getelementptr [1920 x i8]* %k_buf_2_val_1, i64 0, i64 %tmp_101_2 ; <i8*> [#uses=2]
  %temp_60 = load i8* %k_buf_2_val_1_addr_5, align 1 ; <i8> [#uses=3]
  store i8 %temp_60, i8* %k_buf_2_val_2_addr_4, align 1
  %k_buf_2_val_0_addr_4 = getelementptr [1920 x i8]* %k_buf_2_val_0, i64 0, i64 %tmp_101_2 ; <i8*> [#uses=2]
  %temp_61 = load i8* %k_buf_2_val_0_addr_4, align 1 ; <i8> [#uses=3]
  store i8 %temp_61, i8* %k_buf_2_val_1_addr_5, align 1
  %tmp_92 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %p_src_data_stream_2_V) ; <i8> [#uses=1]
  store i8 %tmp_92, i8* %k_buf_2_val_0_addr_4, align 1
  store i8 %temp_60, i8* %src_kernel_win_2_val_1_0
  store i8 %Toppixel_4, i8* %src_kernel_win_2_val_2_0
  store i8 %temp_61, i8* %src_kernel_win_2_val_0_0
  store i8 %temp_61, i8* %src_kernel_win_2_val_0_0_11
  store i8 %temp_60, i8* %src_kernel_win_2_val_1_0_7
  br label %bb85.2

bb38.2:                                           ; preds = %bb37.2
  %tmp_101_2 = sext i13 %ImagLoc_x to i64         ; <i64> [#uses=3]
  %k_buf_2_val_2_addr_4 = getelementptr [1920 x i8]* %k_buf_2_val_2, i64 0, i64 %tmp_101_2 ; <i8*> [#uses=2]
  %Toppixel_4 = load i8* %k_buf_2_val_2_addr_4, align 1 ; <i8> [#uses=4]
  %tmp_102_2 = icmp slt i13 %ImagLoc_x, %tmp_5    ; <i1> [#uses=1]
  br i1 %tmp_102_2, label %bb52.preheader.2, label %bb41.2

bb37.2:                                           ; preds = %bb36.2
  %tmp_100_2 = icmp slt i14 %ImagLoc_x_0_0_cast1, %cols_cast8 ; <i1> [#uses=1]
  br i1 %tmp_100_2, label %bb38.2, label %bb55.2

bb36.2:                                           ; preds = %bb33.2
  br i1 %tmp_77, label %bb61.preheader.2, label %bb37.2

bb33.2:                                           ; preds = %bb99.1_ifconv
  br i1 %or_cond1, label %bb85.2, label %bb36.2

bb41.2:                                           ; preds = %bb38.2
  %tmp_86 = trunc i13 %ImagLoc_x to i2            ; <i2> [#uses=1]
  %tmp_104_2_t = add i2 %tmp_86, %tmp_49          ; <i2> [#uses=1]
  switch i2 %tmp_104_2_t, label %branch71 [
    i2 0, label %branch69
    i2 1, label %branch70
  ]

bb70.preheader.2:                                 ; preds = %bb63.2
  %tmp_87 = trunc i13 %x to i2                    ; <i2> [#uses=1]
  %tmp_123_2_t = add i2 %tmp_87, %tmp_49          ; <i2> [#uses=1]
  switch i2 %tmp_123_2_t, label %branch68 [
    i2 0, label %branch66
    i2 1, label %branch67
  ]

bb63.2:                                           ; preds = %bb55.2
  %slt6 = icmp slt i14 %ImagLoc_x_0_0_cast1, %cols_cast8 ; <i1> [#uses=1]
  %rev10 = xor i1 %slt6, true                     ; <i1> [#uses=2]
  %tmp_107_2 = icmp eq i13 %tmp_s, %x             ; <i1> [#uses=1]
  %or_cond3_2 = and i1 %rev10, %tmp_107_2         ; <i1> [#uses=1]
  br i1 %or_cond3_2, label %bb70.preheader.2, label %bb74.2

bb55.2:                                           ; preds = %bb37.2
  br i1 %tmp_77, label %bb61.preheader.2, label %bb63.2

bb74.2:                                           ; preds = %bb63.2
  %tmp_109_2 = icmp sgt i13 %tmp_s, %x            ; <i1> [#uses=1]
  %or_cond4_2 = and i1 %rev10, %tmp_109_2         ; <i1> [#uses=1]
  br i1 %or_cond4_2, label %bb81.preheader.2, label %bb85.2

bb81.preheader.2:                                 ; preds = %bb74.2
  %tmp_114_2 = sext i13 %x to i64                 ; <i64> [#uses=2]
  %k_buf_2_val_1_addr_6 = getelementptr [1920 x i8]* %k_buf_2_val_1, i64 0, i64 %tmp_114_2 ; <i8*> [#uses=1]
  %src_kernel_win_2_val_0_0_16 = load i8* %k_buf_2_val_1_addr_6, align 1 ; <i8> [#uses=3]
  %k_buf_2_val_2_addr_6 = getelementptr [1920 x i8]* %k_buf_2_val_2, i64 0, i64 %tmp_114_2 ; <i8*> [#uses=1]
  %src_kernel_win_2_val_1_0_11 = load i8* %k_buf_2_val_2_addr_6, align 1 ; <i8> [#uses=3]
  %tmp_89 = trunc i13 %x to i2                    ; <i2> [#uses=1]
  %tmp_128_2_t = add i2 %tmp_89, %tmp_49          ; <i2> [#uses=1]
  switch i2 %tmp_128_2_t, label %branch65 [
    i2 0, label %branch63
    i2 1, label %branch64
  ]

bb61.preheader.2:                                 ; preds = %bb55.2, %bb36.2
  %tmp_106_2 = sext i13 %x to i64                 ; <i64> [#uses=3]
  %k_buf_2_val_0_addr_3 = getelementptr [1920 x i8]* %k_buf_2_val_0, i64 0, i64 %tmp_106_2 ; <i8*> [#uses=1]
  %src_kernel_win_2_val_0_0_14 = load i8* %k_buf_2_val_0_addr_3, align 1 ; <i8> [#uses=1]
  %k_buf_2_val_1_addr_4 = getelementptr [1920 x i8]* %k_buf_2_val_1, i64 0, i64 %tmp_106_2 ; <i8*> [#uses=1]
  %src_kernel_win_2_val_1_0_9 = load i8* %k_buf_2_val_1_addr_4, align 1 ; <i8> [#uses=1]
  %k_buf_2_val_2_addr_5 = getelementptr [1920 x i8]* %k_buf_2_val_2, i64 0, i64 %tmp_106_2 ; <i8*> [#uses=1]
  %src_kernel_win_2_val_2_0_6 = load i8* %k_buf_2_val_2_addr_5, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_9, i8* %src_kernel_win_2_val_1_0
  store i8 %src_kernel_win_2_val_2_0_6, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_14, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

bb29.preheader.2_ifconv:                          ; preds = %bb99.1_ifconv
  %tmp_94_2 = sext i13 %x to i64                  ; <i64> [#uses=3]
  %k_buf_2_val_0_addr = getelementptr [1920 x i8]* %k_buf_2_val_0, i64 0, i64 %tmp_94_2 ; <i8*> [#uses=1]
  %k_buf_2_val_0_load = load i8* %k_buf_2_val_0_addr, align 1 ; <i8> [#uses=4]
  store i8 %k_buf_2_val_0_load, i8* %col_buf_val_2_0_0, align 1
  %k_buf_2_val_1_addr = getelementptr [1920 x i8]* %k_buf_2_val_1, i64 0, i64 %tmp_94_2 ; <i8*> [#uses=1]
  %k_buf_2_val_1_load = load i8* %k_buf_2_val_1_addr, align 1 ; <i8> [#uses=6]
  %k_buf_2_val_2_addr = getelementptr [1920 x i8]* %k_buf_2_val_2, i64 0, i64 %tmp_94_2 ; <i8*> [#uses=1]
  %k_buf_2_val_2_load = load i8* %k_buf_2_val_2_addr, align 1 ; <i8> [#uses=6]
  %sel_tmp27 = select i1 %sel_tmp, i8 %k_buf_2_val_0_load, i8 %k_buf_2_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_2_val_0_0_9 = select i1 %sel_tmp4, i8 %k_buf_2_val_1_load, i8 %sel_tmp27 ; <i8> [#uses=3]
  %sel_tmp28 = select i1 %sel_tmp7, i8 %k_buf_2_val_0_load, i8 %k_buf_2_val_2_load ; <i8> [#uses=1]
  %src_kernel_win_2_val_1_0_1 = select i1 %sel_tmp9, i8 %k_buf_2_val_1_load, i8 %sel_tmp28 ; <i8> [#uses=3]
  switch i2 %locy_0_2_t, label %branch44 [
    i2 0, label %branch42
    i2 1, label %bb85.2.pre
  ]

bb7.i505.preheader.2:                             ; preds = %bb85.2
  %src_kernel_win_2_val_0_0_load = load i8* %src_kernel_win_2_val_0_0 ; <i8> [#uses=2]
  %src_kernel_win_2_val_0_1_load = load i8* %src_kernel_win_2_val_0_1 ; <i8> [#uses=2]
  %src_kernel_win_2_val_2_1_load = load i8* %src_kernel_win_2_val_2_1 ; <i8> [#uses=2]
  %src_kernel_win_2_val_2_0_load = load i8* %src_kernel_win_2_val_2_0 ; <i8> [#uses=2]
  %src_kernel_win_2_val_1_0_load = load i8* %src_kernel_win_2_val_1_0 ; <i8> [#uses=2]
  %src_kernel_win_2_val_1_1_load = load i8* %src_kernel_win_2_val_1_1 ; <i8> [#uses=2]
  %tmp_143_2 = icmp eq i8 %src_kernel_win_2_val_2_1_load, -1 ; <i1> [#uses=1]
  %or_cond22 = or i1 %tmp_142_2, %tmp_143_2       ; <i1> [#uses=1]
  %src_kernel_win_2_val_2_1_6 = select i1 %or_cond22, i8 -1, i8 %src_kernel_win_2_val_2_1_load ; <i8> [#uses=2]
  %tmp_143_2_0_1 = icmp ugt i8 %src_kernel_win_2_val_2_1_6, %src_kernel_win_2_val_2_1_5 ; <i1> [#uses=1]
  %or_cond23 = and i1 %tmp_142_2_0_1_not, %tmp_143_2_0_1 ; <i1> [#uses=1]
  %src_kernel_win_2_val_2_1_7 = select i1 %or_cond23, i8 %src_kernel_win_2_val_2_1_5, i8 %src_kernel_win_2_val_2_1_6 ; <i8> [#uses=2]
  %tmp_143_2_0_2 = icmp ugt i8 %src_kernel_win_2_val_2_1_7, %src_kernel_win_2_val_2_0_load ; <i1> [#uses=1]
  %or_cond24 = and i1 %tmp_142_2_0_2_not, %tmp_143_2_0_2 ; <i1> [#uses=1]
  %src_kernel_win_2_val_2_0_8 = select i1 %or_cond24, i8 %src_kernel_win_2_val_2_0_load, i8 %src_kernel_win_2_val_2_1_7 ; <i8> [#uses=2]
  %tmp_143_2_1 = icmp ugt i8 %src_kernel_win_2_val_2_0_8, %src_kernel_win_2_val_1_1_load ; <i1> [#uses=1]
  %or_cond25 = and i1 %tmp_142_2_1_0_not, %tmp_143_2_1 ; <i1> [#uses=1]
  %src_kernel_win_2_val_1_1_6 = select i1 %or_cond25, i8 %src_kernel_win_2_val_1_1_load, i8 %src_kernel_win_2_val_2_0_8 ; <i8> [#uses=2]
  %tmp_143_2_1_1 = icmp ugt i8 %src_kernel_win_2_val_1_1_6, %src_kernel_win_2_val_1_1_5 ; <i1> [#uses=1]
  %or_cond26 = and i1 %tmp_142_2_1_1_not, %tmp_143_2_1_1 ; <i1> [#uses=1]
  %src_kernel_win_2_val_1_1_7 = select i1 %or_cond26, i8 %src_kernel_win_2_val_1_1_5, i8 %src_kernel_win_2_val_1_1_6 ; <i8> [#uses=2]
  %tmp_143_2_1_2 = icmp ugt i8 %src_kernel_win_2_val_1_1_7, %src_kernel_win_2_val_1_0_load ; <i1> [#uses=1]
  %or_cond27 = and i1 %tmp_142_2_1_2_not, %tmp_143_2_1_2 ; <i1> [#uses=1]
  %src_kernel_win_2_val_1_0_13 = select i1 %or_cond27, i8 %src_kernel_win_2_val_1_0_load, i8 %src_kernel_win_2_val_1_1_7 ; <i8> [#uses=2]
  %tmp_143_2_2 = icmp ugt i8 %src_kernel_win_2_val_1_0_13, %src_kernel_win_2_val_0_1_load ; <i1> [#uses=1]
  %or_cond28 = and i1 %tmp_142_2_2_0_not, %tmp_143_2_2 ; <i1> [#uses=1]
  %src_kernel_win_2_val_0_1_6 = select i1 %or_cond28, i8 %src_kernel_win_2_val_0_1_load, i8 %src_kernel_win_2_val_1_0_13 ; <i8> [#uses=2]
  %tmp_143_2_2_1 = icmp ugt i8 %src_kernel_win_2_val_0_1_6, %src_kernel_win_2_val_0_1_5 ; <i1> [#uses=1]
  %or_cond29 = and i1 %tmp_142_2_2_1_not, %tmp_143_2_2_1 ; <i1> [#uses=1]
  %src_kernel_win_2_val_0_1_7 = select i1 %or_cond29, i8 %src_kernel_win_2_val_0_1_5, i8 %src_kernel_win_2_val_0_1_6 ; <i8> [#uses=2]
  %tmp_143_2_2_2 = icmp ugt i8 %src_kernel_win_2_val_0_1_7, %src_kernel_win_2_val_0_0_load ; <i1> [#uses=1]
  %or_cond30 = and i1 %tmp_142_2_2_2_not, %tmp_143_2_2_2 ; <i1> [#uses=1]
  %src_kernel_win_2_val_0_0_18 = select i1 %or_cond30, i8 %src_kernel_win_2_val_0_0_load, i8 %src_kernel_win_2_val_0_1_7 ; <i8> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %p_dst_data_stream_2_V, i8 %src_kernel_win_2_val_0_0_18)
  br label %bb99.2

bb103:                                            ; preds = %bb99.2, %bb12
  %t_V_2 = phi i12 [ 0, %bb12 ], [ %j_V, %bb99.2 ] ; <i12> [#uses=3]
  %src_kernel_win_0_val_0_1_5 = load i8* %src_kernel_win_0_val_0_0 ; <i8> [#uses=3]
  %src_kernel_win_0_val_1_1_5 = load i8* %src_kernel_win_0_val_1_0 ; <i8> [#uses=3]
  %src_kernel_win_0_val_2_1_5 = load i8* %src_kernel_win_0_val_2_0 ; <i8> [#uses=3]
  %src_kernel_win_1_val_0_1_5 = load i8* %src_kernel_win_1_val_0_0 ; <i8> [#uses=3]
  %src_kernel_win_1_val_0_0_15 = load i8* %src_kernel_win_1_val_0_0_11 ; <i8> [#uses=3]
  %src_kernel_win_1_val_2_1_5 = load i8* %src_kernel_win_1_val_2_0 ; <i8> [#uses=3]
  %src_kernel_win_1_val_1_1_5 = load i8* %src_kernel_win_1_val_1_0 ; <i8> [#uses=3]
  %src_kernel_win_0_val_1_0_14 = load i8* %src_kernel_win_0_val_1_0_10 ; <i8> [#uses=3]
  %src_kernel_win_0_val_0_0_15 = load i8* %src_kernel_win_0_val_0_0_11 ; <i8> [#uses=3]
  %src_kernel_win_2_val_0_1_5 = load i8* %src_kernel_win_2_val_0_0 ; <i8> [#uses=3]
  %src_kernel_win_2_val_2_1_5 = load i8* %src_kernel_win_2_val_2_0 ; <i8> [#uses=3]
  %src_kernel_win_2_val_1_1_5 = load i8* %src_kernel_win_2_val_1_0 ; <i8> [#uses=3]
  %tmp_72_cast1 = zext i12 %t_V_2 to i13          ; <i13> [#uses=3]
  %tmp_7 = icmp ult i13 %tmp_72_cast1, %widthloop ; <i1> [#uses=1]
  %j_V = add i12 %t_V_2, 1                        ; <i12> [#uses=1]
  br i1 %tmp_7, label %bb13_ifconv, label %bb104

bb104:                                            ; preds = %bb103
  %empty_107 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str34, i32 %tmp) ; <i32> [#uses=0]
  br label %bb106

bb106:                                            ; preds = %bb104, %bb11
  %t_V = phi i12 [ 0, %bb11 ], [ %i_V, %bb104 ]   ; <i12> [#uses=3]
  %tmp19_cast1 = zext i12 %t_V to i13             ; <i13> [#uses=3]
  %tmp19_cast = zext i12 %t_V to i14              ; <i14> [#uses=2]
  %tmp_6 = icmp ult i14 %tmp19_cast, %heightloop_cast59_cast ; <i1> [#uses=1]
  %i_V = add i12 %t_V, 1                          ; <i12> [#uses=1]
  br i1 %tmp_6, label %bb12, label %bb107

bb107:                                            ; preds = %bb106
  ret void

branch0:                                          ; preds = %bb3
  br label %bb3315

branch1:                                          ; preds = %bb3
  br label %bb3315

branch2:                                          ; preds = %bb3
  br label %bb3315

branch3:                                          ; preds = %bb3315
  br label %bb3315316

branch4:                                          ; preds = %bb3315
  br label %bb3315316

branch5:                                          ; preds = %bb3315
  br label %bb3315316

branch6:                                          ; preds = %bb6
  br label %bb6356

branch7:                                          ; preds = %bb6
  br label %bb6356

branch8:                                          ; preds = %bb6
  br label %bb6356

branch9:                                          ; preds = %bb6356
  br label %bb6356357

branch10:                                         ; preds = %bb6356
  br label %bb6356357

branch11:                                         ; preds = %bb6356
  br label %bb6356357

branch12:                                         ; preds = %bb9
  br label %bb9481

branch13:                                         ; preds = %bb9
  br label %bb9481

branch14:                                         ; preds = %bb9
  br label %bb9481

branch15:                                         ; preds = %bb9481
  br label %bb9481482

branch16:                                         ; preds = %bb9481
  br label %bb9481482

branch17:                                         ; preds = %bb9481
  br label %bb9481482

branch24:                                         ; preds = %bb29.preheader.0_ifconv
  store i8 %k_buf_0_val_1_load, i8* %src_kernel_win_0_val_0_0_11
  store i8 %k_buf_0_val_2_load, i8* %src_kernel_win_0_val_1_0_10
  store i8 %k_buf_0_val_0_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_1, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_9, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch26:                                         ; preds = %bb29.preheader.0_ifconv
  store i8 %k_buf_0_val_1_load, i8* %src_kernel_win_0_val_0_0_11
  store i8 %k_buf_0_val_2_load, i8* %src_kernel_win_0_val_1_0_10
  store i8 %k_buf_0_val_2_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_1, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_9, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch33:                                         ; preds = %bb29.preheader.1_ifconv
  store i8 %src_kernel_win_1_val_1_0_1, i8* %src_kernel_win_1_val_1_0
  store i8 %k_buf_1_val_0_load, i8* %src_kernel_win_1_val_2_0
  store i8 %k_buf_1_val_1_load, i8* %src_kernel_win_1_val_0_0_11
  store i8 %src_kernel_win_1_val_0_0_9, i8* %src_kernel_win_1_val_0_0
  store i8 %k_buf_1_val_2_load, i8* %src_kernel_win_1_val_1_0_7
  br label %bb85.1

branch35:                                         ; preds = %bb29.preheader.1_ifconv
  store i8 %src_kernel_win_1_val_1_0_1, i8* %src_kernel_win_1_val_1_0
  store i8 %k_buf_1_val_2_load, i8* %src_kernel_win_1_val_2_0
  store i8 %k_buf_1_val_1_load, i8* %src_kernel_win_1_val_0_0_11
  store i8 %src_kernel_win_1_val_0_0_9, i8* %src_kernel_win_1_val_0_0
  store i8 %k_buf_1_val_2_load, i8* %src_kernel_win_1_val_1_0_7
  br label %bb85.1

branch42:                                         ; preds = %bb29.preheader.2_ifconv
  store i8 %src_kernel_win_2_val_1_0_1, i8* %src_kernel_win_2_val_1_0
  store i8 %k_buf_2_val_0_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_9, i8* %src_kernel_win_2_val_0_0
  store i8 %k_buf_2_val_1_load, i8* %src_kernel_win_2_val_0_0_11
  store i8 %k_buf_2_val_2_load, i8* %src_kernel_win_2_val_1_0_7
  br label %bb85.2

branch44:                                         ; preds = %bb29.preheader.2_ifconv
  store i8 %src_kernel_win_2_val_1_0_1, i8* %src_kernel_win_2_val_1_0
  store i8 %k_buf_2_val_2_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_9, i8* %src_kernel_win_2_val_0_0
  store i8 %k_buf_2_val_1_load, i8* %src_kernel_win_2_val_0_0_11
  store i8 %k_buf_2_val_2_load, i8* %src_kernel_win_2_val_1_0_7
  br label %bb85.2

branch45:                                         ; preds = %bb81.preheader.0
  %right_border_buf_0_val_0_0_load_2 = load i8* %right_border_buf_0_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_0_load_2, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_17, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_18, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch46:                                         ; preds = %bb81.preheader.0
  %right_border_buf_0_val_0_1_load_2 = load i8* %right_border_buf_0_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_1_load_2, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_17, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_18, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch47:                                         ; preds = %bb81.preheader.0
  %right_border_buf_0_val_0_2_load_2 = load i8* %right_border_buf_0_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_2_load_2, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_17, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_18, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch48:                                         ; preds = %bb70.preheader.0
  %right_border_buf_0_val_0_0_load = load i8* %right_border_buf_0_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_0_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_14, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_15, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch49:                                         ; preds = %bb70.preheader.0
  %right_border_buf_0_val_0_1_load = load i8* %right_border_buf_0_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_1_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_14, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_15, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch50:                                         ; preds = %bb70.preheader.0
  %right_border_buf_0_val_0_2_load = load i8* %right_border_buf_0_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %right_border_buf_0_val_0_2_load, i8* %src_kernel_win_0_val_2_0
  store i8 %src_kernel_win_0_val_1_0_14, i8* %src_kernel_win_0_val_1_0
  store i8 %src_kernel_win_0_val_0_0_15, i8* %src_kernel_win_0_val_0_0
  br label %bb85.0

branch51:                                         ; preds = %bb41.0
  store i8 %Toppixel, i8* %right_border_buf_0_val_0_0, align 1
  br label %bb52.preheader.0

branch52:                                         ; preds = %bb41.0
  store i8 %Toppixel, i8* %right_border_buf_0_val_0_1, align 1
  br label %bb52.preheader.0

branch53:                                         ; preds = %bb41.0
  store i8 %Toppixel, i8* %right_border_buf_0_val_0_2, align 1
  br label %bb52.preheader.0

branch54:                                         ; preds = %bb81.preheader.1
  %right_border_buf_1_val_0_0_load_2 = load i8* %right_border_buf_1_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_11, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_0_load_2, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_18, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch55:                                         ; preds = %bb81.preheader.1
  %right_border_buf_1_val_0_1_load_2 = load i8* %right_border_buf_1_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_11, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_1_load_2, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_18, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch56:                                         ; preds = %bb81.preheader.1
  %right_border_buf_1_val_0_2_load_2 = load i8* %right_border_buf_1_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_11, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_2_load_2, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_18, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch57:                                         ; preds = %bb70.preheader.1
  %src_kernel_win_1_val_1_0_7_load_1 = load i8* %src_kernel_win_1_val_1_0_7 ; <i8> [#uses=1]
  %right_border_buf_1_val_0_0_load = load i8* %right_border_buf_1_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_7_load_1, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_0_load, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_15, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch58:                                         ; preds = %bb70.preheader.1
  %src_kernel_win_1_val_1_0_7_load_2 = load i8* %src_kernel_win_1_val_1_0_7 ; <i8> [#uses=1]
  %right_border_buf_1_val_0_1_load = load i8* %right_border_buf_1_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_7_load_2, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_1_load, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_15, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch59:                                         ; preds = %bb70.preheader.1
  %src_kernel_win_1_val_1_0_7_load = load i8* %src_kernel_win_1_val_1_0_7 ; <i8> [#uses=1]
  %right_border_buf_1_val_0_2_load = load i8* %right_border_buf_1_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_1_val_1_0_7_load, i8* %src_kernel_win_1_val_1_0
  store i8 %right_border_buf_1_val_0_2_load, i8* %src_kernel_win_1_val_2_0
  store i8 %src_kernel_win_1_val_0_0_15, i8* %src_kernel_win_1_val_0_0
  br label %bb85.1

branch60:                                         ; preds = %bb41.1
  store i8 %Toppixel_3, i8* %right_border_buf_1_val_0_0, align 1
  br label %bb52.preheader.1

branch61:                                         ; preds = %bb41.1
  store i8 %Toppixel_3, i8* %right_border_buf_1_val_0_1, align 1
  br label %bb52.preheader.1

branch62:                                         ; preds = %bb41.1
  store i8 %Toppixel_3, i8* %right_border_buf_1_val_0_2, align 1
  br label %bb52.preheader.1

branch63:                                         ; preds = %bb81.preheader.2
  %right_border_buf_2_val_0_0_load_2 = load i8* %right_border_buf_2_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_11, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_0_load_2, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_16, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch64:                                         ; preds = %bb81.preheader.2
  %right_border_buf_2_val_0_1_load_2 = load i8* %right_border_buf_2_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_11, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_1_load_2, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_16, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch65:                                         ; preds = %bb81.preheader.2
  %right_border_buf_2_val_0_2_load_2 = load i8* %right_border_buf_2_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_11, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_2_load_2, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_16, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch66:                                         ; preds = %bb70.preheader.2
  %src_kernel_win_2_val_1_0_7_load_1 = load i8* %src_kernel_win_2_val_1_0_7 ; <i8> [#uses=1]
  %src_kernel_win_2_val_0_0_11_load_1 = load i8* %src_kernel_win_2_val_0_0_11 ; <i8> [#uses=1]
  %right_border_buf_2_val_0_0_load = load i8* %right_border_buf_2_val_0_0, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_7_load_1, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_0_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_11_load_1, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch67:                                         ; preds = %bb70.preheader.2
  %src_kernel_win_2_val_1_0_7_load_2 = load i8* %src_kernel_win_2_val_1_0_7 ; <i8> [#uses=1]
  %src_kernel_win_2_val_0_0_11_load_2 = load i8* %src_kernel_win_2_val_0_0_11 ; <i8> [#uses=1]
  %right_border_buf_2_val_0_1_load = load i8* %right_border_buf_2_val_0_1, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_7_load_2, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_1_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_11_load_2, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch68:                                         ; preds = %bb70.preheader.2
  %src_kernel_win_2_val_1_0_7_load = load i8* %src_kernel_win_2_val_1_0_7 ; <i8> [#uses=1]
  %src_kernel_win_2_val_0_0_11_load = load i8* %src_kernel_win_2_val_0_0_11 ; <i8> [#uses=1]
  %right_border_buf_2_val_0_2_load = load i8* %right_border_buf_2_val_0_2, align 1 ; <i8> [#uses=1]
  store i8 %src_kernel_win_2_val_1_0_7_load, i8* %src_kernel_win_2_val_1_0
  store i8 %right_border_buf_2_val_0_2_load, i8* %src_kernel_win_2_val_2_0
  store i8 %src_kernel_win_2_val_0_0_11_load, i8* %src_kernel_win_2_val_0_0
  br label %bb85.2

branch69:                                         ; preds = %bb41.2
  store i8 %Toppixel_4, i8* %right_border_buf_2_val_0_0, align 1
  br label %bb52.preheader.2

branch70:                                         ; preds = %bb41.2
  store i8 %Toppixel_4, i8* %right_border_buf_2_val_0_1, align 1
  br label %bb52.preheader.2

branch71:                                         ; preds = %bb41.2
  store i8 %Toppixel_4, i8* %right_border_buf_2_val_0_2, align 1
  br label %bb52.preheader.2
}

define internal fastcc void @"AXIvideo2Mat<32,1080,1920,16>"(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_2_V, [8 x i8]* @str143, i32 0, i32 0, [8 x i8]* @str143) ; <i32> [#uses=0]
  %empty_108 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_1_V, [8 x i8]* @str140, i32 0, i32 0, [8 x i8]* @str140) ; <i32> [#uses=0]
  %empty_109 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_0_V, [8 x i8]* @str137, i32 0, i32 0, [8 x i8]* @str137) ; <i32> [#uses=0]
  %empty_110 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_dest_V, [8 x i8]* @str70, i32 0, i32 0, [8 x i8]* @str70) ; <i32> [#uses=0]
  %empty_111 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_id_V, [8 x i8]* @str69, i32 0, i32 0, [8 x i8]* @str69) ; <i32> [#uses=0]
  %empty_112 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_last_V, [8 x i8]* @str68, i32 0, i32 0, [8 x i8]* @str68) ; <i32> [#uses=0]
  %empty_113 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_user_V, [8 x i8]* @str67, i32 0, i32 0, [8 x i8]* @str67) ; <i32> [#uses=0]
  %empty_114 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_strb_V, [8 x i8]* @str66, i32 0, i32 0, [8 x i8]* @str66) ; <i32> [#uses=0]
  %empty_115 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_keep_V, [8 x i8]* @str65, i32 0, i32 0, [8 x i8]* @str65) ; <i32> [#uses=0]
  %empty_116 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %AXI_video_strm_V_data_V, [8 x i8]* @str, i32 0, i32 0, [8 x i8]* @str) ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [1 x i8]* @p_str20, [5 x i8]* @p_str41, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [25 x i8]* @p_str42)
  %img_cols_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %img_cols_V_read) ; <i12> [#uses=1]
  %img_rows_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %img_rows_V_read) ; <i12> [#uses=1]
  br label %bb3

bb2:                                              ; preds = %bb3
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str25) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str20) nounwind
  %empty_117 = call %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) ; <%0> [#uses=3]
  %tmp_data_V = extractvalue %0 %empty_117, 0     ; <i32> [#uses=1]
  %tmp_user_V = extractvalue %0 %empty_117, 3     ; <i1> [#uses=1]
  %tmp_last_V = extractvalue %0 %empty_117, 4     ; <i1> [#uses=1]
  %empty_118 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str25, i32 %tmp) ; <i32> [#uses=0]
  br label %bb3

bb3:                                              ; preds = %bb2, %entry
  %axi_data_V = phi i32 [ undef, %entry ], [ %tmp_data_V, %bb2 ] ; <i32> [#uses=1]
  %axi_last_V = phi i1 [ undef, %entry ], [ %tmp_last_V, %bb2 ] ; <i1> [#uses=1]
  %axi_user_V = phi i1 [ false, %entry ], [ %tmp_user_V, %bb2 ] ; <i1> [#uses=1]
  br i1 %axi_user_V, label %bb37.preheader, label %bb2

bb37.preheader:                                   ; preds = %bb3
  %sof = alloca i1                                ; <i1*> [#uses=3]
  store i1 true, i1* %sof
  br label %bb37

bb6:                                              ; preds = %bb37
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str26) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str20) nounwind
  br label %bb29

bb7:                                              ; preds = %bb29
  %sof_load = load i1* %sof                       ; <i1> [#uses=1]
  %tmp_71 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str27) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str20) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str20) nounwind
  br i1 %sof_load, label %bb14.pre, label %bb9

bb9:                                              ; preds = %bb7
  br i1 %eol, label %bb14, label %bb12

bb12:                                             ; preds = %bb9
  %empty_119 = call %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) ; <%0> [#uses=2]
  %tmp_data_V_1 = extractvalue %0 %empty_119, 0   ; <i32> [#uses=1]
  %tmp_last_V_1 = extractvalue %0 %empty_119, 4   ; <i1> [#uses=2]
  br label %bb14

bb14.pre:                                         ; preds = %bb7
  store i1 false, i1* %sof
  br label %bb14

bb14:                                             ; preds = %bb14.pre, %bb12, %bb9
  %axi_data_V_8 = phi i32 [ %tmp_data_V_1, %bb12 ], [ %axi_data_V_2, %bb14.pre ], [ 0, %bb9 ] ; <i32> [#uses=4]
  %axi_last_V_7 = phi i1 [ %tmp_last_V_1, %bb12 ], [ %eol_6, %bb14.pre ], [ false, %bb9 ] ; <i1> [#uses=1]
  %eol_5 = phi i1 [ %tmp_last_V_1, %bb12 ], [ %eol_6, %bb14.pre ], [ %eol, %bb9 ] ; <i1> [#uses=1]
  %pix_val_0 = trunc i32 %axi_data_V_8 to i8      ; <i8> [#uses=1]
  %pix_val_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %axi_data_V_8, i32 8, i32 15) ; <i8> [#uses=1]
  %pix_val_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %axi_data_V_8, i32 16, i32 23) ; <i8> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %img_data_stream_0_V, i8 %pix_val_0)
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %img_data_stream_1_V, i8 %pix_val_1)
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %img_data_stream_2_V, i8 %pix_val_2)
  %empty_120 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str27, i32 %tmp_71) ; <i32> [#uses=0]
  br label %bb29

bb29:                                             ; preds = %bb14, %bb6
  %axi_data_V_2 = phi i32 [ %axi_data_V_1, %bb6 ], [ %axi_data_V_8, %bb14 ] ; <i32> [#uses=2]
  %eol_6 = phi i1 [ %axi_last_V_1, %bb6 ], [ %axi_last_V_7, %bb14 ] ; <i1> [#uses=3]
  %t_V_3 = phi i12 [ 0, %bb6 ], [ %j_V, %bb14 ]   ; <i12> [#uses=2]
  %eol = phi i1 [ false, %bb6 ], [ %eol_5, %bb14 ] ; <i1> [#uses=3]
  %exitcond3 = icmp eq i12 %t_V_3, %img_cols_V_read_1 ; <i1> [#uses=1]
  %j_V = add i12 %t_V_3, 1                        ; <i12> [#uses=1]
  br i1 %exitcond3, label %bb32, label %bb7

bb31:                                             ; preds = %bb32
  %tmp_72 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str28) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str20) nounwind
  %empty_121 = call %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) ; <%0> [#uses=2]
  %tmp_data_V_2 = extractvalue %0 %empty_121, 0   ; <i32> [#uses=1]
  %tmp_last_V_2 = extractvalue %0 %empty_121, 4   ; <i1> [#uses=2]
  %empty_122 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str28, i32 %tmp_72) ; <i32> [#uses=0]
  br label %bb32

bb32:                                             ; preds = %bb29, %bb31
  %axi_data_V_4 = phi i32 [ %tmp_data_V_2, %bb31 ], [ %axi_data_V_2, %bb29 ] ; <i32> [#uses=1]
  %axi_last_V_4 = phi i1 [ %tmp_last_V_2, %bb31 ], [ %eol_6, %bb29 ] ; <i1> [#uses=1]
  %eol_1 = phi i1 [ %tmp_last_V_2, %bb31 ], [ %eol, %bb29 ] ; <i1> [#uses=1]
  br i1 %eol_1, label %bb35, label %bb31

bb35:                                             ; preds = %bb32
  %empty_123 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str26, i32 %tmp_s) ; <i32> [#uses=0]
  br label %bb37

bb37:                                             ; preds = %bb37.preheader, %bb35
  %axi_data_V_1 = phi i32 [ %axi_data_V_4, %bb35 ], [ %axi_data_V, %bb37.preheader ] ; <i32> [#uses=1]
  %axi_last_V_1 = phi i1 [ %axi_last_V_4, %bb35 ], [ %axi_last_V, %bb37.preheader ] ; <i1> [#uses=1]
  %t_V = phi i12 [ %i_V, %bb35 ], [ 0, %bb37.preheader ] ; <i12> [#uses=2]
  %exitcond = icmp eq i12 %t_V, %img_rows_V_read_1 ; <i1> [#uses=1]
  %i_V = add i12 %t_V, 1                          ; <i12> [#uses=1]
  br i1 %exitcond, label %return, label %bb6

return:                                           ; preds = %bb37
  ret void
}

define internal fastcc void @"CvtColor<0,16,16,1080,1920>"(i12 %p_src_rows_V_read, i12 %p_src_cols_V_read, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_2_V, [8 x i8]* @str152, i32 0, i32 0, [8 x i8]* @str152) ; <i32> [#uses=0]
  %empty_124 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_1_V, [8 x i8]* @str149, i32 0, i32 0, [8 x i8]* @str149) ; <i32> [#uses=0]
  %empty_125 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_0_V, [8 x i8]* @str146, i32 0, i32 0, [8 x i8]* @str146) ; <i32> [#uses=0]
  %empty_126 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_2_V, [8 x i8]* @str143, i32 0, i32 0, [8 x i8]* @str143) ; <i32> [#uses=0]
  %empty_127 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_1_V, [8 x i8]* @str140, i32 0, i32 0, [8 x i8]* @str140) ; <i32> [#uses=0]
  %empty_128 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_0_V, [8 x i8]* @str137, i32 0, i32 0, [8 x i8]* @str137) ; <i32> [#uses=0]
  %p_src_cols_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %p_src_cols_V_read) ; <i12> [#uses=1]
  %p_src_rows_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %p_src_rows_V_read) ; <i12> [#uses=1]
  br label %bb4.i

bb.i:                                             ; preds = %bb4.i
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str30) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str20) nounwind
  br label %bb2.i

bb1.i:                                            ; preds = %bb2.i
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str31) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str20) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str20) nounwind
  %tmp_100 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %p_src_data_stream_0_V) ; <i8> [#uses=1]
  %tmp_101 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %p_src_data_stream_1_V) ; <i8> [#uses=1]
  %tmp_102 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %p_src_data_stream_2_V) ; <i8> [#uses=1]
  %p_cast7 = zext i8 %tmp_102 to i26              ; <i26> [#uses=1]
  %r_V = mul i26 %p_cast7, 239075                 ; <i26> [#uses=1]
  %p_cast6 = zext i8 %tmp_101 to i29              ; <i29> [#uses=1]
  %b_V = mul i29 %p_cast6, 1231028                ; <i29> [#uses=1]
  %p_cast = zext i8 %tmp_100 to i28               ; <i28> [#uses=1]
  %g_V = mul i28 %p_cast, 627048                  ; <i28> [#uses=1]
  %lhs_V1_i_cast = zext i26 %r_V to i28           ; <i28> [#uses=1]
  %r_V_1 = add i28 %g_V, %lhs_V1_i_cast           ; <i28> [#uses=1]
  %lhs_V_1_i_cast = zext i28 %r_V_1 to i29        ; <i29> [#uses=1]
  %r_V_2 = add i29 %b_V, %lhs_V_1_i_cast          ; <i29> [#uses=2]
  %tmp_51 = call i8 @_ssdm_op_PartSelect.i8.i29.i32.i32(i29 %r_V_2, i32 21, i32 28) ; <i8> [#uses=1]
  %p_Val2_8_i_cast = zext i8 %tmp_51 to i9        ; <i9> [#uses=1]
  %qbit = call i1 @_ssdm_op_BitSelect.i1.i29.i32(i29 %r_V_2, i32 20) ; <i1> [#uses=1]
  %tmp_7_i_cast = zext i1 %qbit to i9             ; <i9> [#uses=1]
  %p_Val2_s = add i9 %p_Val2_8_i_cast, %tmp_7_i_cast ; <i9> [#uses=2]
  %tmp_98 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %p_Val2_s, i32 8) ; <i1> [#uses=1]
  %tmp_99 = trunc i9 %p_Val2_s to i8              ; <i8> [#uses=1]
  %p_d_val_0 = select i1 %tmp_98, i8 -1, i8 %tmp_99 ; <i8> [#uses=3]
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %p_dst_data_stream_0_V, i8 %p_d_val_0)
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %p_dst_data_stream_1_V, i8 %p_d_val_0)
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %p_dst_data_stream_2_V, i8 %p_d_val_0)
  %empty_129 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str31, i32 %tmp_s) ; <i32> [#uses=0]
  br label %bb2.i

bb2.i:                                            ; preds = %bb1.i, %bb.i
  %j = phi i12 [ 0, %bb.i ], [ %j_1, %bb1.i ]     ; <i12> [#uses=2]
  %exitcond3 = icmp eq i12 %j, %p_src_cols_V_read_1 ; <i1> [#uses=1]
  %j_1 = add i12 %j, 1                            ; <i12> [#uses=1]
  br i1 %exitcond3, label %bb3.i, label %bb1.i

bb3.i:                                            ; preds = %bb2.i
  %empty_130 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str30, i32 %tmp) ; <i32> [#uses=0]
  br label %bb4.i

bb4.i:                                            ; preds = %bb3.i, %entry
  %i = phi i12 [ 0, %entry ], [ %i_2, %bb3.i ]    ; <i12> [#uses=2]
  %exitcond4 = icmp eq i12 %i, %p_src_rows_V_read_1 ; <i1> [#uses=1]
  %i_2 = add i12 %i, 1                            ; <i12> [#uses=1]
  br i1 %exitcond4, label %"CvtColor_opr<kernel_RGB2GRAY,16,16,1080,1920>.exit", label %bb.i

"CvtColor_opr<kernel_RGB2GRAY,16,16,1080,1920>.exit": ; preds = %bb4.i
  ret void
}

define internal fastcc void @Sobel(i12 %src_rows_V_read, i12 %src_cols_V_read, i8* %src_data_stream_0_V, i8* %src_data_stream_1_V, i8* %src_data_stream_2_V, i8* %dst_data_stream_0_V, i8* %dst_data_stream_1_V, i8* %dst_data_stream_2_V) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_2_V, [8 x i8]* @str161, i32 0, i32 0, [8 x i8]* @str161) ; <i32> [#uses=0]
  %empty_131 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_1_V, [8 x i8]* @str158, i32 0, i32 0, [8 x i8]* @str158) ; <i32> [#uses=0]
  %empty_132 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_0_V, [8 x i8]* @str155, i32 0, i32 0, [8 x i8]* @str155) ; <i32> [#uses=0]
  %empty_133 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_2_V, [8 x i8]* @str152, i32 0, i32 0, [8 x i8]* @str152) ; <i32> [#uses=0]
  %empty_134 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_1_V, [8 x i8]* @str149, i32 0, i32 0, [8 x i8]* @str149) ; <i32> [#uses=0]
  %empty_135 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_0_V, [8 x i8]* @str146, i32 0, i32 0, [8 x i8]* @str146) ; <i32> [#uses=0]
  %src_cols_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %src_cols_V_read) ; <i12> [#uses=1]
  %src_rows_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %src_rows_V_read) ; <i12> [#uses=1]
  call fastcc void @"filter_opr<filter2d_kernel,16,16,int,int,1080,1920,3,3>"(i8* %src_data_stream_0_V, i8* %src_data_stream_1_V, i8* %src_data_stream_2_V, i8* %dst_data_stream_0_V, i8* %dst_data_stream_1_V, i8* %dst_data_stream_2_V, i12 %src_rows_V_read_1, i12 %src_cols_V_read_1)
  ret void
}

define internal fastcc void @"Erode<16,16,1080,1920>"(i12 %p_src_rows_V_read, i12 %p_src_cols_V_read, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_2_V, [8 x i8]* @str170, i32 0, i32 0, [8 x i8]* @str170) ; <i32> [#uses=0]
  %empty_136 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_1_V, [8 x i8]* @str167, i32 0, i32 0, [8 x i8]* @str167) ; <i32> [#uses=0]
  %empty_137 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_dst_data_stream_0_V, [8 x i8]* @str164, i32 0, i32 0, [8 x i8]* @str164) ; <i32> [#uses=0]
  %empty_138 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_2_V, [8 x i8]* @str161, i32 0, i32 0, [8 x i8]* @str161) ; <i32> [#uses=0]
  %empty_139 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_1_V, [8 x i8]* @str158, i32 0, i32 0, [8 x i8]* @str158) ; <i32> [#uses=0]
  %empty_140 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %p_src_data_stream_0_V, [8 x i8]* @str155, i32 0, i32 0, [8 x i8]* @str155) ; <i32> [#uses=0]
  %p_src_cols_V_read_2 = call i12 @_ssdm_op_WireRead.i12(i12 %p_src_cols_V_read) ; <i12> [#uses=1]
  %p_src_rows_V_read_2 = call i12 @_ssdm_op_WireRead.i12(i12 %p_src_rows_V_read) ; <i12> [#uses=1]
  br label %bb32.i

bb26_ifconv.i:                                    ; preds = %bb27.i
  %sel_tmp38_i = icmp eq i2 %j, 0                 ; <i1> [#uses=2]
  %sel_tmp39_i = and i1 %sel_tmp37_i, %sel_tmp38_i ; <i1> [#uses=2]
  %sel_tmp47_i = and i1 %sel_tmp46_i, %sel_tmp38_i ; <i1> [#uses=3]
  %sel_tmp52_i = icmp ne i2 %j, 0                 ; <i1> [#uses=1]
  %sel_tmp54_i = icmp ne i2 %j, 1                 ; <i1> [#uses=1]
  %tmp1_i = and i1 %sel_tmp52_i, %sel_tmp54_i     ; <i1> [#uses=1]
  %sel_tmp58_i = icmp eq i2 %j, 1                 ; <i1> [#uses=4]
  %sel_tmp59_i = and i1 %sel_tmp49_i, %sel_tmp58_i ; <i1> [#uses=2]
  %sel_tmp60_i = and i1 %sel_tmp37_i, %sel_tmp58_i ; <i1> [#uses=2]
  %sel_tmp61_i = and i1 %sel_tmp46_i, %sel_tmp58_i ; <i1> [#uses=1]
  %tmp_63_i = or i2 %i, %j                        ; <i2> [#uses=1]
  %tmp_64_i = icmp eq i2 %tmp_63_i, 0             ; <i1> [#uses=3]
  %or_cond_i = or i1 %sel_tmp47_i, %sel_tmp39_i   ; <i1> [#uses=3]
  %or_cond8_i = or i1 %tmp_64_i, %sel_tmp61_i     ; <i1> [#uses=1]
  %tmp = or i1 %tmp1_i, %sel_tmp58_i              ; <i1> [#uses=2]
  %or_cond9_i = and i1 %sel_tmp37_i, %tmp         ; <i1> [#uses=3]
  %newSel_i = select i1 %sel_tmp59_i, i8 %result_val2_6_i, i8 1 ; <i8> [#uses=1]
  %or_cond11_i = or i1 %or_cond_i, %or_cond8_i    ; <i1> [#uses=6]
  %newSel27_i = select i1 %or_cond9_i, i8 %result_val2_6_i, i8 %newSel_i ; <i8> [#uses=1]
  %tmp5 = or i1 %sel_tmp37_i, %sel_tmp49_i        ; <i1> [#uses=1]
  %or_cond12_i = and i1 %tmp, %tmp5               ; <i1> [#uses=1]
  %newSel28_i = select i1 %or_cond11_i, i8 %result_val2_6_i, i8 %newSel27_i ; <i8> [#uses=1]
  %or_cond13_i = or i1 %or_cond11_i, %or_cond12_i ; <i1> [#uses=2]
  %newSel29_i = select i1 %or_cond13_i, i8 %newSel28_i, i8 %result_val2_6_i ; <i8> [#uses=1]
  %sel_tmp62_i = select i1 %sel_tmp39_i, i8 1, i8 %result_val13_6_i ; <i8> [#uses=1]
  %result_val13_5_i = select i1 %sel_tmp47_i, i8 %result_val13_6_i, i8 %sel_tmp62_i ; <i8> [#uses=1]
  %newSel30_i = select i1 %sel_tmp60_i, i8 1, i8 %result_val14_6_i ; <i8> [#uses=1]
  %newSel31_i = select i1 %or_cond11_i, i8 %result_val14_6_i, i8 %newSel30_i ; <i8> [#uses=1]
  %newSel32_i = select i1 %sel_tmp59_i, i8 1, i8 %result_val16_6_i ; <i8> [#uses=1]
  %newSel33_i = select i1 %or_cond9_i, i8 %result_val16_6_i, i8 %newSel32_i ; <i8> [#uses=1]
  %newSel34_i = select i1 %or_cond11_i, i8 %result_val16_6_i, i8 %newSel33_i ; <i8> [#uses=1]
  %newSel35_i = select i1 %sel_tmp60_i, i8 %result_val1520_6_i, i8 1 ; <i8> [#uses=1]
  %newSel36_i = select i1 %or_cond9_i, i8 %newSel35_i, i8 %result_val1520_6_i ; <i8> [#uses=1]
  %newSel37_i = select i1 %or_cond11_i, i8 %result_val1520_6_i, i8 %newSel36_i ; <i8> [#uses=1]
  %result_val26_5_i = select i1 %sel_tmp47_i, i8 1, i8 %result_val26_6_i ; <i8> [#uses=1]
  %newSel38_i = select i1 %tmp_64_i, i8 1, i8 %result_val_6_i ; <i8> [#uses=1]
  %newSel39_i = select i1 %or_cond_i, i8 %result_val_6_i, i8 %newSel38_i ; <i8> [#uses=1]
  %newSel40_i = select i1 %tmp_64_i, i8 %result_val27_6_i, i8 1 ; <i8> [#uses=1]
  %newSel41_i = select i1 %or_cond_i, i8 %result_val27_6_i, i8 %newSel40_i ; <i8> [#uses=1]
  %newSel42_i = select i1 %or_cond11_i, i8 %newSel41_i, i8 %result_val27_6_i ; <i8> [#uses=1]
  %newSel43_i = select i1 %or_cond13_i, i8 %result_val28_6_i, i8 1 ; <i8> [#uses=1]
  br label %bb27.i

bb27.i:                                           ; preds = %bb27.i.preheader, %bb26_ifconv.i
  %result_val2_6_i = phi i8 [ %newSel29_i, %bb26_ifconv.i ], [ %temp_kernel_val_0_2, %bb27.i.preheader ] ; <i8> [#uses=5]
  %result_val13_6_i = phi i8 [ %result_val13_5_i, %bb26_ifconv.i ], [ %temp_kernel_val_1_0, %bb27.i.preheader ] ; <i8> [#uses=3]
  %result_val14_6_i = phi i8 [ %newSel31_i, %bb26_ifconv.i ], [ %temp_kernel_val_1_1, %bb27.i.preheader ] ; <i8> [#uses=3]
  %result_val16_6_i = phi i8 [ %newSel34_i, %bb26_ifconv.i ], [ %temp_kernel_val_0_1, %bb27.i.preheader ] ; <i8> [#uses=4]
  %result_val1520_6_i = phi i8 [ %newSel37_i, %bb26_ifconv.i ], [ %temp_kernel_val_1_2, %bb27.i.preheader ] ; <i8> [#uses=4]
  %result_val26_6_i = phi i8 [ %result_val26_5_i, %bb26_ifconv.i ], [ %temp_kernel_val_2_0, %bb27.i.preheader ] ; <i8> [#uses=2]
  %result_val_6_i = phi i8 [ %newSel39_i, %bb26_ifconv.i ], [ %temp_kernel_val_0_0, %bb27.i.preheader ] ; <i8> [#uses=3]
  %result_val27_6_i = phi i8 [ %newSel42_i, %bb26_ifconv.i ], [ %temp_kernel_val_2_1, %bb27.i.preheader ] ; <i8> [#uses=4]
  %result_val28_6_i = phi i8 [ %newSel43_i, %bb26_ifconv.i ], [ %temp_kernel_val_2_2, %bb27.i.preheader ] ; <i8> [#uses=2]
  %j = phi i2 [ %indvar_next1_i, %bb26_ifconv.i ], [ 0, %bb27.i.preheader ] ; <i2> [#uses=7]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %exitcond7 = icmp eq i2 %j, -1                  ; <i1> [#uses=1]
  %indvar_next1_i = add i2 %j, 1                  ; <i2> [#uses=1]
  br i1 %exitcond7, label %bb30.i, label %bb26_ifconv.i

bb29_ifconv.i:                                    ; preds = %bb30.i
  %tmp_103 = trunc i32 %indvar_i to i2            ; <i2> [#uses=4]
  %sel_tmp72_i = icmp eq i2 %tmp_103, 1           ; <i1> [#uses=3]
  %sel_tmp73_i = and i1 %sel_tmp37_i, %sel_tmp72_i ; <i1> [#uses=2]
  %sel_tmp77_i = and i1 %sel_tmp46_i, %sel_tmp72_i ; <i1> [#uses=3]
  %sel_tmp80_i = icmp ne i2 %tmp_103, 1           ; <i1> [#uses=1]
  %sel_tmp81_i = icmp ne i2 %tmp_103, -2          ; <i1> [#uses=1]
  %tmp29_i = and i1 %sel_tmp80_i, %sel_tmp81_i    ; <i1> [#uses=1]
  %sel_tmp83_i = icmp eq i2 %tmp_103, -2          ; <i1> [#uses=4]
  %sel_tmp84_i = and i1 %sel_tmp49_i, %sel_tmp83_i ; <i1> [#uses=2]
  %sel_tmp86_i = and i1 %sel_tmp37_i, %sel_tmp83_i ; <i1> [#uses=2]
  %sel_tmp87_i = and i1 %sel_tmp46_i, %sel_tmp83_i ; <i1> [#uses=1]
  %sel_tmp88_i = and i1 %sel_tmp49_i, %sel_tmp72_i ; <i1> [#uses=3]
  %or_cond36_i = or i1 %sel_tmp77_i, %sel_tmp73_i ; <i1> [#uses=3]
  %or_cond37_i = or i1 %sel_tmp88_i, %sel_tmp87_i ; <i1> [#uses=1]
  %tmp3 = or i1 %tmp29_i, %sel_tmp83_i            ; <i1> [#uses=2]
  %or_cond38_i = and i1 %sel_tmp37_i, %tmp3       ; <i1> [#uses=3]
  %newSel44_i = select i1 %sel_tmp84_i, i8 %result_val2_2_i, i8 0 ; <i8> [#uses=1]
  %or_cond40_i = or i1 %or_cond36_i, %or_cond37_i ; <i1> [#uses=6]
  %newSel45_i = select i1 %or_cond38_i, i8 %result_val2_2_i, i8 %newSel44_i ; <i8> [#uses=1]
  %tmp6 = or i1 %sel_tmp37_i, %sel_tmp49_i        ; <i1> [#uses=1]
  %or_cond41_i = and i1 %tmp3, %tmp6              ; <i1> [#uses=1]
  %newSel46_i = select i1 %or_cond40_i, i8 %result_val2_2_i, i8 %newSel45_i ; <i8> [#uses=1]
  %or_cond42_i = or i1 %or_cond40_i, %or_cond41_i ; <i1> [#uses=2]
  %newSel47_i = select i1 %or_cond42_i, i8 %newSel46_i, i8 %result_val2_2_i ; <i8> [#uses=1]
  %sel_tmp89_i = select i1 %sel_tmp73_i, i8 0, i8 %result_val13_2_i ; <i8> [#uses=1]
  %result_val13_1_i = select i1 %sel_tmp77_i, i8 %result_val13_2_i, i8 %sel_tmp89_i ; <i8> [#uses=1]
  %newSel48_i = select i1 %sel_tmp86_i, i8 0, i8 %result_val14_2_i ; <i8> [#uses=1]
  %newSel49_i = select i1 %or_cond40_i, i8 %result_val14_2_i, i8 %newSel48_i ; <i8> [#uses=1]
  %newSel50_i = select i1 %sel_tmp84_i, i8 0, i8 %result_val16_2_i ; <i8> [#uses=1]
  %newSel51_i = select i1 %or_cond38_i, i8 %result_val16_2_i, i8 %newSel50_i ; <i8> [#uses=1]
  %newSel52_i = select i1 %or_cond40_i, i8 %result_val16_2_i, i8 %newSel51_i ; <i8> [#uses=1]
  %newSel53_i = select i1 %sel_tmp86_i, i8 %result_val1520_2_i, i8 0 ; <i8> [#uses=1]
  %newSel54_i = select i1 %or_cond38_i, i8 %newSel53_i, i8 %result_val1520_2_i ; <i8> [#uses=1]
  %newSel55_i = select i1 %or_cond40_i, i8 %result_val1520_2_i, i8 %newSel54_i ; <i8> [#uses=1]
  %result_val26_1_i = select i1 %sel_tmp77_i, i8 0, i8 %result_val26_2_i ; <i8> [#uses=1]
  %newSel56_i = select i1 %sel_tmp88_i, i8 0, i8 %result_val_2_i ; <i8> [#uses=1]
  %newSel57_i = select i1 %or_cond36_i, i8 %result_val_2_i, i8 %newSel56_i ; <i8> [#uses=1]
  %newSel58_i = select i1 %sel_tmp88_i, i8 %result_val27_2_i, i8 0 ; <i8> [#uses=1]
  %newSel59_i = select i1 %or_cond36_i, i8 %result_val27_2_i, i8 %newSel58_i ; <i8> [#uses=1]
  %newSel60_i = select i1 %or_cond40_i, i8 %newSel59_i, i8 %result_val27_2_i ; <i8> [#uses=1]
  %newSel61_i = select i1 %or_cond42_i, i8 %result_val28_2_i, i8 0 ; <i8> [#uses=1]
  br label %bb30.i

bb30.i:                                           ; preds = %bb27.i, %bb29_ifconv.i
  %result_val2_2_i = phi i8 [ %newSel47_i, %bb29_ifconv.i ], [ %result_val2_6_i, %bb27.i ] ; <i8> [#uses=5]
  %result_val13_2_i = phi i8 [ %result_val13_1_i, %bb29_ifconv.i ], [ %result_val13_6_i, %bb27.i ] ; <i8> [#uses=3]
  %result_val14_2_i = phi i8 [ %newSel49_i, %bb29_ifconv.i ], [ %result_val14_6_i, %bb27.i ] ; <i8> [#uses=3]
  %result_val16_2_i = phi i8 [ %newSel52_i, %bb29_ifconv.i ], [ %result_val16_6_i, %bb27.i ] ; <i8> [#uses=4]
  %result_val1520_2_i = phi i8 [ %newSel55_i, %bb29_ifconv.i ], [ %result_val1520_6_i, %bb27.i ] ; <i8> [#uses=4]
  %result_val26_2_i = phi i8 [ %result_val26_1_i, %bb29_ifconv.i ], [ %result_val26_6_i, %bb27.i ] ; <i8> [#uses=2]
  %result_val_2_i = phi i8 [ %newSel57_i, %bb29_ifconv.i ], [ %result_val_6_i, %bb27.i ] ; <i8> [#uses=3]
  %result_val27_2_i = phi i8 [ %newSel60_i, %bb29_ifconv.i ], [ %result_val27_6_i, %bb27.i ] ; <i8> [#uses=4]
  %result_val28_2_i = phi i8 [ %newSel61_i, %bb29_ifconv.i ], [ %result_val28_6_i, %bb27.i ] ; <i8> [#uses=2]
  %indvar_i = phi i32 [ %indvar_next_i, %bb29_ifconv.i ], [ 0, %bb27.i ] ; <i32> [#uses=3]
  %exitcond5_i = icmp eq i32 %indvar_i, 0         ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 0, i64 0) nounwind
  %indvar_next_i = add i32 %indvar_i, 1           ; <i32> [#uses=1]
  br i1 %exitcond5_i, label %bb32.i, label %bb29_ifconv.i

bb32.i:                                           ; preds = %bb30.i, %entry
  %temp_kernel_val_0_2 = phi i8 [ undef, %entry ], [ %result_val2_2_i, %bb30.i ] ; <i8> [#uses=2]
  %temp_kernel_val_1_0 = phi i8 [ undef, %entry ], [ %result_val13_2_i, %bb30.i ] ; <i8> [#uses=2]
  %temp_kernel_val_1_1 = phi i8 [ undef, %entry ], [ %result_val14_2_i, %bb30.i ] ; <i8> [#uses=2]
  %temp_kernel_val_0_1 = phi i8 [ undef, %entry ], [ %result_val16_2_i, %bb30.i ] ; <i8> [#uses=2]
  %temp_kernel_val_1_2 = phi i8 [ undef, %entry ], [ %result_val1520_2_i, %bb30.i ] ; <i8> [#uses=2]
  %temp_kernel_val_2_0 = phi i8 [ undef, %entry ], [ %result_val26_2_i, %bb30.i ] ; <i8> [#uses=2]
  %temp_kernel_val_0_0 = phi i8 [ undef, %entry ], [ %result_val_2_i, %bb30.i ] ; <i8> [#uses=2]
  %temp_kernel_val_2_1 = phi i8 [ undef, %entry ], [ %result_val27_2_i, %bb30.i ] ; <i8> [#uses=2]
  %temp_kernel_val_2_2 = phi i8 [ undef, %entry ], [ %result_val28_2_i, %bb30.i ] ; <i8> [#uses=2]
  %i = phi i2 [ 0, %entry ], [ %i_3, %bb30.i ]    ; <i2> [#uses=7]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %exitcond = icmp eq i2 %i, -1                   ; <i1> [#uses=1]
  %i_3 = add i2 %i, 1                             ; <i2> [#uses=1]
  br i1 %exitcond, label %"getStructuringElement<unsigned char,int,int,3,3>.exit", label %bb27.i.preheader

bb27.i.preheader:                                 ; preds = %bb32.i
  %sel_tmp37_i = icmp eq i2 %i, 1                 ; <i1> [#uses=8]
  %sel_tmp44_i = icmp ne i2 %i, 0                 ; <i1> [#uses=1]
  %sel_tmp45_i = icmp ne i2 %i, 1                 ; <i1> [#uses=1]
  %sel_tmp46_i = and i1 %sel_tmp44_i, %sel_tmp45_i ; <i1> [#uses=4]
  %sel_tmp49_i = icmp eq i2 %i, 0                 ; <i1> [#uses=5]
  br label %bb27.i

"getStructuringElement<unsigned char,int,int,3,3>.exit": ; preds = %bb32.i
  call fastcc void @"filter_opr<erode_kernel,16,16,unsigned char,int,1080,1920,3,3>"(i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V, i8 %temp_kernel_val_0_0, i8 %temp_kernel_val_0_1, i8 %temp_kernel_val_0_2, i8 %temp_kernel_val_1_0, i8 %temp_kernel_val_1_1, i8 %temp_kernel_val_1_2, i8 %temp_kernel_val_2_0, i8 %temp_kernel_val_2_1, i8 %temp_kernel_val_2_2, i12 %p_src_rows_V_read_2, i12 %p_src_cols_V_read_2)
  ret void
}

define internal fastcc void @"Mat2AXIvideo<32,1080,1920,16>"(i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V, i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) {
entry:
  %sof_2 = alloca i1                              ; <i1*> [#uses=3]
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_2_V, [8 x i8]* @str170, i32 0, i32 0, [8 x i8]* @str170) ; <i32> [#uses=0]
  %empty_141 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_1_V, [8 x i8]* @str167, i32 0, i32 0, [8 x i8]* @str167) ; <i32> [#uses=0]
  %empty_142 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_0_V, [8 x i8]* @str164, i32 0, i32 0, [8 x i8]* @str164) ; <i32> [#uses=0]
  %empty_143 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_dest_V, [8 x i8]* @str77, i32 0, i32 0, [8 x i8]* @str77) ; <i32> [#uses=0]
  %empty_144 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_id_V, [8 x i8]* @str76, i32 0, i32 0, [8 x i8]* @str76) ; <i32> [#uses=0]
  %empty_145 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_last_V, [8 x i8]* @str75, i32 0, i32 0, [8 x i8]* @str75) ; <i32> [#uses=0]
  %empty_146 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_user_V, [8 x i8]* @str74, i32 0, i32 0, [8 x i8]* @str74) ; <i32> [#uses=0]
  %empty_147 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_strb_V, [8 x i8]* @str73, i32 0, i32 0, [8 x i8]* @str73) ; <i32> [#uses=0]
  %empty_148 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_keep_V, [8 x i8]* @str72, i32 0, i32 0, [8 x i8]* @str72) ; <i32> [#uses=0]
  %empty_149 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %AXI_video_strm_V_data_V, [8 x i8]* @str71, i32 0, i32 0, [8 x i8]* @str71) ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [1 x i8]* @p_str20, [5 x i8]* @p_str41, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [26 x i8]* @p_str43)
  %img_cols_V_read_2 = call i12 @_ssdm_op_WireRead.i12(i12 %img_cols_V_read) ; <i12> [#uses=2]
  %img_rows_V_read_2 = call i12 @_ssdm_op_WireRead.i12(i12 %img_rows_V_read) ; <i12> [#uses=1]
  %retval_i_cast = zext i12 %img_cols_V_read_2 to i13 ; <i13> [#uses=1]
  %op2_assign = add i13 %retval_i_cast, -1        ; <i13> [#uses=1]
  store i1 true, i1* %sof_2
  br label %bb17

bb2:                                              ; preds = %bb17
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str32) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str20) nounwind
  br label %bb14

bb3:                                              ; preds = %bb14
  %sof_2_load = load i1* %sof_2                   ; <i1> [#uses=1]
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str33) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str20) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str20) nounwind
  %tmp_cast = zext i12 %t_V_4 to i13              ; <i13> [#uses=1]
  %axi_last_V = icmp eq i13 %tmp_cast, %op2_assign ; <i1> [#uses=1]
  %tmp_107 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %img_data_stream_0_V) ; <i8> [#uses=1]
  %tmp_108 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %img_data_stream_1_V) ; <i8> [#uses=1]
  %tmp_109 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %img_data_stream_2_V) ; <i8> [#uses=1]
  %axi_data_V = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 -1, i8 %tmp_109, i8 %tmp_108, i8 %tmp_107) ; <i32> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i32 %axi_data_V, i4 -1, i4 undef, i1 %sof_2_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_150 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str33, i32 %tmp_s) ; <i32> [#uses=0]
  store i1 false, i1* %sof_2
  br label %bb14

bb14:                                             ; preds = %bb3, %bb2
  %t_V_4 = phi i12 [ 0, %bb2 ], [ %j_V, %bb3 ]    ; <i12> [#uses=3]
  %exitcond2 = icmp eq i12 %t_V_4, %img_cols_V_read_2 ; <i1> [#uses=1]
  %j_V = add i12 %t_V_4, 1                        ; <i12> [#uses=1]
  br i1 %exitcond2, label %bb15, label %bb3

bb15:                                             ; preds = %bb14
  %empty_151 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str32, i32 %tmp) ; <i32> [#uses=0]
  br label %bb17

bb17:                                             ; preds = %bb15, %entry
  %t_V = phi i12 [ 0, %entry ], [ %i_V, %bb15 ]   ; <i12> [#uses=2]
  %exitcond = icmp eq i12 %t_V, %img_rows_V_read_2 ; <i1> [#uses=1]
  %i_V = add i12 %t_V, 1                          ; <i12> [#uses=1]
  br i1 %exitcond, label %return, label %bb2

return:                                           ; preds = %bb17
  ret void
}

define internal fastcc %"hls::Mat<1080, 1920, 16>::init_ret" @init(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str20, [10 x i8]* @p_str44, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str45)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str20, [10 x i8]* @p_str44, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str45)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=2]
  %tmp_110 = trunc i32 %p_cols_read to i12        ; <i12> [#uses=2]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" %mrv, i12 %tmp, 1 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  %mrv_2 = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" %mrv_1, i12 %tmp_110, 2 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  %mrv_3 = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" %mrv_2, i12 %tmp_110, 3 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 16>::init_ret" %mrv_3
}

define internal fastcc %"hls::Mat<1080, 1920, 16>::init.1_ret" @init.1(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str20, [10 x i8]* @p_str44, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str45)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str20, [10 x i8]* @p_str44, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str45)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_111 = trunc i32 %p_cols_read to i12        ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 16>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" %mrv, i12 %tmp_111, 1 ; <%"hls::Mat<1080, 1920, 16>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 16>::init.1_ret" %mrv_1
}

define internal fastcc %"hls::Mat<1080, 1920, 16>::init.1_ret" @init.2(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str20, [10 x i8]* @p_str44, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str45)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str20, [10 x i8]* @p_str44, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str45)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_112 = trunc i32 %p_cols_read to i12        ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 16>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" %mrv, i12 %tmp_112, 1 ; <%"hls::Mat<1080, 1920, 16>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 16>::init.1_ret" %mrv_1
}

define internal fastcc %"hls::Mat<1080, 1920, 16>::init.1_ret" @init.3(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str20, [10 x i8]* @p_str44, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str45)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str20, [10 x i8]* @p_str44, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str45)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_113 = trunc i32 %p_cols_read to i12        ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 16>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 16>::init.1_ret" %mrv, i12 %tmp_113, 1 ; <%"hls::Mat<1080, 1920, 16>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 16>::init.1_ret" %mrv_1
}

define weak i12 @_ssdm_op_PartSelect.i12.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2) ; <i13> [#uses=1]
  %empty_152 = trunc i13 %empty to i12            ; <i12> [#uses=1]
  ret i12 %empty_152
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12, i1) nounwind readnone {
entry:
  %empty = zext i12 %0 to i13                     ; <i13> [#uses=1]
  %empty_153 = zext i1 %1 to i13                  ; <i13> [#uses=2]
  %empty_154 = trunc i13 %empty to i12            ; <i12> [#uses=1]
  %empty_155 = call i12 @_ssdm_op_PartSelect.i12.i13.i32.i32(i13 %empty_153, i32 1, i32 12) ; <i12> [#uses=1]
  %empty_156 = or i12 %empty_154, %empty_155      ; <i12> [#uses=1]
  %empty_157 = call i13 @_ssdm_op_PartSet.i13.i13.i12.i32.i32(i13 %empty_153, i12 %empty_156, i32 1, i32 12) ; <i13> [#uses=1]
  ret i13 %empty_157
}

define weak i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2) ; <i12> [#uses=1]
  %empty_158 = trunc i12 %empty to i11            ; <i11> [#uses=1]
  ret i11 %empty_158
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; <i9> [#uses=1]
  %empty_159 = zext i1 %1 to i9                   ; <i9> [#uses=2]
  %empty_160 = trunc i9 %empty to i8              ; <i8> [#uses=1]
  %empty_161 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %empty_159, i32 1, i32 8) ; <i8> [#uses=1]
  %empty_162 = or i8 %empty_160, %empty_161       ; <i8> [#uses=1]
  %empty_163 = call i9 @_ssdm_op_PartSet.i9.i9.i8.i32.i32(i9 %empty_159, i8 %empty_162, i32 1, i32 8) ; <i9> [#uses=1]
  ret i9 %empty_163
}

define weak i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; <i11> [#uses=1]
  %empty_164 = trunc i11 %empty to i3             ; <i3> [#uses=1]
  ret i3 %empty_164
}

define weak i8 @_ssdm_op_PartSelect.i8.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; <i29> [#uses=1]
  %empty_165 = trunc i29 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_165
}

define weak i32 @_ssdm_op_WireRead.i32(i32) {
entry:
  ret i32 %0
}

define weak i12 @_ssdm_op_WireRead.i12(i12) {
entry:
  ret i12 %0
}

define weak i8 @_ssdm_op_FifoRead.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)   ; <i8> [#uses=1]
  ret i8 %empty
}

define weak void @_ssdm_op_FifoWrite.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32, i4, i4, i1, i1, i1, i1) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %7) ; <i32> [#uses=0]
  %empty_166 = call i4 @_autotb_FifoWrite_i4(i4* %1, i4 %8) ; <i4> [#uses=0]
  %empty_167 = call i4 @_autotb_FifoWrite_i4(i4* %2, i4 %9) ; <i4> [#uses=0]
  %empty_168 = call i1 @_autotb_FifoWrite_i1(i1* %3, i1 %10) ; <i1> [#uses=0]
  %empty_169 = call i1 @_autotb_FifoWrite_i1(i1* %4, i1 %11) ; <i1> [#uses=0]
  %empty_170 = call i1 @_autotb_FifoWrite_i1(i1* %5, i1 %12) ; <i1> [#uses=0]
  %empty_171 = call i1 @_autotb_FifoWrite_i1(i1* %6, i1 %13) ; <i1> [#uses=0]
  ret void
}

define weak i8 @_ssdm_op_WireRead.i8(i8) {
entry:
  ret i8 %0
}

define weak void @_ssdm_op_FifoWrite.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1) ; <i8> [#uses=0]
  ret void
}

define weak %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; <i32> [#uses=1]
  %empty_172 = call i4 @_autotb_FifoRead_i4(i4* %1) ; <i4> [#uses=1]
  %empty_173 = call i4 @_autotb_FifoRead_i4(i4* %2) ; <i4> [#uses=1]
  %empty_174 = call i1 @_autotb_FifoRead_i1(i1* %3) ; <i1> [#uses=1]
  %empty_175 = call i1 @_autotb_FifoRead_i1(i1* %4) ; <i1> [#uses=1]
  %empty_176 = call i1 @_autotb_FifoRead_i1(i1* %5) ; <i1> [#uses=1]
  %empty_177 = call i1 @_autotb_FifoRead_i1(i1* %6) ; <i1> [#uses=1]
  %mrv_0 = insertvalue %0 undef, i32 %empty, 0    ; <%0> [#uses=1]
  %mrv1 = insertvalue %0 %mrv_0, i4 %empty_172, 1 ; <%0> [#uses=1]
  %mrv2 = insertvalue %0 %mrv1, i4 %empty_173, 2  ; <%0> [#uses=1]
  %mrv3 = insertvalue %0 %mrv2, i1 %empty_174, 3  ; <%0> [#uses=1]
  %mrv4 = insertvalue %0 %mrv3, i1 %empty_175, 4  ; <%0> [#uses=1]
  %mrv5 = insertvalue %0 %mrv4, i1 %empty_176, 5  ; <%0> [#uses=1]
  %mrv6 = insertvalue %0 %mrv5, i1 %empty_177, 6  ; <%0> [#uses=1]
  ret %0 %mrv6
}

define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i13                    ; <i13> [#uses=1]
  %empty_178 = shl i13 1, %empty                  ; <i13> [#uses=1]
  %empty_179 = and i13 %0, %empty_178             ; <i13> [#uses=1]
  %empty_180 = icmp ne i13 %empty_179, 0          ; <i1> [#uses=1]
  ret i1 %empty_180
}

define weak i1 @_ssdm_op_BitSelect.i1.i29.i32(i29, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i29                    ; <i29> [#uses=1]
  %empty_181 = shl i29 1, %empty                  ; <i29> [#uses=1]
  %empty_182 = and i29 %0, %empty_181             ; <i29> [#uses=1]
  %empty_183 = icmp ne i29 %empty_182, 0          ; <i1> [#uses=1]
  ret i1 %empty_183
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9                     ; <i9> [#uses=1]
  %empty_184 = shl i9 1, %empty                   ; <i9> [#uses=1]
  %empty_185 = and i9 %0, %empty_184              ; <i9> [#uses=1]
  %empty_186 = icmp ne i9 %empty_185, 0           ; <i1> [#uses=1]
  ret i1 %empty_186
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

declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i13.i32.i32(i13, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i14.i32.i32(i14, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i15.i32.i32(i15, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.select.i9(i9 %0, i32 %1, i32 %2) ; <i9> [#uses=1]
  %empty_187 = trunc i9 %empty to i8              ; <i8> [#uses=1]
  ret i8 %empty_187
}

declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; <i16> [#uses=1]
  %empty_188 = trunc i16 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_188
}

define weak i16 @_ssdm_op_PartSet.i16.i16.i8.i32.i32(i16, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.set.i16.i8(i16 %0, i8 %1, i32 %2, i32 %3) ; <i16> [#uses=1]
  ret i16 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2) ; <i24> [#uses=1]
  %empty_189 = trunc i24 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_189
}

define weak i24 @_ssdm_op_PartSet.i24.i24.i8.i32.i32(i24, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.set.i24.i8(i24 %0, i8 %1, i32 %2, i32 %3) ; <i24> [#uses=1]
  ret i24 %empty
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i8.i32.i32(i32, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i8(i32 %0, i8 %1, i32 %2, i32 %3) ; <i32> [#uses=1]
  ret i32 %empty
}

define weak i13 @_ssdm_op_PartSet.i13.i13.i12.i32.i32(i13, i12, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.set.i13.i12(i13 %0, i12 %1, i32 %2, i32 %3) ; <i13> [#uses=1]
  ret i13 %empty
}

define weak i9 @_ssdm_op_PartSet.i9.i9.i8.i32.i32(i9, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.set.i9.i8(i9 %0, i8 %1, i32 %2, i32 %3) ; <i9> [#uses=1]
  ret i9 %empty
}

declare i9 @llvm.part.select.i9(i9, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i16 @llvm.part.set.i16.i8(i16, i8, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i24 @llvm.part.set.i24.i8(i24, i8, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i8(i32, i8, i32, i32) nounwind readnone

declare i13 @llvm.part.set.i13.i12(i13, i12, i32, i32) nounwind readnone

declare i9 @llvm.part.set.i9.i8(i9, i8, i32, i32) nounwind readnone

!llvm.dbg.gv = !{!0}

!0 = metadata !{i32 458804, i32 0, metadata !1, metadata !"k_val", metadata !"k_val", metadata !"", metadata !3, i32 47, metadata !464, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!1 = metadata !{i32 458798, i32 0, metadata !2, metadata !"Sobel", metadata !"Sobel", metadata !"_Z5SobelRN3hls3MatILi1080ELi1920ELi16EEES2_ii", metadata !3, i32 44, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!2 = metadata !{i32 458769, i32 0, i32 4, metadata !"top.pragma.2.cpp", metadata !"/ise_local2/umair_temp/vivado_projects/ImgProc/prj/solution2/.autopilot/db", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 458769, i32 0, i32 4, metadata !"top.cpp", metadata !"/ise_local2/umair_temp/vivado_projects/ImgProc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!4 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, null} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{null, metadata !6, metadata !6, metadata !59, metadata !59}
!6 = metadata !{i32 458768, metadata !2, metadata !"RGB_IMAGE", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_reference_type ]
!7 = metadata !{i32 458774, metadata !2, metadata !"RGB_IMAGE", metadata !8, i32 59, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ]
!8 = metadata !{i32 458769, i32 0, i32 4, metadata !"top.h", metadata !"/ise_local2/umair_temp/vivado_projects/ImgProc/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!9 = metadata !{i32 458771, metadata !10, metadata !"Mat<1080,1920,16>", metadata !12, i32 445, i64 64, i64 16, i64 0, i32 0, null, metadata !13, i32 0, null} ; [ DW_TAG_structure_type ]
!10 = metadata !{i32 458809, metadata !2, metadata !"hls", metadata !11, i32 23} ; [ DW_TAG_namespace ]
!11 = metadata !{i32 458769, i32 0, i32 4, metadata !"hls_stream.h", metadata !"/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!12 = metadata !{i32 458769, i32 0, i32 4, metadata !"hls_video_core.h", metadata !"/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!13 = metadata !{metadata !14, metadata !313, metadata !314, metadata !362, metadata !366, metadata !369, metadata !416, metadata !417, metadata !421, metadata !444, metadata !448, metadata !451, metadata !452, metadata !453, metadata !456, metadata !462, metadata !463}
!14 = metadata !{i32 458765, metadata !9, metadata !"rows", metadata !12, i32 465, i64 16, i64 16, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 458771, metadata !2, metadata !"ap_uint<12>", metadata !16, i32 134, i64 16, i64 16, i64 0, i32 0, null, metadata !17, i32 0, null} ; [ DW_TAG_structure_type ]
!16 = metadata !{i32 458769, i32 0, i32 4, metadata !"ap_int.h", metadata !"/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!17 = metadata !{metadata !18, metadata !245, metadata !249, metadata !252, metadata !255, metadata !258, metadata !261, metadata !264, metadata !267, metadata !270, metadata !273, metadata !276, metadata !279, metadata !282, metadata !285, metadata !288, metadata !291, metadata !294, metadata !301, metadata !306, metadata !310}
!18 = metadata !{i32 458780, metadata !2, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_inheritance ]
!19 = metadata !{i32 458771, metadata !2, metadata !"ap_int_base<12,false,true>", metadata !20, i32 599, i64 16, i64 16, i64 0, i32 0, null, metadata !21, i32 0, null} ; [ DW_TAG_structure_type ]
!20 = metadata !{i32 458769, i32 0, i32 4, metadata !"ap_int_syn.h", metadata !"/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!21 = metadata !{metadata !22, metadata !32, metadata !36, metadata !40, metadata !44, metadata !48, metadata !52, metadata !56, metadata !60, metadata !64, metadata !68, metadata !72, metadata !76, metadata !80, metadata !84, metadata !88, metadata !94, metadata !97, metadata !102, metadata !107, metadata !112, metadata !113, metadata !117, metadata !120, metadata !123, metadata !126, metadata !129, metadata !132, metadata !138, metadata !141, metadata !144, metadata !147, metadata !150, metadata !153, metadata !157, metadata !158, metadata !161, metadata !162, metadata !166, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !177, metadata !178, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !189, metadata !190, metadata !191, metadata !194, metadata !195, metadata !198, metadata !199, metadata !203, metadata !204, metadata !207, metadata !208, metadata !212, metadata !213, metadata !214, metadata !215, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !239, metadata !242}
!22 = metadata !{i32 458780, metadata !2, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_inheritance ]
!23 = metadata !{i32 458771, metadata !2, metadata !"ssdm_int<12,false>", metadata !24, i32 14, i64 16, i64 16, i64 0, i32 0, null, metadata !25, i32 0, null} ; [ DW_TAG_structure_type ]
!24 = metadata !{i32 458769, i32 0, i32 4, metadata !"autopilot_dt.def", metadata !"/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/etc", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!25 = metadata !{metadata !26, metadata !28}
!26 = metadata !{i32 458765, metadata !23, metadata !"V", metadata !24, i32 14, i64 16, i64 16, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ]
!27 = metadata !{i32 458788, metadata !2, metadata !"", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 458798, i32 0, metadata !23, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !24, i32 14, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, null} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !31}
!31 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !23} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1331, metadata !33, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !35}
!35 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !19} ; [ DW_TAG_pointer_type ]
!36 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1353, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, null} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !35, metadata !39}
!39 = metadata !{i32 458788, metadata !2, metadata !"bool", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1354, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !35, metadata !43}
!43 = metadata !{i32 458788, metadata !2, metadata !"signed char", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!44 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1355, metadata !45, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, null} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{null, metadata !35, metadata !47}
!47 = metadata !{i32 458788, metadata !2, metadata !"unsigned char", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1356, metadata !49, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, null} ; [ DW_TAG_subroutine_type ]
!50 = metadata !{null, metadata !35, metadata !51}
!51 = metadata !{i32 458788, metadata !2, metadata !"short int", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1357, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, null} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !35, metadata !55}
!55 = metadata !{i32 458788, metadata !2, metadata !"short unsigned int", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1358, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, null} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{null, metadata !35, metadata !59}
!59 = metadata !{i32 458788, metadata !2, metadata !"int", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!60 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1359, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, null} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !35, metadata !63}
!63 = metadata !{i32 458788, metadata !2, metadata !"unsigned int", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1360, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, null} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !35, metadata !67}
!67 = metadata !{i32 458788, metadata !2, metadata !"long int", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1361, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, null} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !35, metadata !71}
!71 = metadata !{i32 458788, metadata !2, metadata !"long unsigned int", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!72 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1362, metadata !73, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, null} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !35, metadata !75}
!75 = metadata !{i32 458788, metadata !2, metadata !"long long int", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!76 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1363, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, null} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{null, metadata !35, metadata !79}
!79 = metadata !{i32 458788, metadata !2, metadata !"long long unsigned int", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!80 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1364, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, null} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{null, metadata !35, metadata !83}
!83 = metadata !{i32 458788, metadata !2, metadata !"float", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!84 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1365, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, null} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !35, metadata !87}
!87 = metadata !{i32 458788, metadata !2, metadata !"double", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!88 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1392, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{null, metadata !35, metadata !91}
!91 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ]
!92 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !93} ; [ DW_TAG_const_type ]
!93 = metadata !{i32 458788, metadata !2, metadata !"char", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 458798, i32 0, metadata !19, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !20, i32 1398, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, null} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{null, metadata !35, metadata !91, metadata !43}
!97 = metadata !{i32 458798, i32 0, metadata !19, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EE4readEv", metadata !20, i32 1418, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, null} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !19, metadata !100}
!100 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !101} ; [ DW_TAG_pointer_type ]
!101 = metadata !{i32 458805, metadata !2, metadata !"", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !19} ; [ DW_TAG_volatile_type ]
!102 = metadata !{i32 458798, i32 0, metadata !19, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EE5writeERKS0_", metadata !20, i32 1424, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, null} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{null, metadata !100, metadata !105}
!105 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_reference_type ]
!106 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ]
!107 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EEaSERVKS0_", metadata !20, i32 1436, metadata !108, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{null, metadata !100, metadata !110}
!110 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_reference_type ]
!111 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !101} ; [ DW_TAG_const_type ]
!112 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EEaSERKS0_", metadata !20, i32 1445, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!113 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSERVKS0_", metadata !20, i32 1468, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, null} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{metadata !116, metadata !35, metadata !110}
!116 = metadata !{i32 458768, metadata !2, metadata !"ap_int_base<12,false,true>", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_reference_type ]
!117 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSERKS0_", metadata !20, i32 1473, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, null} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{metadata !116, metadata !35, metadata !105}
!120 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEPKc", metadata !20, i32 1477, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, null} ; [ DW_TAG_subroutine_type ]
!122 = metadata !{metadata !116, metadata !35, metadata !91}
!123 = metadata !{i32 458798, i32 0, metadata !19, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3setEPKca", metadata !20, i32 1484, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, null} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{metadata !116, metadata !35, metadata !91, metadata !43}
!126 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEy", metadata !20, i32 1492, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, null} ; [ DW_TAG_subroutine_type ]
!128 = metadata !{metadata !116, metadata !35, metadata !79}
!129 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEx", metadata !20, i32 1497, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, null} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{metadata !116, metadata !35, metadata !75}
!132 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator ap_ulong", metadata !"operator ap_ulong", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEcvyEv", metadata !20, i32 1538, metadata !133, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, null} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{metadata !135, metadata !137}
!135 = metadata !{i32 458774, metadata !2, metadata !"ap_ulong", metadata !136, i32 332, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ]
!136 = metadata !{i32 458769, i32 0, i32 4, metadata !"math.h", metadata !"/usr/include", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!137 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !106} ; [ DW_TAG_pointer_type ]
!138 = metadata !{i32 458798, i32 0, metadata !19, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7to_boolEv", metadata !20, i32 1544, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, null} ; [ DW_TAG_subroutine_type ]
!140 = metadata !{metadata !39, metadata !137}
!141 = metadata !{i32 458798, i32 0, metadata !19, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE6to_intEv", metadata !20, i32 1545, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!142 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, null} ; [ DW_TAG_subroutine_type ]
!143 = metadata !{metadata !59, metadata !137}
!144 = metadata !{i32 458798, i32 0, metadata !19, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7to_uintEv", metadata !20, i32 1546, metadata !145, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!145 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, null} ; [ DW_TAG_subroutine_type ]
!146 = metadata !{metadata !63, metadata !137}
!147 = metadata !{i32 458798, i32 0, metadata !19, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7to_longEv", metadata !20, i32 1547, metadata !148, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!148 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, null} ; [ DW_TAG_subroutine_type ]
!149 = metadata !{metadata !67, metadata !137}
!150 = metadata !{i32 458798, i32 0, metadata !19, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE8to_ulongEv", metadata !20, i32 1548, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, null} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{metadata !71, metadata !137}
!153 = metadata !{i32 458798, i32 0, metadata !19, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE8to_int64Ev", metadata !20, i32 1549, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, null} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{metadata !156, metadata !137}
!156 = metadata !{i32 458774, metadata !2, metadata !"ap_slong", metadata !20, i32 65, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ]
!157 = metadata !{i32 458798, i32 0, metadata !19, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_uint64Ev", metadata !20, i32 1550, metadata !133, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 458798, i32 0, metadata !19, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_doubleEv", metadata !20, i32 1551, metadata !159, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, null} ; [ DW_TAG_subroutine_type ]
!160 = metadata !{metadata !87, metadata !137}
!161 = metadata !{i32 458798, i32 0, metadata !19, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE6lengthEv", metadata !20, i32 1564, metadata !142, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!162 = metadata !{i32 458798, i32 0, metadata !19, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi12ELb0ELb1EE6lengthEv", metadata !20, i32 1565, metadata !163, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, null} ; [ DW_TAG_subroutine_type ]
!164 = metadata !{metadata !59, metadata !165}
!165 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !111} ; [ DW_TAG_pointer_type ]
!166 = metadata !{i32 458798, i32 0, metadata !19, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7reverseEv", metadata !20, i32 1570, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, null} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{metadata !116, metadata !35}
!169 = metadata !{i32 458798, i32 0, metadata !19, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE6iszeroEv", metadata !20, i32 1576, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 458798, i32 0, metadata !19, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7is_zeroEv", metadata !20, i32 1581, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 458798, i32 0, metadata !19, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE4signEv", metadata !20, i32 1586, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 458798, i32 0, metadata !19, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE5clearEi", metadata !20, i32 1594, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 458798, i32 0, metadata !19, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE6invertEi", metadata !20, i32 1600, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 458798, i32 0, metadata !19, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE4testEi", metadata !20, i32 1608, metadata !175, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, null} ; [ DW_TAG_subroutine_type ]
!176 = metadata !{metadata !39, metadata !137, metadata !59}
!177 = metadata !{i32 458798, i32 0, metadata !19, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3setEi", metadata !20, i32 1614, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 458798, i32 0, metadata !19, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3setEib", metadata !20, i32 1620, metadata !179, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, null} ; [ DW_TAG_subroutine_type ]
!180 = metadata !{null, metadata !35, metadata !59, metadata !39}
!181 = metadata !{i32 458798, i32 0, metadata !19, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7lrotateEi", metadata !20, i32 1627, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 458798, i32 0, metadata !19, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7rrotateEi", metadata !20, i32 1636, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 458798, i32 0, metadata !19, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7set_bitEib", metadata !20, i32 1644, metadata !179, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 458798, i32 0, metadata !19, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7get_bitEi", metadata !20, i32 1649, metadata !175, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 458798, i32 0, metadata !19, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE5b_notEv", metadata !20, i32 1654, metadata !33, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 458798, i32 0, metadata !19, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE17countLeadingZerosEv", metadata !20, i32 1661, metadata !187, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!187 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, null} ; [ DW_TAG_subroutine_type ]
!188 = metadata !{metadata !59, metadata !35}
!189 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEppEv", metadata !20, i32 1718, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEmmEv", metadata !20, i32 1722, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEppEi", metadata !20, i32 1730, metadata !192, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, null} ; [ DW_TAG_subroutine_type ]
!193 = metadata !{metadata !106, metadata !35, metadata !59}
!194 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEmmEi", metadata !20, i32 1735, metadata !192, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEpsEv", metadata !20, i32 1744, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, null} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !19, metadata !137}
!198 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEntEv", metadata !20, i32 1750, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 458798, i32 0, metadata !19, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE5rangeEii", metadata !20, i32 1877, metadata !200, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, null} ; [ DW_TAG_subroutine_type ]
!201 = metadata !{metadata !202, metadata !35, metadata !59, metadata !59}
!202 = metadata !{i32 458771, metadata !2, metadata !"ap_range_ref<12,false>", metadata !20, i32 872, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!203 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEclEii", metadata !20, i32 1883, metadata !200, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!204 = metadata !{i32 458798, i32 0, metadata !19, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE5rangeEii", metadata !20, i32 1889, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, null} ; [ DW_TAG_subroutine_type ]
!206 = metadata !{metadata !202, metadata !137, metadata !59, metadata !59}
!207 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEclEii", metadata !20, i32 1895, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEixEi", metadata !20, i32 1914, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !210, i32 0, null} ; [ DW_TAG_subroutine_type ]
!210 = metadata !{metadata !211, metadata !35, metadata !59}
!211 = metadata !{i32 458771, metadata !2, metadata !"ap_bit_ref<12,false>", metadata !20, i32 1116, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!212 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEixEi", metadata !20, i32 1928, metadata !175, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 458798, i32 0, metadata !19, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3bitEi", metadata !20, i32 1942, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 458798, i32 0, metadata !19, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE3bitEi", metadata !20, i32 1956, metadata !175, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!215 = metadata !{i32 458798, i32 0, metadata !19, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE10and_reduceEv", metadata !20, i32 2136, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, null} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !39, metadata !35}
!218 = metadata !{i32 458798, i32 0, metadata !19, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE11nand_reduceEv", metadata !20, i32 2139, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 458798, i32 0, metadata !19, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE9or_reduceEv", metadata !20, i32 2142, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 458798, i32 0, metadata !19, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE10nor_reduceEv", metadata !20, i32 2145, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 458798, i32 0, metadata !19, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE10xor_reduceEv", metadata !20, i32 2148, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 458798, i32 0, metadata !19, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE11xnor_reduceEv", metadata !20, i32 2151, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!223 = metadata !{i32 458798, i32 0, metadata !19, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE10and_reduceEv", metadata !20, i32 2155, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 458798, i32 0, metadata !19, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE11nand_reduceEv", metadata !20, i32 2158, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 458798, i32 0, metadata !19, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9or_reduceEv", metadata !20, i32 2161, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 458798, i32 0, metadata !19, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE10nor_reduceEv", metadata !20, i32 2164, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!227 = metadata !{i32 458798, i32 0, metadata !19, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE10xor_reduceEv", metadata !20, i32 2167, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 458798, i32 0, metadata !19, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE11xnor_reduceEv", metadata !20, i32 2170, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 458798, i32 0, metadata !19, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !20, i32 2177, metadata !230, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, null} ; [ DW_TAG_subroutine_type ]
!231 = metadata !{null, metadata !137, metadata !232, metadata !59, metadata !233, metadata !39}
!232 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ]
!233 = metadata !{i32 458756, metadata !2, metadata !"BaseMode", metadata !20, i32 551, i64 32, i64 32, i64 0, i32 0, null, metadata !234, i32 0, null} ; [ DW_TAG_enumeration_type ]
!234 = metadata !{metadata !235, metadata !236, metadata !237, metadata !238}
!235 = metadata !{i32 458792, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!236 = metadata !{i32 458792, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!237 = metadata !{i32 458792, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!238 = metadata !{i32 458792, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!239 = metadata !{i32 458798, i32 0, metadata !19, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_stringE8BaseModeb", metadata !20, i32 2204, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, null} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{metadata !232, metadata !137, metadata !233, metadata !39}
!242 = metadata !{i32 458798, i32 0, metadata !19, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_stringEab", metadata !20, i32 2208, metadata !243, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, null} ; [ DW_TAG_subroutine_type ]
!244 = metadata !{metadata !232, metadata !137, metadata !43, metadata !39}
!245 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 137, metadata !246, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !247, i32 0, null} ; [ DW_TAG_subroutine_type ]
!247 = metadata !{null, metadata !248}
!248 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !15} ; [ DW_TAG_pointer_type ]
!249 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 199, metadata !250, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !251, i32 0, null} ; [ DW_TAG_subroutine_type ]
!251 = metadata !{null, metadata !248, metadata !39}
!252 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 200, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !254, i32 0, null} ; [ DW_TAG_subroutine_type ]
!254 = metadata !{null, metadata !248, metadata !43}
!255 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 201, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!256 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !257, i32 0, null} ; [ DW_TAG_subroutine_type ]
!257 = metadata !{null, metadata !248, metadata !47}
!258 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 202, metadata !259, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!259 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, null} ; [ DW_TAG_subroutine_type ]
!260 = metadata !{null, metadata !248, metadata !51}
!261 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 203, metadata !262, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!262 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, null} ; [ DW_TAG_subroutine_type ]
!263 = metadata !{null, metadata !248, metadata !55}
!264 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 204, metadata !265, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!265 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, null} ; [ DW_TAG_subroutine_type ]
!266 = metadata !{null, metadata !248, metadata !59}
!267 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 205, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, null} ; [ DW_TAG_subroutine_type ]
!269 = metadata !{null, metadata !248, metadata !63}
!270 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 206, metadata !271, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, null} ; [ DW_TAG_subroutine_type ]
!272 = metadata !{null, metadata !248, metadata !67}
!273 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 207, metadata !274, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !275, i32 0, null} ; [ DW_TAG_subroutine_type ]
!275 = metadata !{null, metadata !248, metadata !71}
!276 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 208, metadata !277, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!277 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, null} ; [ DW_TAG_subroutine_type ]
!278 = metadata !{null, metadata !248, metadata !79}
!279 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 209, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, null} ; [ DW_TAG_subroutine_type ]
!281 = metadata !{null, metadata !248, metadata !75}
!282 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 210, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, null} ; [ DW_TAG_subroutine_type ]
!284 = metadata !{null, metadata !248, metadata !83}
!285 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 211, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, null} ; [ DW_TAG_subroutine_type ]
!287 = metadata !{null, metadata !248, metadata !87}
!288 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 213, metadata !289, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!289 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, null} ; [ DW_TAG_subroutine_type ]
!290 = metadata !{null, metadata !248, metadata !91}
!291 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !16, i32 214, metadata !292, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !293, i32 0, null} ; [ DW_TAG_subroutine_type ]
!293 = metadata !{null, metadata !248, metadata !91, metadata !43}
!294 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi12EEaSERKS0_", metadata !16, i32 217, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, null} ; [ DW_TAG_subroutine_type ]
!296 = metadata !{null, metadata !297, metadata !299}
!297 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !298} ; [ DW_TAG_pointer_type ]
!298 = metadata !{i32 458805, metadata !2, metadata !"", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !15} ; [ DW_TAG_volatile_type ]
!299 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !300} ; [ DW_TAG_reference_type ]
!300 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!301 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi12EEaSERVKS0_", metadata !16, i32 221, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!302 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, null} ; [ DW_TAG_subroutine_type ]
!303 = metadata !{null, metadata !297, metadata !304}
!304 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !305} ; [ DW_TAG_reference_type ]
!305 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !298} ; [ DW_TAG_const_type ]
!306 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi12EEaSERVKS0_", metadata !16, i32 225, metadata !307, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!307 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, null} ; [ DW_TAG_subroutine_type ]
!308 = metadata !{metadata !309, metadata !248, metadata !304}
!309 = metadata !{i32 458768, metadata !2, metadata !"ap_uint<12>", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_reference_type ]
!310 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi12EEaSERKS0_", metadata !16, i32 230, metadata !311, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, null} ; [ DW_TAG_subroutine_type ]
!312 = metadata !{metadata !309, metadata !248, metadata !299}
!313 = metadata !{i32 458765, metadata !9, metadata !"cols", metadata !12, i32 465, i64 16, i64 16, i64 16, i32 0, metadata !15} ; [ DW_TAG_member ]
!314 = metadata !{i32 458765, metadata !9, metadata !"data_stream", metadata !12, i32 467, i64 24, i64 8, i64 32, i32 0, metadata !315} ; [ DW_TAG_member ]
!315 = metadata !{i32 458753, metadata !2, metadata !"", metadata !2, i32 0, i64 24, i64 8, i64 0, i32 0, metadata !316, metadata !360, i32 0, null} ; [ DW_TAG_array_type ]
!316 = metadata !{i32 458771, metadata !10, metadata !"stream<unsigned char>", metadata !11, i32 34, i64 8, i64 8, i64 0, i32 0, null, metadata !317, i32 0, null} ; [ DW_TAG_structure_type ]
!317 = metadata !{metadata !318, metadata !319, metadata !323, metadata !326, metadata !331, metadata !335, metadata !339, metadata !344, metadata !348, metadata !349, metadata !350, metadata !353, metadata !356, metadata !357}
!318 = metadata !{i32 458765, metadata !316, metadata !"V", metadata !11, i32 111, i64 8, i64 8, i64 0, i32 1, metadata !47} ; [ DW_TAG_member ]
!319 = metadata !{i32 458798, i32 0, metadata !316, metadata !"stream", metadata !"stream", metadata !"", metadata !11, i32 37, metadata !320, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, null} ; [ DW_TAG_subroutine_type ]
!321 = metadata !{null, metadata !322}
!322 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !316} ; [ DW_TAG_pointer_type ]
!323 = metadata !{i32 458798, i32 0, metadata !316, metadata !"stream", metadata !"stream", metadata !"", metadata !11, i32 40, metadata !324, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!324 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, null} ; [ DW_TAG_subroutine_type ]
!325 = metadata !{null, metadata !322, metadata !91}
!326 = metadata !{i32 458798, i32 0, metadata !316, metadata !"stream", metadata !"stream", metadata !"", metadata !11, i32 45, metadata !327, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!327 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !328, i32 0, null} ; [ DW_TAG_subroutine_type ]
!328 = metadata !{null, metadata !322, metadata !329}
!329 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !330} ; [ DW_TAG_reference_type ]
!330 = metadata !{i32 458790, metadata !10, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !316} ; [ DW_TAG_const_type ]
!331 = metadata !{i32 458798, i32 0, metadata !316, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !11, i32 48, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, null} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{metadata !334, metadata !322, metadata !329}
!334 = metadata !{i32 458768, metadata !2, metadata !"hlsstream<unsigned char>", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !316} ; [ DW_TAG_reference_type ]
!335 = metadata !{i32 458798, i32 0, metadata !316, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !11, i32 55, metadata !336, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!336 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !337, i32 0, null} ; [ DW_TAG_subroutine_type ]
!337 = metadata !{null, metadata !322, metadata !338}
!338 = metadata !{i32 458768, metadata !2, metadata !"unsigned char", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_reference_type ]
!339 = metadata !{i32 458798, i32 0, metadata !316, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !11, i32 59, metadata !340, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!340 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !341, i32 0, null} ; [ DW_TAG_subroutine_type ]
!341 = metadata !{null, metadata !322, metadata !342}
!342 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !343} ; [ DW_TAG_reference_type ]
!343 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ]
!344 = metadata !{i32 458798, i32 0, metadata !316, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !11, i32 66, metadata !345, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!345 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !346, i32 0, null} ; [ DW_TAG_subroutine_type ]
!346 = metadata !{metadata !39, metadata !347}
!347 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !330} ; [ DW_TAG_pointer_type ]
!348 = metadata !{i32 458798, i32 0, metadata !316, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !11, i32 71, metadata !345, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!349 = metadata !{i32 458798, i32 0, metadata !316, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !11, i32 77, metadata !336, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 458798, i32 0, metadata !316, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !11, i32 83, metadata !351, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, null} ; [ DW_TAG_subroutine_type ]
!352 = metadata !{metadata !47, metadata !322}
!353 = metadata !{i32 458798, i32 0, metadata !316, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !11, i32 90, metadata !354, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, null} ; [ DW_TAG_subroutine_type ]
!355 = metadata !{metadata !39, metadata !322, metadata !338}
!356 = metadata !{i32 458798, i32 0, metadata !316, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !11, i32 98, metadata !340, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 458798, i32 0, metadata !316, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !11, i32 104, metadata !358, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!358 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, null} ; [ DW_TAG_subroutine_type ]
!359 = metadata !{metadata !39, metadata !322, metadata !342}
!360 = metadata !{metadata !361}
!361 = metadata !{i32 458785, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!362 = metadata !{i32 458798, i32 0, metadata !9, metadata !"Mat", metadata !"Mat", metadata !"", metadata !12, i32 472, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!363 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, null} ; [ DW_TAG_subroutine_type ]
!364 = metadata !{null, metadata !365}
!365 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !9} ; [ DW_TAG_pointer_type ]
!366 = metadata !{i32 458798, i32 0, metadata !9, metadata !"Mat", metadata !"Mat", metadata !"", metadata !12, i32 477, metadata !367, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!367 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !368, i32 0, null} ; [ DW_TAG_subroutine_type ]
!368 = metadata !{null, metadata !365, metadata !59, metadata !59}
!369 = metadata !{i32 458798, i32 0, metadata !9, metadata !"Mat", metadata !"Mat", metadata !"", metadata !12, i32 482, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!370 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, null} ; [ DW_TAG_subroutine_type ]
!371 = metadata !{null, metadata !365, metadata !372}
!372 = metadata !{i32 458771, metadata !10, metadata !"Size_<int>", metadata !12, i32 113, i64 64, i64 32, i64 0, i32 0, null, metadata !373, i32 0, null} ; [ DW_TAG_structure_type ]
!373 = metadata !{metadata !374, metadata !375, metadata !376, metadata !380, metadata !383, metadata !388, metadata !410, metadata !413}
!374 = metadata !{i32 458765, metadata !372, metadata !"width", metadata !12, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ]
!375 = metadata !{i32 458765, metadata !372, metadata !"height", metadata !12, i32 122, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ]
!376 = metadata !{i32 458798, i32 0, metadata !372, metadata !"Size_", metadata !"Size_", metadata !"", metadata !12, i32 126, metadata !377, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!377 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !378, i32 0, null} ; [ DW_TAG_subroutine_type ]
!378 = metadata !{null, metadata !379}
!379 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !372} ; [ DW_TAG_pointer_type ]
!380 = metadata !{i32 458798, i32 0, metadata !372, metadata !"Size_", metadata !"Size_", metadata !"", metadata !12, i32 127, metadata !381, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!381 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !382, i32 0, null} ; [ DW_TAG_subroutine_type ]
!382 = metadata !{null, metadata !379, metadata !59, metadata !59}
!383 = metadata !{i32 458798, i32 0, metadata !372, metadata !"Size_", metadata !"Size_", metadata !"", metadata !12, i32 128, metadata !384, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!384 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !385, i32 0, null} ; [ DW_TAG_subroutine_type ]
!385 = metadata !{null, metadata !379, metadata !386}
!386 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !387} ; [ DW_TAG_reference_type ]
!387 = metadata !{i32 458790, metadata !10, metadata !"", metadata !2, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !372} ; [ DW_TAG_const_type ]
!388 = metadata !{i32 458798, i32 0, metadata !372, metadata !"Size_", metadata !"Size_", metadata !"", metadata !12, i32 129, metadata !389, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !390, i32 0, null} ; [ DW_TAG_subroutine_type ]
!390 = metadata !{null, metadata !379, metadata !391}
!391 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !392} ; [ DW_TAG_reference_type ]
!392 = metadata !{i32 458790, metadata !10, metadata !"", metadata !2, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !393} ; [ DW_TAG_const_type ]
!393 = metadata !{i32 458771, metadata !10, metadata !"Point_<int>", metadata !12, i32 92, i64 64, i64 32, i64 0, i32 0, null, metadata !394, i32 0, null} ; [ DW_TAG_structure_type ]
!394 = metadata !{metadata !395, metadata !396, metadata !397, metadata !401, metadata !404, metadata !407}
!395 = metadata !{i32 458765, metadata !393, metadata !"x", metadata !12, i32 99, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ]
!396 = metadata !{i32 458765, metadata !393, metadata !"y", metadata !12, i32 99, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ]
!397 = metadata !{i32 458798, i32 0, metadata !393, metadata !"Point_", metadata !"Point_", metadata !"", metadata !12, i32 103, metadata !398, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!398 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, null} ; [ DW_TAG_subroutine_type ]
!399 = metadata !{null, metadata !400}
!400 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !393} ; [ DW_TAG_pointer_type ]
!401 = metadata !{i32 458798, i32 0, metadata !393, metadata !"Point_", metadata !"Point_", metadata !"", metadata !12, i32 104, metadata !402, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!402 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !403, i32 0, null} ; [ DW_TAG_subroutine_type ]
!403 = metadata !{null, metadata !400, metadata !59, metadata !59}
!404 = metadata !{i32 458798, i32 0, metadata !393, metadata !"Point_", metadata !"Point_", metadata !"", metadata !12, i32 105, metadata !405, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!405 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !406, i32 0, null} ; [ DW_TAG_subroutine_type ]
!406 = metadata !{null, metadata !400, metadata !391}
!407 = metadata !{i32 458798, i32 0, metadata !393, metadata !"~Point_", metadata !"~Point_", metadata !"", metadata !12, i32 106, metadata !408, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!408 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !409, i32 0, null} ; [ DW_TAG_subroutine_type ]
!409 = metadata !{null, metadata !400, metadata !59}
!410 = metadata !{i32 458798, i32 0, metadata !372, metadata !"area", metadata !"area", metadata !"_ZN3hls5Size_IiE4areaEv", metadata !12, i32 130, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!411 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, null} ; [ DW_TAG_subroutine_type ]
!412 = metadata !{metadata !59, metadata !379}
!413 = metadata !{i32 458798, i32 0, metadata !372, metadata !"~Size_", metadata !"~Size_", metadata !"", metadata !12, i32 131, metadata !414, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!414 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, null} ; [ DW_TAG_subroutine_type ]
!415 = metadata !{null, metadata !379, metadata !59}
!416 = metadata !{i32 458798, i32 0, metadata !9, metadata !"init", metadata !"init", metadata !"_ZN3hls3MatILi1080ELi1920ELi16EE4initEii", metadata !12, i32 487, metadata !367, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!417 = metadata !{i32 458798, i32 0, metadata !9, metadata !"assignto", metadata !"assignto", metadata !"_ZN3hls3MatILi1080ELi1920ELi16EE8assigntoERS1_", metadata !12, i32 494, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, null} ; [ DW_TAG_subroutine_type ]
!419 = metadata !{null, metadata !365, metadata !420}
!420 = metadata !{i32 458768, metadata !2, metadata !"hlsMat<1080,1920,16>", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_reference_type ]
!421 = metadata !{i32 458798, i32 0, metadata !9, metadata !"read", metadata !"read", metadata !"_ZN3hls3MatILi1080ELi1920ELi16EE4readEv", metadata !12, i32 501, metadata !422, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!422 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, null} ; [ DW_TAG_subroutine_type ]
!423 = metadata !{metadata !424, metadata !365}
!424 = metadata !{i32 458771, metadata !10, metadata !"Scalar<3,unsigned char>", metadata !12, i32 175, i64 24, i64 8, i64 0, i32 0, null, metadata !425, i32 0, null} ; [ DW_TAG_structure_type ]
!425 = metadata !{metadata !426, metadata !428, metadata !432, metadata !435, metadata !438, metadata !441}
!426 = metadata !{i32 458765, metadata !424, metadata !"val", metadata !12, i32 201, i64 24, i64 8, i64 0, i32 0, metadata !427} ; [ DW_TAG_member ]
!427 = metadata !{i32 458753, metadata !2, metadata !"", metadata !2, i32 0, i64 24, i64 8, i64 0, i32 0, metadata !47, metadata !360, i32 0, null} ; [ DW_TAG_array_type ]
!428 = metadata !{i32 458798, i32 0, metadata !424, metadata !"Scalar", metadata !"Scalar", metadata !"", metadata !12, i32 177, metadata !429, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!429 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, null} ; [ DW_TAG_subroutine_type ]
!430 = metadata !{null, metadata !431}
!431 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !424} ; [ DW_TAG_pointer_type ]
!432 = metadata !{i32 458798, i32 0, metadata !424, metadata !"Scalar", metadata !"Scalar", metadata !"", metadata !12, i32 181, metadata !433, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!433 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !434, i32 0, null} ; [ DW_TAG_subroutine_type ]
!434 = metadata !{null, metadata !431, metadata !47}
!435 = metadata !{i32 458798, i32 0, metadata !424, metadata !"Scalar", metadata !"Scalar", metadata !"", metadata !12, i32 186, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!436 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !437, i32 0, null} ; [ DW_TAG_subroutine_type ]
!437 = metadata !{null, metadata !431, metadata !47, metadata !47}
!438 = metadata !{i32 458798, i32 0, metadata !424, metadata !"Scalar", metadata !"Scalar", metadata !"", metadata !12, i32 191, metadata !439, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!439 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !440, i32 0, null} ; [ DW_TAG_subroutine_type ]
!440 = metadata !{null, metadata !431, metadata !47, metadata !47, metadata !47}
!441 = metadata !{i32 458798, i32 0, metadata !424, metadata !"Scalar", metadata !"Scalar", metadata !"", metadata !12, i32 196, metadata !442, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!442 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !443, i32 0, null} ; [ DW_TAG_subroutine_type ]
!443 = metadata !{null, metadata !431, metadata !47, metadata !47, metadata !47, metadata !47}
!444 = metadata !{i32 458798, i32 0, metadata !9, metadata !"read", metadata !"read", metadata !"_ZN3hls3MatILi1080ELi1920ELi16EE4readERNS_6ScalarILi3EhEE", metadata !12, i32 513, metadata !445, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!445 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !446, i32 0, null} ; [ DW_TAG_subroutine_type ]
!446 = metadata !{null, metadata !365, metadata !447}
!447 = metadata !{i32 458768, metadata !2, metadata !"Scalar<3,unsigned char>", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !424} ; [ DW_TAG_reference_type ]
!448 = metadata !{i32 458798, i32 0, metadata !9, metadata !"write", metadata !"write", metadata !"_ZN3hls3MatILi1080ELi1920ELi16EE5writeENS_6ScalarILi3EhEE", metadata !12, i32 519, metadata !449, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, null} ; [ DW_TAG_subroutine_type ]
!450 = metadata !{null, metadata !365, metadata !424}
!451 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls3MatILi1080ELi1920ELi16EErsERNS_6ScalarILi3EhEE", metadata !12, i32 529, metadata !445, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!452 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls3MatILi1080ELi1920ELi16EElsENS_6ScalarILi3EhEE", metadata !12, i32 535, metadata !449, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 458798, i32 0, metadata !9, metadata !"empty", metadata !"empty", metadata !"_ZN3hls3MatILi1080ELi1920ELi16EE5emptyEv", metadata !12, i32 541, metadata !454, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!454 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !455, i32 0, null} ; [ DW_TAG_subroutine_type ]
!455 = metadata !{metadata !39, metadata !365}
!456 = metadata !{i32 458798, i32 0, metadata !9, metadata !"type", metadata !"type", metadata !"_ZNK3hls3MatILi1080ELi1920ELi16EE4typeEv", metadata !12, i32 553, metadata !457, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!457 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, null} ; [ DW_TAG_subroutine_type ]
!458 = metadata !{metadata !459, metadata !460}
!459 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_const_type ]
!460 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !461} ; [ DW_TAG_pointer_type ]
!461 = metadata !{i32 458790, metadata !10, metadata !"", metadata !2, i32 0, i64 64, i64 16, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!462 = metadata !{i32 458798, i32 0, metadata !9, metadata !"depth", metadata !"depth", metadata !"_ZNK3hls3MatILi1080ELi1920ELi16EE5depthEv", metadata !12, i32 559, metadata !457, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!463 = metadata !{i32 458798, i32 0, metadata !9, metadata !"channels", metadata !"channels", metadata !"_ZNK3hls3MatILi1080ELi1920ELi16EE8channelsEv", metadata !12, i32 564, metadata !457, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!464 = metadata !{i32 458753, metadata !2, metadata !"", metadata !2, i32 0, i64 288, i64 32, i64 0, i32 0, metadata !59, metadata !465, i32 0, null} ; [ DW_TAG_array_type ]
!465 = metadata !{metadata !361, metadata !361}
!466 = metadata !{i32 245, i32 0, metadata !467, null}
!467 = metadata !{i32 458763, metadata !468, i32 239, i32 0} ; [ DW_TAG_lexical_block ]
!468 = metadata !{i32 458763, metadata !469, i32 239, i32 0} ; [ DW_TAG_lexical_block ]
!469 = metadata !{i32 458798, i32 0, metadata !10, metadata !"getStructuringElement<unsigned char, int, int, 3, 3>", metadata !"getStructuringElement<unsigned char, int, int, 3, 3>", metadata !"_ZN3hls21getStructuringElementIhiiLi3ELi3EEEviNS_5Size_IT0_EENS_6Point_IT1_EERNS_6WindowIXT2_EXT3_ET_EE", metadata !470, i32 239, metadata !471, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!470 = metadata !{i32 458769, i32 0, i32 4, metadata !"hls_video_imgproc.h", metadata !"/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!471 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !472, i32 0, null} ; [ DW_TAG_subroutine_type ]
!472 = metadata !{null, metadata !59, metadata !372, metadata !393, metadata !473}
!473 = metadata !{i32 458768, metadata !2, metadata !"Window<3,3,unsigned char>", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !474} ; [ DW_TAG_reference_type ]
!474 = metadata !{i32 458771, metadata !10, metadata !"Window<3,3,unsigned char>", metadata !475, i32 45, i64 72, i64 8, i64 0, i32 0, null, metadata !476, i32 0, null} ; [ DW_TAG_structure_type ]
!475 = metadata !{i32 458769, i32 0, i32 4, metadata !"hls_video_mem.h", metadata !"/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!476 = metadata !{metadata !477, metadata !479, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !490, metadata !494, metadata !495, metadata !496, metadata !497}
!477 = metadata !{i32 458765, metadata !474, metadata !"val", metadata !475, i32 61, i64 72, i64 8, i64 0, i32 0, metadata !478} ; [ DW_TAG_member ]
!478 = metadata !{i32 458753, metadata !2, metadata !"", metadata !2, i32 0, i64 72, i64 8, i64 0, i32 0, metadata !47, metadata !465, i32 0, null} ; [ DW_TAG_array_type ]
!479 = metadata !{i32 458798, i32 0, metadata !474, metadata !"Window", metadata !"Window", metadata !"", metadata !475, i32 47, metadata !480, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!480 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !481, i32 0, null} ; [ DW_TAG_subroutine_type ]
!481 = metadata !{null, metadata !482}
!482 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !474} ; [ DW_TAG_pointer_type ]
!483 = metadata !{i32 458798, i32 0, metadata !474, metadata !"shift_right", metadata !"shift_right", metadata !"_ZN3hls6WindowILi3ELi3EhE11shift_rightEv", metadata !475, i32 101, metadata !480, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!484 = metadata !{i32 458798, i32 0, metadata !474, metadata !"shift_left", metadata !"shift_left", metadata !"_ZN3hls6WindowILi3ELi3EhE10shift_leftEv", metadata !475, i32 85, metadata !480, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 458798, i32 0, metadata !474, metadata !"shift_up", metadata !"shift_up", metadata !"_ZN3hls6WindowILi3ELi3EhE8shift_upEv", metadata !475, i32 117, metadata !480, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!486 = metadata !{i32 458798, i32 0, metadata !474, metadata !"shift_down", metadata !"shift_down", metadata !"_ZN3hls6WindowILi3ELi3EhE10shift_downEv", metadata !475, i32 133, metadata !480, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!487 = metadata !{i32 458798, i32 0, metadata !474, metadata !"insert", metadata !"insert", metadata !"_ZN3hls6WindowILi3ELi3EhE6insertEhii", metadata !475, i32 148, metadata !488, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!488 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !489, i32 0, null} ; [ DW_TAG_subroutine_type ]
!489 = metadata !{null, metadata !482, metadata !47, metadata !59, metadata !59}
!490 = metadata !{i32 458798, i32 0, metadata !474, metadata !"insert_bottom", metadata !"insert_bottom", metadata !"_ZN3hls6WindowILi3ELi3EhE13insert_bottomEPh", metadata !475, i32 169, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!491 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, null} ; [ DW_TAG_subroutine_type ]
!492 = metadata !{null, metadata !482, metadata !493}
!493 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ]
!494 = metadata !{i32 458798, i32 0, metadata !474, metadata !"insert_top", metadata !"insert_top", metadata !"_ZN3hls6WindowILi3ELi3EhE10insert_topEPh", metadata !475, i32 157, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!495 = metadata !{i32 458798, i32 0, metadata !474, metadata !"insert_left", metadata !"insert_left", metadata !"_ZN3hls6WindowILi3ELi3EhE11insert_leftEPh", metadata !475, i32 181, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!496 = metadata !{i32 458798, i32 0, metadata !474, metadata !"insert_right", metadata !"insert_right", metadata !"_ZN3hls6WindowILi3ELi3EhE12insert_rightEPh", metadata !475, i32 193, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!497 = metadata !{i32 458798, i32 0, metadata !474, metadata !"getval", metadata !"getval", metadata !"_ZN3hls6WindowILi3ELi3EhE6getvalEii", metadata !475, i32 205, metadata !498, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!498 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !499, i32 0, null} ; [ DW_TAG_subroutine_type ]
!499 = metadata !{metadata !47, metadata !482, metadata !59, metadata !59}
!500 = metadata !{i32 459008, metadata !467, metadata !"j", metadata !470, i32 241, metadata !59} ; [ DW_TAG_auto_variable ]
!501 = metadata !{i32 277, i32 0, metadata !502, null}
!502 = metadata !{i32 458763, metadata !467, i32 259, i32 0} ; [ DW_TAG_lexical_block ]
!503 = metadata !{i32 279, i32 0, metadata !502, null}
!504 = metadata !{i32 281, i32 0, metadata !502, null}
!505 = metadata !{i32 459008, metadata !467, metadata !"i", metadata !470, i32 241, metadata !59} ; [ DW_TAG_auto_variable ]
!506 = metadata !{i32 259, i32 0, metadata !467, null}
