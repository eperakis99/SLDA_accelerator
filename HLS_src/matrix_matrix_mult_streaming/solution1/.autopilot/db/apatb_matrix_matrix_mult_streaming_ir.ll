; ModuleID = '/home/manolis/HLS_code/matrix_matrix_mult_streaming/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_int = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i128 }
%"class.hls::stream" = type { %"struct.hls::axis" }
%"struct.hls::axis" = type { %struct.ap_int, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint.2, %struct.ap_uint.5, %struct.ap_uint.8, %struct.ap_uint.11 }
%struct.ap_uint = type { %struct.ap_int_base.0 }
%struct.ap_int_base.0 = type { %struct.ssdm_int.1 }
%struct.ssdm_int.1 = type { i16 }
%struct.ap_uint.2 = type { %struct.ap_int_base.3 }
%struct.ap_int_base.3 = type { %struct.ssdm_int.4 }
%struct.ssdm_int.4 = type { i2 }
%struct.ap_uint.5 = type { %struct.ap_int_base.6 }
%struct.ap_int_base.6 = type { %struct.ssdm_int.7 }
%struct.ssdm_int.7 = type { i1 }
%struct.ap_uint.8 = type { %struct.ap_int_base.9 }
%struct.ap_int_base.9 = type { %struct.ssdm_int.10 }
%struct.ssdm_int.10 = type { i5 }
%struct.ap_uint.11 = type { %struct.ap_int_base.12 }
%struct.ap_int_base.12 = type { %struct.ssdm_int.13 }
%struct.ssdm_int.13 = type { i6 }

; Function Attrs: noinline
define void @apatb_matrix_matrix_mult_streaming_ir([32 x %struct.ap_int]* %A, [10 x %struct.ap_int]* %B, %"class.hls::stream"* %feature_vector, %struct.ap_int* %scores) local_unnamed_addr #0 {
entry:
  %malloccall_0 = call i8* @malloc(i64 512)
  %malloccall_1 = call i8* @malloc(i64 512)
  %malloccall_2 = call i8* @malloc(i64 512)
  %malloccall_3 = call i8* @malloc(i64 512)
  %malloccall_4 = call i8* @malloc(i64 512)
  %malloccall_5 = call i8* @malloc(i64 512)
  %malloccall_6 = call i8* @malloc(i64 512)
  %malloccall_7 = call i8* @malloc(i64 512)
  %malloccall_8 = call i8* @malloc(i64 512)
  %malloccall_9 = call i8* @malloc(i64 512)
  %malloccall_10 = call i8* @malloc(i64 512)
  %malloccall_11 = call i8* @malloc(i64 512)
  %malloccall_12 = call i8* @malloc(i64 512)
  %malloccall_13 = call i8* @malloc(i64 512)
  %malloccall_14 = call i8* @malloc(i64 512)
  %malloccall_15 = call i8* @malloc(i64 512)
  %malloccall_16 = call i8* @malloc(i64 512)
  %malloccall_17 = call i8* @malloc(i64 512)
  %malloccall_18 = call i8* @malloc(i64 512)
  %malloccall_19 = call i8* @malloc(i64 512)
  %malloccall_20 = call i8* @malloc(i64 512)
  %malloccall_21 = call i8* @malloc(i64 512)
  %malloccall_22 = call i8* @malloc(i64 512)
  %malloccall_23 = call i8* @malloc(i64 512)
  %malloccall_24 = call i8* @malloc(i64 512)
  %malloccall_25 = call i8* @malloc(i64 512)
  %malloccall_26 = call i8* @malloc(i64 512)
  %malloccall_27 = call i8* @malloc(i64 512)
  %malloccall_28 = call i8* @malloc(i64 512)
  %malloccall_29 = call i8* @malloc(i64 512)
  %malloccall_30 = call i8* @malloc(i64 512)
  %malloccall_31 = call i8* @malloc(i64 512)
  %A_copy_0 = bitcast i8* %malloccall_0 to [32 x %struct.ap_int]*
  %A_copy_1 = bitcast i8* %malloccall_1 to [32 x %struct.ap_int]*
  %A_copy_2 = bitcast i8* %malloccall_2 to [32 x %struct.ap_int]*
  %A_copy_3 = bitcast i8* %malloccall_3 to [32 x %struct.ap_int]*
  %A_copy_4 = bitcast i8* %malloccall_4 to [32 x %struct.ap_int]*
  %A_copy_5 = bitcast i8* %malloccall_5 to [32 x %struct.ap_int]*
  %A_copy_6 = bitcast i8* %malloccall_6 to [32 x %struct.ap_int]*
  %A_copy_7 = bitcast i8* %malloccall_7 to [32 x %struct.ap_int]*
  %A_copy_8 = bitcast i8* %malloccall_8 to [32 x %struct.ap_int]*
  %A_copy_9 = bitcast i8* %malloccall_9 to [32 x %struct.ap_int]*
  %A_copy_10 = bitcast i8* %malloccall_10 to [32 x %struct.ap_int]*
  %A_copy_11 = bitcast i8* %malloccall_11 to [32 x %struct.ap_int]*
  %A_copy_12 = bitcast i8* %malloccall_12 to [32 x %struct.ap_int]*
  %A_copy_13 = bitcast i8* %malloccall_13 to [32 x %struct.ap_int]*
  %A_copy_14 = bitcast i8* %malloccall_14 to [32 x %struct.ap_int]*
  %A_copy_15 = bitcast i8* %malloccall_15 to [32 x %struct.ap_int]*
  %A_copy_16 = bitcast i8* %malloccall_16 to [32 x %struct.ap_int]*
  %A_copy_17 = bitcast i8* %malloccall_17 to [32 x %struct.ap_int]*
  %A_copy_18 = bitcast i8* %malloccall_18 to [32 x %struct.ap_int]*
  %A_copy_19 = bitcast i8* %malloccall_19 to [32 x %struct.ap_int]*
  %A_copy_20 = bitcast i8* %malloccall_20 to [32 x %struct.ap_int]*
  %A_copy_21 = bitcast i8* %malloccall_21 to [32 x %struct.ap_int]*
  %A_copy_22 = bitcast i8* %malloccall_22 to [32 x %struct.ap_int]*
  %A_copy_23 = bitcast i8* %malloccall_23 to [32 x %struct.ap_int]*
  %A_copy_24 = bitcast i8* %malloccall_24 to [32 x %struct.ap_int]*
  %A_copy_25 = bitcast i8* %malloccall_25 to [32 x %struct.ap_int]*
  %A_copy_26 = bitcast i8* %malloccall_26 to [32 x %struct.ap_int]*
  %A_copy_27 = bitcast i8* %malloccall_27 to [32 x %struct.ap_int]*
  %A_copy_28 = bitcast i8* %malloccall_28 to [32 x %struct.ap_int]*
  %A_copy_29 = bitcast i8* %malloccall_29 to [32 x %struct.ap_int]*
  %A_copy_30 = bitcast i8* %malloccall_30 to [32 x %struct.ap_int]*
  %A_copy_31 = bitcast i8* %malloccall_31 to [32 x %struct.ap_int]*
  %malloccall1_0 = call i8* @malloc(i64 160)
  %malloccall1_1 = call i8* @malloc(i64 160)
  %malloccall1_2 = call i8* @malloc(i64 160)
  %malloccall1_3 = call i8* @malloc(i64 160)
  %malloccall1_4 = call i8* @malloc(i64 160)
  %malloccall1_5 = call i8* @malloc(i64 160)
  %malloccall1_6 = call i8* @malloc(i64 160)
  %malloccall1_7 = call i8* @malloc(i64 160)
  %malloccall1_8 = call i8* @malloc(i64 160)
  %malloccall1_9 = call i8* @malloc(i64 160)
  %malloccall1_10 = call i8* @malloc(i64 160)
  %malloccall1_11 = call i8* @malloc(i64 160)
  %malloccall1_12 = call i8* @malloc(i64 160)
  %malloccall1_13 = call i8* @malloc(i64 160)
  %malloccall1_14 = call i8* @malloc(i64 160)
  %malloccall1_15 = call i8* @malloc(i64 160)
  %malloccall1_16 = call i8* @malloc(i64 160)
  %malloccall1_17 = call i8* @malloc(i64 160)
  %malloccall1_18 = call i8* @malloc(i64 160)
  %malloccall1_19 = call i8* @malloc(i64 160)
  %malloccall1_20 = call i8* @malloc(i64 160)
  %malloccall1_21 = call i8* @malloc(i64 160)
  %malloccall1_22 = call i8* @malloc(i64 160)
  %malloccall1_23 = call i8* @malloc(i64 160)
  %malloccall1_24 = call i8* @malloc(i64 160)
  %malloccall1_25 = call i8* @malloc(i64 160)
  %malloccall1_26 = call i8* @malloc(i64 160)
  %malloccall1_27 = call i8* @malloc(i64 160)
  %malloccall1_28 = call i8* @malloc(i64 160)
  %malloccall1_29 = call i8* @malloc(i64 160)
  %malloccall1_30 = call i8* @malloc(i64 160)
  %malloccall1_31 = call i8* @malloc(i64 160)
  %B_copy_0 = bitcast i8* %malloccall1_0 to [10 x %struct.ap_int]*
  %B_copy_1 = bitcast i8* %malloccall1_1 to [10 x %struct.ap_int]*
  %B_copy_2 = bitcast i8* %malloccall1_2 to [10 x %struct.ap_int]*
  %B_copy_3 = bitcast i8* %malloccall1_3 to [10 x %struct.ap_int]*
  %B_copy_4 = bitcast i8* %malloccall1_4 to [10 x %struct.ap_int]*
  %B_copy_5 = bitcast i8* %malloccall1_5 to [10 x %struct.ap_int]*
  %B_copy_6 = bitcast i8* %malloccall1_6 to [10 x %struct.ap_int]*
  %B_copy_7 = bitcast i8* %malloccall1_7 to [10 x %struct.ap_int]*
  %B_copy_8 = bitcast i8* %malloccall1_8 to [10 x %struct.ap_int]*
  %B_copy_9 = bitcast i8* %malloccall1_9 to [10 x %struct.ap_int]*
  %B_copy_10 = bitcast i8* %malloccall1_10 to [10 x %struct.ap_int]*
  %B_copy_11 = bitcast i8* %malloccall1_11 to [10 x %struct.ap_int]*
  %B_copy_12 = bitcast i8* %malloccall1_12 to [10 x %struct.ap_int]*
  %B_copy_13 = bitcast i8* %malloccall1_13 to [10 x %struct.ap_int]*
  %B_copy_14 = bitcast i8* %malloccall1_14 to [10 x %struct.ap_int]*
  %B_copy_15 = bitcast i8* %malloccall1_15 to [10 x %struct.ap_int]*
  %B_copy_16 = bitcast i8* %malloccall1_16 to [10 x %struct.ap_int]*
  %B_copy_17 = bitcast i8* %malloccall1_17 to [10 x %struct.ap_int]*
  %B_copy_18 = bitcast i8* %malloccall1_18 to [10 x %struct.ap_int]*
  %B_copy_19 = bitcast i8* %malloccall1_19 to [10 x %struct.ap_int]*
  %B_copy_20 = bitcast i8* %malloccall1_20 to [10 x %struct.ap_int]*
  %B_copy_21 = bitcast i8* %malloccall1_21 to [10 x %struct.ap_int]*
  %B_copy_22 = bitcast i8* %malloccall1_22 to [10 x %struct.ap_int]*
  %B_copy_23 = bitcast i8* %malloccall1_23 to [10 x %struct.ap_int]*
  %B_copy_24 = bitcast i8* %malloccall1_24 to [10 x %struct.ap_int]*
  %B_copy_25 = bitcast i8* %malloccall1_25 to [10 x %struct.ap_int]*
  %B_copy_26 = bitcast i8* %malloccall1_26 to [10 x %struct.ap_int]*
  %B_copy_27 = bitcast i8* %malloccall1_27 to [10 x %struct.ap_int]*
  %B_copy_28 = bitcast i8* %malloccall1_28 to [10 x %struct.ap_int]*
  %B_copy_29 = bitcast i8* %malloccall1_29 to [10 x %struct.ap_int]*
  %B_copy_30 = bitcast i8* %malloccall1_30 to [10 x %struct.ap_int]*
  %B_copy_31 = bitcast i8* %malloccall1_31 to [10 x %struct.ap_int]*
  %feature_vector_copy = alloca %"class.hls::stream", align 512
  %scores_copy = alloca [10 x %struct.ap_int], align 512
  %0 = bitcast [32 x %struct.ap_int]* %A to [32 x [32 x %struct.ap_int]]*
  %1 = bitcast [10 x %struct.ap_int]* %B to [32 x [10 x %struct.ap_int]]*
  %2 = bitcast %struct.ap_int* %scores to [10 x %struct.ap_int]*
  call void @copy_in([32 x [32 x %struct.ap_int]]* %0, [32 x %struct.ap_int]* %A_copy_0, [32 x %struct.ap_int]* %A_copy_1, [32 x %struct.ap_int]* %A_copy_2, [32 x %struct.ap_int]* %A_copy_3, [32 x %struct.ap_int]* %A_copy_4, [32 x %struct.ap_int]* %A_copy_5, [32 x %struct.ap_int]* %A_copy_6, [32 x %struct.ap_int]* %A_copy_7, [32 x %struct.ap_int]* %A_copy_8, [32 x %struct.ap_int]* %A_copy_9, [32 x %struct.ap_int]* %A_copy_10, [32 x %struct.ap_int]* %A_copy_11, [32 x %struct.ap_int]* %A_copy_12, [32 x %struct.ap_int]* %A_copy_13, [32 x %struct.ap_int]* %A_copy_14, [32 x %struct.ap_int]* %A_copy_15, [32 x %struct.ap_int]* %A_copy_16, [32 x %struct.ap_int]* %A_copy_17, [32 x %struct.ap_int]* %A_copy_18, [32 x %struct.ap_int]* %A_copy_19, [32 x %struct.ap_int]* %A_copy_20, [32 x %struct.ap_int]* %A_copy_21, [32 x %struct.ap_int]* %A_copy_22, [32 x %struct.ap_int]* %A_copy_23, [32 x %struct.ap_int]* %A_copy_24, [32 x %struct.ap_int]* %A_copy_25, [32 x %struct.ap_int]* %A_copy_26, [32 x %struct.ap_int]* %A_copy_27, [32 x %struct.ap_int]* %A_copy_28, [32 x %struct.ap_int]* %A_copy_29, [32 x %struct.ap_int]* %A_copy_30, [32 x %struct.ap_int]* %A_copy_31, [32 x [10 x %struct.ap_int]]* %1, [10 x %struct.ap_int]* %B_copy_0, [10 x %struct.ap_int]* %B_copy_1, [10 x %struct.ap_int]* %B_copy_2, [10 x %struct.ap_int]* %B_copy_3, [10 x %struct.ap_int]* %B_copy_4, [10 x %struct.ap_int]* %B_copy_5, [10 x %struct.ap_int]* %B_copy_6, [10 x %struct.ap_int]* %B_copy_7, [10 x %struct.ap_int]* %B_copy_8, [10 x %struct.ap_int]* %B_copy_9, [10 x %struct.ap_int]* %B_copy_10, [10 x %struct.ap_int]* %B_copy_11, [10 x %struct.ap_int]* %B_copy_12, [10 x %struct.ap_int]* %B_copy_13, [10 x %struct.ap_int]* %B_copy_14, [10 x %struct.ap_int]* %B_copy_15, [10 x %struct.ap_int]* %B_copy_16, [10 x %struct.ap_int]* %B_copy_17, [10 x %struct.ap_int]* %B_copy_18, [10 x %struct.ap_int]* %B_copy_19, [10 x %struct.ap_int]* %B_copy_20, [10 x %struct.ap_int]* %B_copy_21, [10 x %struct.ap_int]* %B_copy_22, [10 x %struct.ap_int]* %B_copy_23, [10 x %struct.ap_int]* %B_copy_24, [10 x %struct.ap_int]* %B_copy_25, [10 x %struct.ap_int]* %B_copy_26, [10 x %struct.ap_int]* %B_copy_27, [10 x %struct.ap_int]* %B_copy_28, [10 x %struct.ap_int]* %B_copy_29, [10 x %struct.ap_int]* %B_copy_30, [10 x %struct.ap_int]* %B_copy_31, %"class.hls::stream"* %feature_vector, %"class.hls::stream"* nonnull align 512 %feature_vector_copy, [10 x %struct.ap_int]* %2, [10 x %struct.ap_int]* nonnull align 512 %scores_copy)
  %3 = getelementptr inbounds [10 x %struct.ap_int], [10 x %struct.ap_int]* %scores_copy, i32 0, i32 0
  call void @apatb_matrix_matrix_mult_streaming_hw([32 x %struct.ap_int]* %A_copy_0, [32 x %struct.ap_int]* %A_copy_1, [32 x %struct.ap_int]* %A_copy_2, [32 x %struct.ap_int]* %A_copy_3, [32 x %struct.ap_int]* %A_copy_4, [32 x %struct.ap_int]* %A_copy_5, [32 x %struct.ap_int]* %A_copy_6, [32 x %struct.ap_int]* %A_copy_7, [32 x %struct.ap_int]* %A_copy_8, [32 x %struct.ap_int]* %A_copy_9, [32 x %struct.ap_int]* %A_copy_10, [32 x %struct.ap_int]* %A_copy_11, [32 x %struct.ap_int]* %A_copy_12, [32 x %struct.ap_int]* %A_copy_13, [32 x %struct.ap_int]* %A_copy_14, [32 x %struct.ap_int]* %A_copy_15, [32 x %struct.ap_int]* %A_copy_16, [32 x %struct.ap_int]* %A_copy_17, [32 x %struct.ap_int]* %A_copy_18, [32 x %struct.ap_int]* %A_copy_19, [32 x %struct.ap_int]* %A_copy_20, [32 x %struct.ap_int]* %A_copy_21, [32 x %struct.ap_int]* %A_copy_22, [32 x %struct.ap_int]* %A_copy_23, [32 x %struct.ap_int]* %A_copy_24, [32 x %struct.ap_int]* %A_copy_25, [32 x %struct.ap_int]* %A_copy_26, [32 x %struct.ap_int]* %A_copy_27, [32 x %struct.ap_int]* %A_copy_28, [32 x %struct.ap_int]* %A_copy_29, [32 x %struct.ap_int]* %A_copy_30, [32 x %struct.ap_int]* %A_copy_31, [10 x %struct.ap_int]* %B_copy_0, [10 x %struct.ap_int]* %B_copy_1, [10 x %struct.ap_int]* %B_copy_2, [10 x %struct.ap_int]* %B_copy_3, [10 x %struct.ap_int]* %B_copy_4, [10 x %struct.ap_int]* %B_copy_5, [10 x %struct.ap_int]* %B_copy_6, [10 x %struct.ap_int]* %B_copy_7, [10 x %struct.ap_int]* %B_copy_8, [10 x %struct.ap_int]* %B_copy_9, [10 x %struct.ap_int]* %B_copy_10, [10 x %struct.ap_int]* %B_copy_11, [10 x %struct.ap_int]* %B_copy_12, [10 x %struct.ap_int]* %B_copy_13, [10 x %struct.ap_int]* %B_copy_14, [10 x %struct.ap_int]* %B_copy_15, [10 x %struct.ap_int]* %B_copy_16, [10 x %struct.ap_int]* %B_copy_17, [10 x %struct.ap_int]* %B_copy_18, [10 x %struct.ap_int]* %B_copy_19, [10 x %struct.ap_int]* %B_copy_20, [10 x %struct.ap_int]* %B_copy_21, [10 x %struct.ap_int]* %B_copy_22, [10 x %struct.ap_int]* %B_copy_23, [10 x %struct.ap_int]* %B_copy_24, [10 x %struct.ap_int]* %B_copy_25, [10 x %struct.ap_int]* %B_copy_26, [10 x %struct.ap_int]* %B_copy_27, [10 x %struct.ap_int]* %B_copy_28, [10 x %struct.ap_int]* %B_copy_29, [10 x %struct.ap_int]* %B_copy_30, [10 x %struct.ap_int]* %B_copy_31, %"class.hls::stream"* %feature_vector_copy, %struct.ap_int* %3)
  call void @copy_out([32 x [32 x %struct.ap_int]]* %0, [32 x %struct.ap_int]* %A_copy_0, [32 x %struct.ap_int]* %A_copy_1, [32 x %struct.ap_int]* %A_copy_2, [32 x %struct.ap_int]* %A_copy_3, [32 x %struct.ap_int]* %A_copy_4, [32 x %struct.ap_int]* %A_copy_5, [32 x %struct.ap_int]* %A_copy_6, [32 x %struct.ap_int]* %A_copy_7, [32 x %struct.ap_int]* %A_copy_8, [32 x %struct.ap_int]* %A_copy_9, [32 x %struct.ap_int]* %A_copy_10, [32 x %struct.ap_int]* %A_copy_11, [32 x %struct.ap_int]* %A_copy_12, [32 x %struct.ap_int]* %A_copy_13, [32 x %struct.ap_int]* %A_copy_14, [32 x %struct.ap_int]* %A_copy_15, [32 x %struct.ap_int]* %A_copy_16, [32 x %struct.ap_int]* %A_copy_17, [32 x %struct.ap_int]* %A_copy_18, [32 x %struct.ap_int]* %A_copy_19, [32 x %struct.ap_int]* %A_copy_20, [32 x %struct.ap_int]* %A_copy_21, [32 x %struct.ap_int]* %A_copy_22, [32 x %struct.ap_int]* %A_copy_23, [32 x %struct.ap_int]* %A_copy_24, [32 x %struct.ap_int]* %A_copy_25, [32 x %struct.ap_int]* %A_copy_26, [32 x %struct.ap_int]* %A_copy_27, [32 x %struct.ap_int]* %A_copy_28, [32 x %struct.ap_int]* %A_copy_29, [32 x %struct.ap_int]* %A_copy_30, [32 x %struct.ap_int]* %A_copy_31, [32 x [10 x %struct.ap_int]]* %1, [10 x %struct.ap_int]* %B_copy_0, [10 x %struct.ap_int]* %B_copy_1, [10 x %struct.ap_int]* %B_copy_2, [10 x %struct.ap_int]* %B_copy_3, [10 x %struct.ap_int]* %B_copy_4, [10 x %struct.ap_int]* %B_copy_5, [10 x %struct.ap_int]* %B_copy_6, [10 x %struct.ap_int]* %B_copy_7, [10 x %struct.ap_int]* %B_copy_8, [10 x %struct.ap_int]* %B_copy_9, [10 x %struct.ap_int]* %B_copy_10, [10 x %struct.ap_int]* %B_copy_11, [10 x %struct.ap_int]* %B_copy_12, [10 x %struct.ap_int]* %B_copy_13, [10 x %struct.ap_int]* %B_copy_14, [10 x %struct.ap_int]* %B_copy_15, [10 x %struct.ap_int]* %B_copy_16, [10 x %struct.ap_int]* %B_copy_17, [10 x %struct.ap_int]* %B_copy_18, [10 x %struct.ap_int]* %B_copy_19, [10 x %struct.ap_int]* %B_copy_20, [10 x %struct.ap_int]* %B_copy_21, [10 x %struct.ap_int]* %B_copy_22, [10 x %struct.ap_int]* %B_copy_23, [10 x %struct.ap_int]* %B_copy_24, [10 x %struct.ap_int]* %B_copy_25, [10 x %struct.ap_int]* %B_copy_26, [10 x %struct.ap_int]* %B_copy_27, [10 x %struct.ap_int]* %B_copy_28, [10 x %struct.ap_int]* %B_copy_29, [10 x %struct.ap_int]* %B_copy_30, [10 x %struct.ap_int]* %B_copy_31, %"class.hls::stream"* %feature_vector, %"class.hls::stream"* nonnull align 512 %feature_vector_copy, [10 x %struct.ap_int]* %2, [10 x %struct.ap_int]* nonnull align 512 %scores_copy)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall_2)
  call void @free(i8* %malloccall_3)
  call void @free(i8* %malloccall_4)
  call void @free(i8* %malloccall_5)
  call void @free(i8* %malloccall_6)
  call void @free(i8* %malloccall_7)
  call void @free(i8* %malloccall_8)
  call void @free(i8* %malloccall_9)
  call void @free(i8* %malloccall_10)
  call void @free(i8* %malloccall_11)
  call void @free(i8* %malloccall_12)
  call void @free(i8* %malloccall_13)
  call void @free(i8* %malloccall_14)
  call void @free(i8* %malloccall_15)
  call void @free(i8* %malloccall_16)
  call void @free(i8* %malloccall_17)
  call void @free(i8* %malloccall_18)
  call void @free(i8* %malloccall_19)
  call void @free(i8* %malloccall_20)
  call void @free(i8* %malloccall_21)
  call void @free(i8* %malloccall_22)
  call void @free(i8* %malloccall_23)
  call void @free(i8* %malloccall_24)
  call void @free(i8* %malloccall_25)
  call void @free(i8* %malloccall_26)
  call void @free(i8* %malloccall_27)
  call void @free(i8* %malloccall_28)
  call void @free(i8* %malloccall_29)
  call void @free(i8* %malloccall_30)
  call void @free(i8* %malloccall_31)
  call void @free(i8* %malloccall1_0)
  call void @free(i8* %malloccall1_1)
  call void @free(i8* %malloccall1_2)
  call void @free(i8* %malloccall1_3)
  call void @free(i8* %malloccall1_4)
  call void @free(i8* %malloccall1_5)
  call void @free(i8* %malloccall1_6)
  call void @free(i8* %malloccall1_7)
  call void @free(i8* %malloccall1_8)
  call void @free(i8* %malloccall1_9)
  call void @free(i8* %malloccall1_10)
  call void @free(i8* %malloccall1_11)
  call void @free(i8* %malloccall1_12)
  call void @free(i8* %malloccall1_13)
  call void @free(i8* %malloccall1_14)
  call void @free(i8* %malloccall1_15)
  call void @free(i8* %malloccall1_16)
  call void @free(i8* %malloccall1_17)
  call void @free(i8* %malloccall1_18)
  call void @free(i8* %malloccall1_19)
  call void @free(i8* %malloccall1_20)
  call void @free(i8* %malloccall1_21)
  call void @free(i8* %malloccall1_22)
  call void @free(i8* %malloccall1_23)
  call void @free(i8* %malloccall1_24)
  call void @free(i8* %malloccall1_25)
  call void @free(i8* %malloccall1_26)
  call void @free(i8* %malloccall1_27)
  call void @free(i8* %malloccall1_28)
  call void @free(i8* %malloccall1_29)
  call void @free(i8* %malloccall1_30)
  call void @free(i8* %malloccall1_31)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

declare i1 @fpga_fifo_exist_16(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int(%struct.ap_int* noalias nocapture align 16 "orig.arg.no"="0", %struct.ap_int* noalias nocapture "orig.arg.no"="1") unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int* %2 to i8*
  %6 = bitcast %struct.ap_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int, %struct.ap_int* %2
  %8 = bitcast %struct.ap_int* %2 to i8*
  %9 = bitcast %struct.ap_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int* %1 to i8*
  %11 = bitcast %struct.ap_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* noalias nocapture align 16 "orig.arg.no"="0", %struct.ap_int_base* noalias nocapture "orig.arg.no"="1") unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture align 16 "orig.arg.no"="0", %struct.ssdm_int* noalias nocapture "orig.arg.no"="1") unnamed_addr #1 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias align 512, %"class.hls::stream"* noalias) unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream"* %0, null
  %3 = icmp eq %"class.hls::stream"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_32(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* nonnull align 512 %0, %"class.hls::stream"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int(%struct.ap_int* align 512 %.01.03, %struct.ap_int* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.0.05, %struct.ap_int_base* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.0.07, %struct.ssdm_int* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 16, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 16 %.01.111, %struct.ap_uint* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.0* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.0(%struct.ap_int_base.0* align 16 %.01.1.013, %struct.ap_int_base.0* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.1* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.1(%struct.ssdm_int.1* align 16 %.01.1.0.015, %struct.ssdm_int.1* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep59 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep59 to i8*
  %.0.1.0.0.016.gep60 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_2(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %.01.219, %struct.ap_uint* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.0* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_2(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.0(%struct.ap_int_base.0* %.01.2.021, %struct.ap_int_base.0* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.1* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_2(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.1(%struct.ssdm_int.1* %.01.2.0.023, %struct.ssdm_int.1* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep61 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i16* %.01.2.0.0.025.gep61 to i8*
  %.0.2.0.0.024.gep62 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i16* %.0.2.0.0.024.gep62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 2, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.2* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.2(%struct.ap_uint.2* %.01.327, %struct.ap_uint.2* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.3* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.3(%struct.ap_int_base.3* %.01.3.029, %struct.ap_int_base.3* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.4* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.4(%struct.ssdm_int.4* %.01.3.0.031, %struct.ssdm_int.4* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep63 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i2* %.01.3.0.0.033.gep63 to i8*
  %.0.3.0.0.032.gep64 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i2* %.0.3.0.0.032.gep64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.0.434 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4
  %65 = bitcast %struct.ap_uint.5* %.0.434 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @streamcpy_hls.p0struct.ap_uint.5(%struct.ap_uint.5* %.01.435, %struct.ap_uint.5* %.0.434)
  br label %79

; <label>:68:                                     ; preds = %64
  %.0.4.036 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4, i32 0
  %69 = bitcast %struct.ap_int_base.6* %.0.4.036 to i8*
  %70 = call i1 @fpga_fifo_exist_1(i8* %69)
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.6(%struct.ap_int_base.6* %.01.4.037, %struct.ap_int_base.6* %.0.4.036)
  br label %79

; <label>:72:                                     ; preds = %68
  %.0.4.0.038 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %73 = bitcast %struct.ssdm_int.7* %.0.4.0.038 to i8*
  %74 = call i1 @fpga_fifo_exist_1(i8* %73)
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.7(%struct.ssdm_int.7* %.01.4.0.039, %struct.ssdm_int.7* %.0.4.0.038)
  br label %79

; <label>:76:                                     ; preds = %72
  %.01.4.0.0.041.gep65 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %77 = bitcast i1* %.01.4.0.0.041.gep65 to i8*
  %.0.4.0.0.040.gep66 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %78 = bitcast i1* %.0.4.0.0.040.gep66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %78, i64 1, i1 false)
  br label %79

; <label>:79:                                     ; preds = %76, %75, %71, %67
  %.0.542 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5
  %80 = bitcast %struct.ap_uint.8* %.0.542 to i8*
  %81 = call i1 @fpga_fifo_exist_1(i8* %80)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @streamcpy_hls.p0struct.ap_uint.8(%struct.ap_uint.8* %.01.543, %struct.ap_uint.8* %.0.542)
  br label %94

; <label>:83:                                     ; preds = %79
  %.0.5.044 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5, i32 0
  %84 = bitcast %struct.ap_int_base.9* %.0.5.044 to i8*
  %85 = call i1 @fpga_fifo_exist_1(i8* %84)
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %83
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.9(%struct.ap_int_base.9* %.01.5.045, %struct.ap_int_base.9* %.0.5.044)
  br label %94

; <label>:87:                                     ; preds = %83
  %.0.5.0.046 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %88 = bitcast %struct.ssdm_int.10* %.0.5.0.046 to i8*
  %89 = call i1 @fpga_fifo_exist_1(i8* %88)
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %87
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.10(%struct.ssdm_int.10* %.01.5.0.047, %struct.ssdm_int.10* %.0.5.0.046)
  br label %94

; <label>:91:                                     ; preds = %87
  %.01.5.0.0.049.gep67 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %92 = bitcast i5* %.01.5.0.0.049.gep67 to i8*
  %.0.5.0.0.048.gep68 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %93 = bitcast i5* %.0.5.0.0.048.gep68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 %93, i64 1, i1 false)
  br label %94

; <label>:94:                                     ; preds = %91, %90, %86, %82
  %.0.650 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6
  %95 = bitcast %struct.ap_uint.11* %.0.650 to i8*
  %96 = call i1 @fpga_fifo_exist_1(i8* %95)
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  call fastcc void @streamcpy_hls.p0struct.ap_uint.11(%struct.ap_uint.11* %.01.651, %struct.ap_uint.11* %.0.650)
  br label %ret

; <label>:98:                                     ; preds = %94
  %.0.6.052 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6, i32 0
  %99 = bitcast %struct.ap_int_base.12* %.0.6.052 to i8*
  %100 = call i1 @fpga_fifo_exist_1(i8* %99)
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %98
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.12(%struct.ap_int_base.12* %.01.6.053, %struct.ap_int_base.12* %.0.6.052)
  br label %ret

; <label>:102:                                    ; preds = %98
  %.0.6.0.054 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %103 = bitcast %struct.ssdm_int.13* %.0.6.0.054 to i8*
  %104 = call i1 @fpga_fifo_exist_1(i8* %103)
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %102
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.13(%struct.ssdm_int.13* %.01.6.0.055, %struct.ssdm_int.13* %.0.6.0.054)
  br label %ret

; <label>:106:                                    ; preds = %102
  %.01.6.0.0.057.gep69 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %107 = bitcast i6* %.01.6.0.0.057.gep69 to i8*
  %.0.6.0.0.056.gep70 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %108 = bitcast i6* %.0.6.0.0.056.gep70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %107, i8* align 1 %108, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %106, %105, %101, %97, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_32(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias nocapture align 512, %"class.hls::stream"* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %"class.hls::stream"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream"* %2 to i8*
  %6 = bitcast %"class.hls::stream"* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream", %"class.hls::stream"* %2
  %8 = bitcast %"class.hls::stream"* %2 to i8*
  %9 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream"* %1 to i8*
  %11 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 32, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_2(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias nocapture, %struct.ap_uint* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint* %1 to i8*
  %11 = bitcast %struct.ap_uint* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.0(%struct.ap_int_base.0* noalias nocapture, %struct.ap_int_base.0* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_int_base.0
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.0* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.0* %2 to i8*
  %6 = bitcast %struct.ap_int_base.0* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.0, %struct.ap_int_base.0* %2
  %8 = bitcast %struct.ap_int_base.0* %2 to i8*
  %9 = bitcast %struct.ap_int_base.0* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.0* %1 to i8*
  %11 = bitcast %struct.ap_int_base.0* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.1(%struct.ssdm_int.1* noalias nocapture, %struct.ssdm_int.1* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ssdm_int.1
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.1* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.1* %2 to i8*
  %6 = bitcast %struct.ssdm_int.1* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.1, %struct.ssdm_int.1* %2
  %8 = bitcast %struct.ssdm_int.1* %2 to i8*
  %9 = bitcast %struct.ssdm_int.1* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.1* %1 to i8*
  %11 = bitcast %struct.ssdm_int.1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.2(%struct.ap_uint.2* noalias nocapture, %struct.ap_uint.2* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_uint.2
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.2* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.2* %2 to i8*
  %6 = bitcast %struct.ap_uint.2* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.2, %struct.ap_uint.2* %2
  %8 = bitcast %struct.ap_uint.2* %2 to i8*
  %9 = bitcast %struct.ap_uint.2* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.2* %1 to i8*
  %11 = bitcast %struct.ap_uint.2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.3(%struct.ap_int_base.3* noalias nocapture, %struct.ap_int_base.3* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_int_base.3
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.3* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.3* %2 to i8*
  %6 = bitcast %struct.ap_int_base.3* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.3, %struct.ap_int_base.3* %2
  %8 = bitcast %struct.ap_int_base.3* %2 to i8*
  %9 = bitcast %struct.ap_int_base.3* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.3* %1 to i8*
  %11 = bitcast %struct.ap_int_base.3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.4(%struct.ssdm_int.4* noalias nocapture, %struct.ssdm_int.4* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ssdm_int.4
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.4* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.4* %2 to i8*
  %6 = bitcast %struct.ssdm_int.4* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.4, %struct.ssdm_int.4* %2
  %8 = bitcast %struct.ssdm_int.4* %2 to i8*
  %9 = bitcast %struct.ssdm_int.4* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !15

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.4* %1 to i8*
  %11 = bitcast %struct.ssdm_int.4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.5(%struct.ap_uint.5* noalias nocapture, %struct.ap_uint.5* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_uint.5
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.5* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.5* %2 to i8*
  %6 = bitcast %struct.ap_uint.5* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.5, %struct.ap_uint.5* %2
  %8 = bitcast %struct.ap_uint.5* %2 to i8*
  %9 = bitcast %struct.ap_uint.5* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.5* %1 to i8*
  %11 = bitcast %struct.ap_uint.5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.6(%struct.ap_int_base.6* noalias nocapture, %struct.ap_int_base.6* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_int_base.6
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.6* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.6* %2 to i8*
  %6 = bitcast %struct.ap_int_base.6* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.6, %struct.ap_int_base.6* %2
  %8 = bitcast %struct.ap_int_base.6* %2 to i8*
  %9 = bitcast %struct.ap_int_base.6* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.6* %1 to i8*
  %11 = bitcast %struct.ap_int_base.6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.7(%struct.ssdm_int.7* noalias nocapture, %struct.ssdm_int.7* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ssdm_int.7
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.7* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.7* %2 to i8*
  %6 = bitcast %struct.ssdm_int.7* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.7, %struct.ssdm_int.7* %2
  %8 = bitcast %struct.ssdm_int.7* %2 to i8*
  %9 = bitcast %struct.ssdm_int.7* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !18

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.7* %1 to i8*
  %11 = bitcast %struct.ssdm_int.7* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.8(%struct.ap_uint.8* noalias nocapture, %struct.ap_uint.8* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_uint.8
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.8* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.8* %2 to i8*
  %6 = bitcast %struct.ap_uint.8* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.8, %struct.ap_uint.8* %2
  %8 = bitcast %struct.ap_uint.8* %2 to i8*
  %9 = bitcast %struct.ap_uint.8* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.8* %1 to i8*
  %11 = bitcast %struct.ap_uint.8* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.9(%struct.ap_int_base.9* noalias nocapture, %struct.ap_int_base.9* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_int_base.9
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.9* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.9* %2 to i8*
  %6 = bitcast %struct.ap_int_base.9* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.9, %struct.ap_int_base.9* %2
  %8 = bitcast %struct.ap_int_base.9* %2 to i8*
  %9 = bitcast %struct.ap_int_base.9* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !20

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.9* %1 to i8*
  %11 = bitcast %struct.ap_int_base.9* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.10(%struct.ssdm_int.10* noalias nocapture, %struct.ssdm_int.10* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ssdm_int.10
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.10* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.10* %2 to i8*
  %6 = bitcast %struct.ssdm_int.10* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.10, %struct.ssdm_int.10* %2
  %8 = bitcast %struct.ssdm_int.10* %2 to i8*
  %9 = bitcast %struct.ssdm_int.10* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !21

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.10* %1 to i8*
  %11 = bitcast %struct.ssdm_int.10* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.11(%struct.ap_uint.11* noalias nocapture, %struct.ap_uint.11* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_uint.11
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.11* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.11* %2 to i8*
  %6 = bitcast %struct.ap_uint.11* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.11, %struct.ap_uint.11* %2
  %8 = bitcast %struct.ap_uint.11* %2 to i8*
  %9 = bitcast %struct.ap_uint.11* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !22

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.11* %1 to i8*
  %11 = bitcast %struct.ap_uint.11* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.12(%struct.ap_int_base.12* noalias nocapture, %struct.ap_int_base.12* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ap_int_base.12
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.12* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.12* %2 to i8*
  %6 = bitcast %struct.ap_int_base.12* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.12, %struct.ap_int_base.12* %2
  %8 = bitcast %struct.ap_int_base.12* %2 to i8*
  %9 = bitcast %struct.ap_int_base.12* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !23

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.12* %1 to i8*
  %11 = bitcast %struct.ap_int_base.12* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.13(%struct.ssdm_int.13* noalias nocapture, %struct.ssdm_int.13* noalias nocapture) unnamed_addr #1 {
entry:
  %2 = alloca %struct.ssdm_int.13
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.13* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.13* %2 to i8*
  %6 = bitcast %struct.ssdm_int.13* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.13, %struct.ssdm_int.13* %2
  %8 = bitcast %struct.ssdm_int.13* %2 to i8*
  %9 = bitcast %struct.ssdm_int.13* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !24

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.13* %1 to i8*
  %11 = bitcast %struct.ssdm_int.13* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a10struct.ap_int([10 x %struct.ap_int]* noalias align 512, [10 x %struct.ap_int]* noalias) unnamed_addr #3 {
entry:
  %2 = icmp eq [10 x %struct.ap_int]* %0, null
  %3 = icmp eq [10 x %struct.ap_int]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_int* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_int(%struct.ap_int* align 16 %dst.addr, %struct.ap_int* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_int_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_16(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 16 %dst.addr.02, %struct.ap_int_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_16(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 16 %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i128* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i128* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 16, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* noalias nocapture "orig.arg.no"="0", %struct.ap_int* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ap_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int* %2 to i8*
  %6 = bitcast %struct.ap_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int, %struct.ap_int* %2
  %8 = bitcast %struct.ap_int* %2 to i8*
  %9 = bitcast %struct.ap_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int* %1 to i8*
  %11 = bitcast %struct.ap_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* noalias nocapture "orig.arg.no"="0", %struct.ap_int_base* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* noalias nocapture "orig.arg.no"="0", %struct.ssdm_int* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline
define internal void @onebyonecpy_hls.p0a32a32struct.ap_int.11.18([32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_0, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_1, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_2, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_3, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_4, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_5, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_6, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_7, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_8, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_9, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_10, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_11, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_12, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_13, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_14, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_15, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_16, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_17, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_18, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_19, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_20, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_21, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_22, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_23, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_24, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_25, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_26, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_27, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_28, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_29, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_30, [32 x %struct.ap_int]* noalias "orig.arg.no"="0" %_31, [32 x [32 x %struct.ap_int]]* noalias "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [32 x %struct.ap_int]* %_0, null
  %2 = icmp eq [32 x [32 x %struct.ap_int]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %dst.addr57_0 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx18
  %dst.addr57_1 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx18
  %dst.addr57_2 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx18
  %dst.addr57_3 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx18
  %dst.addr57_4 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx18
  %dst.addr57_5 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx18
  %dst.addr57_6 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx18
  %dst.addr57_7 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx18
  %dst.addr57_8 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx18
  %dst.addr57_9 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx18
  %dst.addr57_10 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx18
  %dst.addr57_11 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx18
  %dst.addr57_12 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx18
  %dst.addr57_13 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx18
  %dst.addr57_14 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx18
  %dst.addr57_15 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx18
  %dst.addr57_16 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx18
  %dst.addr57_17 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx18
  %dst.addr57_18 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx18
  %dst.addr57_19 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx18
  %dst.addr57_20 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx18
  %dst.addr57_21 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx18
  %dst.addr57_22 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx18
  %dst.addr57_23 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx18
  %dst.addr57_24 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx18
  %dst.addr57_25 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx18
  %dst.addr57_26 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx18
  %dst.addr57_27 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx18
  %dst.addr57_28 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx18
  %dst.addr57_29 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx18
  %dst.addr57_30 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx18
  %dst.addr57_31 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx18
  %dst.addr5.010_0 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_1 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_2 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_3 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_4 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_5 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_6 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_7 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_8 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_9 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_10 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_11 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_12 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_13 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_14 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_15 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_16 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_17 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_18 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_19 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_20 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_21 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_22 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_23 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_24 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_25 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_26 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_27 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_28 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_29 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_30 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.010_31 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx18, i32 0
  %dst.addr5.0.012_0 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_1 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_2 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_3 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_4 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_5 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_6 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_7 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_8 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_9 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_10 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_11 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_12 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_13 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_14 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_15 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_16 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_17 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_18 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_19 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_20 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_21 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_22 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_23 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_24 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_25 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_26 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_27 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_28 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_29 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_30 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.012_31 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_0 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_1 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_2 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_3 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_4 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_5 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_6 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_7 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_8 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_9 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_10 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_11 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_12 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_13 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_14 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_15 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_16 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_17 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_18 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_19 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_20 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_21 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_22 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_23 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_24 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_25 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_26 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_27 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_28 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_29 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_30 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_31 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %_01 = bitcast i128* %dst.addr5.0.0.014.gep15_0 to i8*
  %_110 = bitcast i128* %dst.addr5.0.0.014.gep15_1 to i8*
  %_211 = bitcast i128* %dst.addr5.0.0.014.gep15_2 to i8*
  %_312 = bitcast i128* %dst.addr5.0.0.014.gep15_3 to i8*
  %_413 = bitcast i128* %dst.addr5.0.0.014.gep15_4 to i8*
  %_514 = bitcast i128* %dst.addr5.0.0.014.gep15_5 to i8*
  %_615 = bitcast i128* %dst.addr5.0.0.014.gep15_6 to i8*
  %_716 = bitcast i128* %dst.addr5.0.0.014.gep15_7 to i8*
  %_817 = bitcast i128* %dst.addr5.0.0.014.gep15_8 to i8*
  %_918 = bitcast i128* %dst.addr5.0.0.014.gep15_9 to i8*
  %_1019 = bitcast i128* %dst.addr5.0.0.014.gep15_10 to i8*
  %_1120 = bitcast i128* %dst.addr5.0.0.014.gep15_11 to i8*
  %_1221 = bitcast i128* %dst.addr5.0.0.014.gep15_12 to i8*
  %_1322 = bitcast i128* %dst.addr5.0.0.014.gep15_13 to i8*
  %_1423 = bitcast i128* %dst.addr5.0.0.014.gep15_14 to i8*
  %_1524 = bitcast i128* %dst.addr5.0.0.014.gep15_15 to i8*
  %_1625 = bitcast i128* %dst.addr5.0.0.014.gep15_16 to i8*
  %_1726 = bitcast i128* %dst.addr5.0.0.014.gep15_17 to i8*
  %_1827 = bitcast i128* %dst.addr5.0.0.014.gep15_18 to i8*
  %_1928 = bitcast i128* %dst.addr5.0.0.014.gep15_19 to i8*
  %_2029 = bitcast i128* %dst.addr5.0.0.014.gep15_20 to i8*
  %_2130 = bitcast i128* %dst.addr5.0.0.014.gep15_21 to i8*
  %_2231 = bitcast i128* %dst.addr5.0.0.014.gep15_22 to i8*
  %_2332 = bitcast i128* %dst.addr5.0.0.014.gep15_23 to i8*
  %_2433 = bitcast i128* %dst.addr5.0.0.014.gep15_24 to i8*
  %_2534 = bitcast i128* %dst.addr5.0.0.014.gep15_25 to i8*
  %_2635 = bitcast i128* %dst.addr5.0.0.014.gep15_26 to i8*
  %_2736 = bitcast i128* %dst.addr5.0.0.014.gep15_27 to i8*
  %_2837 = bitcast i128* %dst.addr5.0.0.014.gep15_28 to i8*
  %_2938 = bitcast i128* %dst.addr5.0.0.014.gep15_29 to i8*
  %_3039 = bitcast i128* %dst.addr5.0.0.014.gep15_30 to i8*
  %_3140 = bitcast i128* %dst.addr5.0.0.014.gep15_31 to i8*
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop.head1, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop.head1 ]
  %src.addr68 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %4 = bitcast %struct.ap_int* %src.addr68 to i8*
  %5 = call i1 @fpga_fifo_exist_16(i8* %4)
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %for.loop2
  switch i64 %for.loop.idx317, label %dst.addr57.default [
    i64 0, label %dst.addr57.case.0
    i64 1, label %dst.addr57.case.1
    i64 2, label %dst.addr57.case.2
    i64 3, label %dst.addr57.case.3
    i64 4, label %dst.addr57.case.4
    i64 5, label %dst.addr57.case.5
    i64 6, label %dst.addr57.case.6
    i64 7, label %dst.addr57.case.7
    i64 8, label %dst.addr57.case.8
    i64 9, label %dst.addr57.case.9
    i64 10, label %dst.addr57.case.10
    i64 11, label %dst.addr57.case.11
    i64 12, label %dst.addr57.case.12
    i64 13, label %dst.addr57.case.13
    i64 14, label %dst.addr57.case.14
    i64 15, label %dst.addr57.case.15
    i64 16, label %dst.addr57.case.16
    i64 17, label %dst.addr57.case.17
    i64 18, label %dst.addr57.case.18
    i64 19, label %dst.addr57.case.19
    i64 20, label %dst.addr57.case.20
    i64 21, label %dst.addr57.case.21
    i64 22, label %dst.addr57.case.22
    i64 23, label %dst.addr57.case.23
    i64 24, label %dst.addr57.case.24
    i64 25, label %dst.addr57.case.25
    i64 26, label %dst.addr57.case.26
    i64 27, label %dst.addr57.case.27
    i64 28, label %dst.addr57.case.28
    i64 29, label %dst.addr57.case.29
    i64 30, label %dst.addr57.case.30
    i64 31, label %dst.addr57.case.31
  ]

dst.addr57.default:                               ; preds = %6
  unreachable

dst.addr57.case.0:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_0, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.1:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_1, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.2:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_2, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.3:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_3, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.4:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_4, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.5:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_5, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.6:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_6, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.7:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_7, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.8:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_8, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.9:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_9, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.10:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_10, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.11:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_11, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.12:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_12, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.13:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_13, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.14:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_14, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.15:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_15, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.16:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_16, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.17:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_17, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.18:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_18, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.19:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_19, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.20:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_20, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.21:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_21, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.22:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_22, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.23:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_23, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.24:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_24, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.25:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_25, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.26:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_26, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.27:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_27, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.28:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_28, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.29:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_29, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.30:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_30, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.31:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.12.13(%struct.ap_int* %dst.addr57_31, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

; <label>:7:                                      ; preds = %for.loop2
  %src.addr6.09 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0
  %8 = bitcast %struct.ap_int_base* %src.addr6.09 to i8*
  %9 = call i1 @fpga_fifo_exist_16(i8* %8)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7
  switch i64 %for.loop.idx317, label %dst.addr5.010.default [
    i64 0, label %dst.addr5.010.case.0
    i64 1, label %dst.addr5.010.case.1
    i64 2, label %dst.addr5.010.case.2
    i64 3, label %dst.addr5.010.case.3
    i64 4, label %dst.addr5.010.case.4
    i64 5, label %dst.addr5.010.case.5
    i64 6, label %dst.addr5.010.case.6
    i64 7, label %dst.addr5.010.case.7
    i64 8, label %dst.addr5.010.case.8
    i64 9, label %dst.addr5.010.case.9
    i64 10, label %dst.addr5.010.case.10
    i64 11, label %dst.addr5.010.case.11
    i64 12, label %dst.addr5.010.case.12
    i64 13, label %dst.addr5.010.case.13
    i64 14, label %dst.addr5.010.case.14
    i64 15, label %dst.addr5.010.case.15
    i64 16, label %dst.addr5.010.case.16
    i64 17, label %dst.addr5.010.case.17
    i64 18, label %dst.addr5.010.case.18
    i64 19, label %dst.addr5.010.case.19
    i64 20, label %dst.addr5.010.case.20
    i64 21, label %dst.addr5.010.case.21
    i64 22, label %dst.addr5.010.case.22
    i64 23, label %dst.addr5.010.case.23
    i64 24, label %dst.addr5.010.case.24
    i64 25, label %dst.addr5.010.case.25
    i64 26, label %dst.addr5.010.case.26
    i64 27, label %dst.addr5.010.case.27
    i64 28, label %dst.addr5.010.case.28
    i64 29, label %dst.addr5.010.case.29
    i64 30, label %dst.addr5.010.case.30
    i64 31, label %dst.addr5.010.case.31
  ]

dst.addr5.010.default:                            ; preds = %10
  unreachable

dst.addr5.010.case.0:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_0, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.1:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_1, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.2:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_2, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.3:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_3, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.4:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_4, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.5:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_5, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.6:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_6, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.7:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_7, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.8:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_8, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.9:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_9, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.10:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_10, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.11:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_11, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.12:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_12, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.13:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_13, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.14:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_14, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.15:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_15, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.16:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_16, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.17:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_17, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.18:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_18, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.19:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_19, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.20:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_20, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.21:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_21, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.22:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_22, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.23:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_23, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.24:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_24, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.25:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_25, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.26:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_26, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.27:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_27, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.28:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_28, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.29:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_29, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.30:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_30, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.31:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.14.15(%struct.ap_int_base* %dst.addr5.010_31, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

; <label>:11:                                     ; preds = %7
  %src.addr6.0.011 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0
  %12 = bitcast %struct.ssdm_int* %src.addr6.0.011 to i8*
  %13 = call i1 @fpga_fifo_exist_16(i8* %12)
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11
  switch i64 %for.loop.idx317, label %dst.addr5.0.012.default [
    i64 0, label %dst.addr5.0.012.case.0
    i64 1, label %dst.addr5.0.012.case.1
    i64 2, label %dst.addr5.0.012.case.2
    i64 3, label %dst.addr5.0.012.case.3
    i64 4, label %dst.addr5.0.012.case.4
    i64 5, label %dst.addr5.0.012.case.5
    i64 6, label %dst.addr5.0.012.case.6
    i64 7, label %dst.addr5.0.012.case.7
    i64 8, label %dst.addr5.0.012.case.8
    i64 9, label %dst.addr5.0.012.case.9
    i64 10, label %dst.addr5.0.012.case.10
    i64 11, label %dst.addr5.0.012.case.11
    i64 12, label %dst.addr5.0.012.case.12
    i64 13, label %dst.addr5.0.012.case.13
    i64 14, label %dst.addr5.0.012.case.14
    i64 15, label %dst.addr5.0.012.case.15
    i64 16, label %dst.addr5.0.012.case.16
    i64 17, label %dst.addr5.0.012.case.17
    i64 18, label %dst.addr5.0.012.case.18
    i64 19, label %dst.addr5.0.012.case.19
    i64 20, label %dst.addr5.0.012.case.20
    i64 21, label %dst.addr5.0.012.case.21
    i64 22, label %dst.addr5.0.012.case.22
    i64 23, label %dst.addr5.0.012.case.23
    i64 24, label %dst.addr5.0.012.case.24
    i64 25, label %dst.addr5.0.012.case.25
    i64 26, label %dst.addr5.0.012.case.26
    i64 27, label %dst.addr5.0.012.case.27
    i64 28, label %dst.addr5.0.012.case.28
    i64 29, label %dst.addr5.0.012.case.29
    i64 30, label %dst.addr5.0.012.case.30
    i64 31, label %dst.addr5.0.012.case.31
  ]

dst.addr5.0.012.default:                          ; preds = %14
  unreachable

dst.addr5.0.012.case.0:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_0, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.1:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_1, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.2:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_2, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.3:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_3, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.4:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_4, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.5:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_5, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.6:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_6, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.7:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_7, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.8:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_8, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.9:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_9, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.10:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_10, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.11:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_11, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.12:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_12, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.13:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_13, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.14:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_14, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.15:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_15, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.16:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_16, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.17:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_17, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.18:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_18, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.19:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_19, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.20:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_20, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.21:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_21, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.22:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_22, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.23:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_23, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.24:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_24, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.25:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_25, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.26:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_26, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.27:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_27, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.28:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_28, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.29:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_29, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.30:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_30, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.31:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.16.17(%struct.ssdm_int* %dst.addr5.0.012_31, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

; <label>:15:                                     ; preds = %11
  %src.addr6.0.0.013.gep16 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %16 = bitcast i128* %src.addr6.0.0.013.gep16 to i8*
  switch i64 %for.loop.idx317, label %.default [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.case.7
    i64 8, label %.case.8
    i64 9, label %.case.9
    i64 10, label %.case.10
    i64 11, label %.case.11
    i64 12, label %.case.12
    i64 13, label %.case.13
    i64 14, label %.case.14
    i64 15, label %.case.15
    i64 16, label %.case.16
    i64 17, label %.case.17
    i64 18, label %.case.18
    i64 19, label %.case.19
    i64 20, label %.case.20
    i64 21, label %.case.21
    i64 22, label %.case.22
    i64 23, label %.case.23
    i64 24, label %.case.24
    i64 25, label %.case.25
    i64 26, label %.case.26
    i64 27, label %.case.27
    i64 28, label %.case.28
    i64 29, label %.case.29
    i64 30, label %.case.30
    i64 31, label %.case.31
  ]

.default:                                         ; preds = %15
  unreachable

.case.0:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_01, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.1:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_110, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.2:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_211, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.3:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_312, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.4:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_413, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.5:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_514, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.6:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_615, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.7:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_716, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.8:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_817, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.9:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_918, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.10:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1019, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.11:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1120, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.12:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1221, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.13:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1322, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.14:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1423, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.15:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1524, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.16:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1625, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.17:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1726, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.18:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1827, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.19:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1928, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.20:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2029, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.21:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2130, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.22:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2231, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.23:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2332, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.24:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2433, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.25:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2534, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.26:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2635, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.27:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2736, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.28:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2837, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.29:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2938, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.30:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3039, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.31:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3140, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %.case.31, %.case.30, %.case.29, %.case.28, %.case.27, %.case.26, %.case.25, %.case.24, %.case.23, %.case.22, %.case.21, %.case.20, %.case.19, %.case.18, %.case.17, %.case.16, %.case.15, %.case.14, %.case.13, %.case.12, %.case.11, %.case.10, %.case.9, %.case.8, %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0, %dst.addr5.0.012.case.31, %dst.addr5.0.012.case.30, %dst.addr5.0.012.case.29, %dst.addr5.0.012.case.28, %dst.addr5.0.012.case.27, %dst.addr5.0.012.case.26, %dst.addr5.0.012.case.25, %dst.addr5.0.012.case.24, %dst.addr5.0.012.case.23, %dst.addr5.0.012.case.22, %dst.addr5.0.012.case.21, %dst.addr5.0.012.case.20, %dst.addr5.0.012.case.19, %dst.addr5.0.012.case.18, %dst.addr5.0.012.case.17, %dst.addr5.0.012.case.16, %dst.addr5.0.012.case.15, %dst.addr5.0.012.case.14, %dst.addr5.0.012.case.13, %dst.addr5.0.012.case.12, %dst.addr5.0.012.case.11, %dst.addr5.0.012.case.10, %dst.addr5.0.012.case.9, %dst.addr5.0.012.case.8, %dst.addr5.0.012.case.7, %dst.addr5.0.012.case.6, %dst.addr5.0.012.case.5, %dst.addr5.0.012.case.4, %dst.addr5.0.012.case.3, %dst.addr5.0.012.case.2, %dst.addr5.0.012.case.1, %dst.addr5.0.012.case.0, %dst.addr5.010.case.31, %dst.addr5.010.case.30, %dst.addr5.010.case.29, %dst.addr5.010.case.28, %dst.addr5.010.case.27, %dst.addr5.010.case.26, %dst.addr5.010.case.25, %dst.addr5.010.case.24, %dst.addr5.010.case.23, %dst.addr5.010.case.22, %dst.addr5.010.case.21, %dst.addr5.010.case.20, %dst.addr5.010.case.19, %dst.addr5.010.case.18, %dst.addr5.010.case.17, %dst.addr5.010.case.16, %dst.addr5.010.case.15, %dst.addr5.010.case.14, %dst.addr5.010.case.13, %dst.addr5.010.case.12, %dst.addr5.010.case.11, %dst.addr5.010.case.10, %dst.addr5.010.case.9, %dst.addr5.010.case.8, %dst.addr5.010.case.7, %dst.addr5.010.case.6, %dst.addr5.010.case.5, %dst.addr5.010.case.4, %dst.addr5.010.case.3, %dst.addr5.010.case.2, %dst.addr5.010.case.1, %dst.addr5.010.case.0, %dst.addr57.case.31, %dst.addr57.case.30, %dst.addr57.case.29, %dst.addr57.case.28, %dst.addr57.case.27, %dst.addr57.case.26, %dst.addr57.case.25, %dst.addr57.case.24, %dst.addr57.case.23, %dst.addr57.case.22, %dst.addr57.case.21, %dst.addr57.case.20, %dst.addr57.case.19, %dst.addr57.case.18, %dst.addr57.case.17, %dst.addr57.case.16, %dst.addr57.case.15, %dst.addr57.case.14, %dst.addr57.case.13, %dst.addr57.case.12, %dst.addr57.case.11, %dst.addr57.case.10, %dst.addr57.case.9, %dst.addr57.case.8, %dst.addr57.case.7, %dst.addr57.case.6, %dst.addr57.case.5, %dst.addr57.case.4, %dst.addr57.case.3, %dst.addr57.case.2, %dst.addr57.case.1, %dst.addr57.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 32
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* noalias nocapture "orig.arg.no"="0", %struct.ap_int* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ap_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int* %2 to i8*
  %6 = bitcast %struct.ap_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int, %struct.ap_int* %2
  %8 = bitcast %struct.ap_int* %2 to i8*
  %9 = bitcast %struct.ap_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int* %1 to i8*
  %11 = bitcast %struct.ap_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* noalias nocapture "orig.arg.no"="0", %struct.ap_int_base* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* noalias nocapture "orig.arg.no"="0", %struct.ssdm_int* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline
define internal void @onebyonecpy_hls.p0a32a10struct.ap_int.19.26([10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_0, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_1, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_2, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_3, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_4, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_5, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_6, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_7, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_8, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_9, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_10, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_11, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_12, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_13, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_14, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_15, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_16, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_17, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_18, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_19, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_20, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_21, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_22, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_23, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_24, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_25, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_26, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_27, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_28, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_29, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_30, [10 x %struct.ap_int]* noalias "orig.arg.no"="0" %_31, [32 x [10 x %struct.ap_int]]* noalias "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [10 x %struct.ap_int]* %_0, null
  %2 = icmp eq [32 x [10 x %struct.ap_int]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop.head1, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop.head1 ]
  %dst.addr57_0 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx317
  %dst.addr57_1 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx317
  %dst.addr57_2 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx317
  %dst.addr57_3 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx317
  %dst.addr57_4 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx317
  %dst.addr57_5 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx317
  %dst.addr57_6 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx317
  %dst.addr57_7 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx317
  %dst.addr57_8 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx317
  %dst.addr57_9 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx317
  %dst.addr57_10 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx317
  %dst.addr57_11 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx317
  %dst.addr57_12 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx317
  %dst.addr57_13 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx317
  %dst.addr57_14 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx317
  %dst.addr57_15 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx317
  %dst.addr57_16 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx317
  %dst.addr57_17 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx317
  %dst.addr57_18 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx317
  %dst.addr57_19 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx317
  %dst.addr57_20 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx317
  %dst.addr57_21 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx317
  %dst.addr57_22 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx317
  %dst.addr57_23 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx317
  %dst.addr57_24 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx317
  %dst.addr57_25 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx317
  %dst.addr57_26 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx317
  %dst.addr57_27 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx317
  %dst.addr57_28 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx317
  %dst.addr57_29 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx317
  %dst.addr57_30 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx317
  %dst.addr57_31 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx317
  %src.addr68 = getelementptr [32 x [10 x %struct.ap_int]], [32 x [10 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %4 = bitcast %struct.ap_int* %src.addr68 to i8*
  %5 = call i1 @fpga_fifo_exist_16(i8* %4)
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %for.loop2
  switch i64 %for.loop.idx18, label %dst.addr57.default [
    i64 0, label %dst.addr57.case.0
    i64 1, label %dst.addr57.case.1
    i64 2, label %dst.addr57.case.2
    i64 3, label %dst.addr57.case.3
    i64 4, label %dst.addr57.case.4
    i64 5, label %dst.addr57.case.5
    i64 6, label %dst.addr57.case.6
    i64 7, label %dst.addr57.case.7
    i64 8, label %dst.addr57.case.8
    i64 9, label %dst.addr57.case.9
    i64 10, label %dst.addr57.case.10
    i64 11, label %dst.addr57.case.11
    i64 12, label %dst.addr57.case.12
    i64 13, label %dst.addr57.case.13
    i64 14, label %dst.addr57.case.14
    i64 15, label %dst.addr57.case.15
    i64 16, label %dst.addr57.case.16
    i64 17, label %dst.addr57.case.17
    i64 18, label %dst.addr57.case.18
    i64 19, label %dst.addr57.case.19
    i64 20, label %dst.addr57.case.20
    i64 21, label %dst.addr57.case.21
    i64 22, label %dst.addr57.case.22
    i64 23, label %dst.addr57.case.23
    i64 24, label %dst.addr57.case.24
    i64 25, label %dst.addr57.case.25
    i64 26, label %dst.addr57.case.26
    i64 27, label %dst.addr57.case.27
    i64 28, label %dst.addr57.case.28
    i64 29, label %dst.addr57.case.29
    i64 30, label %dst.addr57.case.30
    i64 31, label %dst.addr57.case.31
  ]

dst.addr57.default:                               ; preds = %6
  unreachable

dst.addr57.case.0:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_0, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.1:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_1, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.2:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_2, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.3:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_3, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.4:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_4, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.5:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_5, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.6:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_6, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.7:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_7, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.8:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_8, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.9:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_9, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.10:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_10, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.11:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_11, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.12:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_12, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.13:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_13, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.14:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_14, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.15:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_15, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.16:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_16, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.17:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_17, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.18:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_18, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.19:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_19, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.20:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_20, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.21:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_21, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.22:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_22, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.23:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_23, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.24:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_24, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.25:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_25, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.26:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_26, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.27:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_27, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.28:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_28, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.29:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_29, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.30:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_30, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.31:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_int.20.21(%struct.ap_int* %dst.addr57_31, %struct.ap_int* %src.addr68)
  br label %for.loop.head1

; <label>:7:                                      ; preds = %for.loop2
  %src.addr6.09 = getelementptr [32 x [10 x %struct.ap_int]], [32 x [10 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_0 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_1 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_2 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_3 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_4 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_5 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_6 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_7 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_8 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_9 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_10 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_11 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_12 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_13 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_14 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_15 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_16 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_17 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_18 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_19 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_20 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_21 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_22 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_23 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_24 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_25 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_26 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_27 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_28 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_29 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_30 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_31 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx317, i32 0
  %8 = bitcast %struct.ap_int_base* %src.addr6.09 to i8*
  %9 = call i1 @fpga_fifo_exist_16(i8* %8)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7
  switch i64 %for.loop.idx18, label %dst.addr5.010.default [
    i64 0, label %dst.addr5.010.case.0
    i64 1, label %dst.addr5.010.case.1
    i64 2, label %dst.addr5.010.case.2
    i64 3, label %dst.addr5.010.case.3
    i64 4, label %dst.addr5.010.case.4
    i64 5, label %dst.addr5.010.case.5
    i64 6, label %dst.addr5.010.case.6
    i64 7, label %dst.addr5.010.case.7
    i64 8, label %dst.addr5.010.case.8
    i64 9, label %dst.addr5.010.case.9
    i64 10, label %dst.addr5.010.case.10
    i64 11, label %dst.addr5.010.case.11
    i64 12, label %dst.addr5.010.case.12
    i64 13, label %dst.addr5.010.case.13
    i64 14, label %dst.addr5.010.case.14
    i64 15, label %dst.addr5.010.case.15
    i64 16, label %dst.addr5.010.case.16
    i64 17, label %dst.addr5.010.case.17
    i64 18, label %dst.addr5.010.case.18
    i64 19, label %dst.addr5.010.case.19
    i64 20, label %dst.addr5.010.case.20
    i64 21, label %dst.addr5.010.case.21
    i64 22, label %dst.addr5.010.case.22
    i64 23, label %dst.addr5.010.case.23
    i64 24, label %dst.addr5.010.case.24
    i64 25, label %dst.addr5.010.case.25
    i64 26, label %dst.addr5.010.case.26
    i64 27, label %dst.addr5.010.case.27
    i64 28, label %dst.addr5.010.case.28
    i64 29, label %dst.addr5.010.case.29
    i64 30, label %dst.addr5.010.case.30
    i64 31, label %dst.addr5.010.case.31
  ]

dst.addr5.010.default:                            ; preds = %10
  unreachable

dst.addr5.010.case.0:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_0, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.1:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_1, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.2:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_2, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.3:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_3, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.4:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_4, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.5:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_5, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.6:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_6, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.7:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_7, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.8:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_8, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.9:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_9, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.10:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_10, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.11:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_11, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.12:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_12, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.13:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_13, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.14:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_14, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.15:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_15, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.16:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_16, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.17:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_17, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.18:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_18, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.19:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_19, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.20:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_20, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.21:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_21, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.22:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_22, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.23:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_23, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.24:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_24, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.25:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_25, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.26:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_26, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.27:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_27, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.28:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_28, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.29:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_29, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.30:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_30, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.31:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.22.23(%struct.ap_int_base* %dst.addr5.010_31, %struct.ap_int_base* %src.addr6.09)
  br label %for.loop.head1

; <label>:11:                                     ; preds = %7
  %src.addr6.0.011 = getelementptr [32 x [10 x %struct.ap_int]], [32 x [10 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_0 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_1 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_2 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_3 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_4 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_5 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_6 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_7 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_8 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_9 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_10 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_11 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_12 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_13 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_14 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_15 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_16 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_17 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_18 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_19 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_20 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_21 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_22 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_23 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_24 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_25 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_26 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_27 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_28 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_29 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_30 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_31 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %12 = bitcast %struct.ssdm_int* %src.addr6.0.011 to i8*
  %13 = call i1 @fpga_fifo_exist_16(i8* %12)
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11
  switch i64 %for.loop.idx18, label %dst.addr5.0.012.default [
    i64 0, label %dst.addr5.0.012.case.0
    i64 1, label %dst.addr5.0.012.case.1
    i64 2, label %dst.addr5.0.012.case.2
    i64 3, label %dst.addr5.0.012.case.3
    i64 4, label %dst.addr5.0.012.case.4
    i64 5, label %dst.addr5.0.012.case.5
    i64 6, label %dst.addr5.0.012.case.6
    i64 7, label %dst.addr5.0.012.case.7
    i64 8, label %dst.addr5.0.012.case.8
    i64 9, label %dst.addr5.0.012.case.9
    i64 10, label %dst.addr5.0.012.case.10
    i64 11, label %dst.addr5.0.012.case.11
    i64 12, label %dst.addr5.0.012.case.12
    i64 13, label %dst.addr5.0.012.case.13
    i64 14, label %dst.addr5.0.012.case.14
    i64 15, label %dst.addr5.0.012.case.15
    i64 16, label %dst.addr5.0.012.case.16
    i64 17, label %dst.addr5.0.012.case.17
    i64 18, label %dst.addr5.0.012.case.18
    i64 19, label %dst.addr5.0.012.case.19
    i64 20, label %dst.addr5.0.012.case.20
    i64 21, label %dst.addr5.0.012.case.21
    i64 22, label %dst.addr5.0.012.case.22
    i64 23, label %dst.addr5.0.012.case.23
    i64 24, label %dst.addr5.0.012.case.24
    i64 25, label %dst.addr5.0.012.case.25
    i64 26, label %dst.addr5.0.012.case.26
    i64 27, label %dst.addr5.0.012.case.27
    i64 28, label %dst.addr5.0.012.case.28
    i64 29, label %dst.addr5.0.012.case.29
    i64 30, label %dst.addr5.0.012.case.30
    i64 31, label %dst.addr5.0.012.case.31
  ]

dst.addr5.0.012.default:                          ; preds = %14
  unreachable

dst.addr5.0.012.case.0:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_0, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.1:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_1, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.2:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_2, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.3:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_3, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.4:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_4, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.5:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_5, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.6:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_6, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.7:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_7, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.8:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_8, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.9:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_9, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.10:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_10, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.11:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_11, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.12:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_12, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.13:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_13, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.14:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_14, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.15:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_15, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.16:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_16, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.17:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_17, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.18:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_18, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.19:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_19, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.20:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_20, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.21:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_21, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.22:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_22, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.23:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_23, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.24:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_24, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.25:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_25, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.26:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_26, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.27:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_27, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.28:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_28, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.29:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_29, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.30:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_30, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.31:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.24.25(%struct.ssdm_int* %dst.addr5.0.012_31, %struct.ssdm_int* %src.addr6.0.011)
  br label %for.loop.head1

; <label>:15:                                     ; preds = %11
  %dst.addr5.0.0.014.gep15_0 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_1 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_2 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_3 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_4 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_5 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_6 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_7 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_8 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_9 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_10 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_11 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_12 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_13 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_14 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_15 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_16 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_17 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_18 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_19 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_20 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_21 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_22 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_23 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_24 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_25 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_26 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_27 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_28 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_29 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_30 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_31 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_01 = bitcast i128* %dst.addr5.0.0.014.gep15_0 to i8*
  %_110 = bitcast i128* %dst.addr5.0.0.014.gep15_1 to i8*
  %_211 = bitcast i128* %dst.addr5.0.0.014.gep15_2 to i8*
  %_312 = bitcast i128* %dst.addr5.0.0.014.gep15_3 to i8*
  %_413 = bitcast i128* %dst.addr5.0.0.014.gep15_4 to i8*
  %_514 = bitcast i128* %dst.addr5.0.0.014.gep15_5 to i8*
  %_615 = bitcast i128* %dst.addr5.0.0.014.gep15_6 to i8*
  %_716 = bitcast i128* %dst.addr5.0.0.014.gep15_7 to i8*
  %_817 = bitcast i128* %dst.addr5.0.0.014.gep15_8 to i8*
  %_918 = bitcast i128* %dst.addr5.0.0.014.gep15_9 to i8*
  %_1019 = bitcast i128* %dst.addr5.0.0.014.gep15_10 to i8*
  %_1120 = bitcast i128* %dst.addr5.0.0.014.gep15_11 to i8*
  %_1221 = bitcast i128* %dst.addr5.0.0.014.gep15_12 to i8*
  %_1322 = bitcast i128* %dst.addr5.0.0.014.gep15_13 to i8*
  %_1423 = bitcast i128* %dst.addr5.0.0.014.gep15_14 to i8*
  %_1524 = bitcast i128* %dst.addr5.0.0.014.gep15_15 to i8*
  %_1625 = bitcast i128* %dst.addr5.0.0.014.gep15_16 to i8*
  %_1726 = bitcast i128* %dst.addr5.0.0.014.gep15_17 to i8*
  %_1827 = bitcast i128* %dst.addr5.0.0.014.gep15_18 to i8*
  %_1928 = bitcast i128* %dst.addr5.0.0.014.gep15_19 to i8*
  %_2029 = bitcast i128* %dst.addr5.0.0.014.gep15_20 to i8*
  %_2130 = bitcast i128* %dst.addr5.0.0.014.gep15_21 to i8*
  %_2231 = bitcast i128* %dst.addr5.0.0.014.gep15_22 to i8*
  %_2332 = bitcast i128* %dst.addr5.0.0.014.gep15_23 to i8*
  %_2433 = bitcast i128* %dst.addr5.0.0.014.gep15_24 to i8*
  %_2534 = bitcast i128* %dst.addr5.0.0.014.gep15_25 to i8*
  %_2635 = bitcast i128* %dst.addr5.0.0.014.gep15_26 to i8*
  %_2736 = bitcast i128* %dst.addr5.0.0.014.gep15_27 to i8*
  %_2837 = bitcast i128* %dst.addr5.0.0.014.gep15_28 to i8*
  %_2938 = bitcast i128* %dst.addr5.0.0.014.gep15_29 to i8*
  %_3039 = bitcast i128* %dst.addr5.0.0.014.gep15_30 to i8*
  %_3140 = bitcast i128* %dst.addr5.0.0.014.gep15_31 to i8*
  %src.addr6.0.0.013.gep16 = getelementptr [32 x [10 x %struct.ap_int]], [32 x [10 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %16 = bitcast i128* %src.addr6.0.0.013.gep16 to i8*
  switch i64 %for.loop.idx18, label %.default [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.case.7
    i64 8, label %.case.8
    i64 9, label %.case.9
    i64 10, label %.case.10
    i64 11, label %.case.11
    i64 12, label %.case.12
    i64 13, label %.case.13
    i64 14, label %.case.14
    i64 15, label %.case.15
    i64 16, label %.case.16
    i64 17, label %.case.17
    i64 18, label %.case.18
    i64 19, label %.case.19
    i64 20, label %.case.20
    i64 21, label %.case.21
    i64 22, label %.case.22
    i64 23, label %.case.23
    i64 24, label %.case.24
    i64 25, label %.case.25
    i64 26, label %.case.26
    i64 27, label %.case.27
    i64 28, label %.case.28
    i64 29, label %.case.29
    i64 30, label %.case.30
    i64 31, label %.case.31
  ]

.default:                                         ; preds = %15
  unreachable

.case.0:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_01, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.1:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_110, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.2:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_211, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.3:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_312, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.4:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_413, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.5:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_514, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.6:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_615, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.7:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_716, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.8:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_817, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.9:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_918, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.10:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1019, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.11:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1120, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.12:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1221, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.13:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1322, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.14:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1423, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.15:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1524, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.16:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1625, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.17:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1726, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.18:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1827, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.19:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1928, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.20:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2029, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.21:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2130, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.22:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2231, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.23:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2332, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.24:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2433, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.25:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2534, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.26:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2635, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.27:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2736, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.28:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2837, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.29:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2938, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.30:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3039, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

.case.31:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3140, i8* align 1 %16, i64 16, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %.case.31, %.case.30, %.case.29, %.case.28, %.case.27, %.case.26, %.case.25, %.case.24, %.case.23, %.case.22, %.case.21, %.case.20, %.case.19, %.case.18, %.case.17, %.case.16, %.case.15, %.case.14, %.case.13, %.case.12, %.case.11, %.case.10, %.case.9, %.case.8, %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0, %dst.addr5.0.012.case.31, %dst.addr5.0.012.case.30, %dst.addr5.0.012.case.29, %dst.addr5.0.012.case.28, %dst.addr5.0.012.case.27, %dst.addr5.0.012.case.26, %dst.addr5.0.012.case.25, %dst.addr5.0.012.case.24, %dst.addr5.0.012.case.23, %dst.addr5.0.012.case.22, %dst.addr5.0.012.case.21, %dst.addr5.0.012.case.20, %dst.addr5.0.012.case.19, %dst.addr5.0.012.case.18, %dst.addr5.0.012.case.17, %dst.addr5.0.012.case.16, %dst.addr5.0.012.case.15, %dst.addr5.0.012.case.14, %dst.addr5.0.012.case.13, %dst.addr5.0.012.case.12, %dst.addr5.0.012.case.11, %dst.addr5.0.012.case.10, %dst.addr5.0.012.case.9, %dst.addr5.0.012.case.8, %dst.addr5.0.012.case.7, %dst.addr5.0.012.case.6, %dst.addr5.0.012.case.5, %dst.addr5.0.012.case.4, %dst.addr5.0.012.case.3, %dst.addr5.0.012.case.2, %dst.addr5.0.012.case.1, %dst.addr5.0.012.case.0, %dst.addr5.010.case.31, %dst.addr5.010.case.30, %dst.addr5.010.case.29, %dst.addr5.010.case.28, %dst.addr5.010.case.27, %dst.addr5.010.case.26, %dst.addr5.010.case.25, %dst.addr5.010.case.24, %dst.addr5.010.case.23, %dst.addr5.010.case.22, %dst.addr5.010.case.21, %dst.addr5.010.case.20, %dst.addr5.010.case.19, %dst.addr5.010.case.18, %dst.addr5.010.case.17, %dst.addr5.010.case.16, %dst.addr5.010.case.15, %dst.addr5.010.case.14, %dst.addr5.010.case.13, %dst.addr5.010.case.12, %dst.addr5.010.case.11, %dst.addr5.010.case.10, %dst.addr5.010.case.9, %dst.addr5.010.case.8, %dst.addr5.010.case.7, %dst.addr5.010.case.6, %dst.addr5.010.case.5, %dst.addr5.010.case.4, %dst.addr5.010.case.3, %dst.addr5.010.case.2, %dst.addr5.010.case.1, %dst.addr5.010.case.0, %dst.addr57.case.31, %dst.addr57.case.30, %dst.addr57.case.29, %dst.addr57.case.28, %dst.addr57.case.27, %dst.addr57.case.26, %dst.addr57.case.25, %dst.addr57.case.24, %dst.addr57.case.23, %dst.addr57.case.22, %dst.addr57.case.21, %dst.addr57.case.20, %dst.addr57.case.19, %dst.addr57.case.18, %dst.addr57.case.17, %dst.addr57.case.16, %dst.addr57.case.15, %dst.addr57.case.14, %dst.addr57.case.13, %dst.addr57.case.12, %dst.addr57.case.11, %dst.addr57.case.10, %dst.addr57.case.9, %dst.addr57.case.8, %dst.addr57.case.7, %dst.addr57.case.6, %dst.addr57.case.5, %dst.addr57.case.4, %dst.addr57.case.3, %dst.addr57.case.2, %dst.addr57.case.1, %dst.addr57.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 10
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: noinline
define internal void @copy_in([32 x [32 x %struct.ap_int]]* "orig.arg.no"="0", [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_0, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_1, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_2, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_3, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_4, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_5, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_6, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_7, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_8, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_9, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_10, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_11, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_12, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_13, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_14, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_15, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_16, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_17, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_18, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_19, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_20, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_21, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_22, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_23, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_24, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_25, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_26, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_27, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_28, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_29, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_30, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_31, [32 x [10 x %struct.ap_int]]* "orig.arg.no"="2", [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_01, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_110, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_211, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_312, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_413, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_514, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_615, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_716, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_817, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_918, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1019, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1120, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1221, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1322, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1423, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1524, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1625, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1726, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1827, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1928, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2029, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2130, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2231, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2332, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2433, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2534, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2635, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2736, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2837, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2938, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_3039, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_3140, %"class.hls::stream"* "orig.arg.no"="4", %"class.hls::stream"* noalias align 512 "orig.arg.no"="5", [10 x %struct.ap_int]* "orig.arg.no"="6", [10 x %struct.ap_int]* noalias align 512 "orig.arg.no"="7") #4 {
entry:
  call void @onebyonecpy_hls.p0a32a32struct.ap_int.11.18([32 x %struct.ap_int]* %_0, [32 x %struct.ap_int]* %_1, [32 x %struct.ap_int]* %_2, [32 x %struct.ap_int]* %_3, [32 x %struct.ap_int]* %_4, [32 x %struct.ap_int]* %_5, [32 x %struct.ap_int]* %_6, [32 x %struct.ap_int]* %_7, [32 x %struct.ap_int]* %_8, [32 x %struct.ap_int]* %_9, [32 x %struct.ap_int]* %_10, [32 x %struct.ap_int]* %_11, [32 x %struct.ap_int]* %_12, [32 x %struct.ap_int]* %_13, [32 x %struct.ap_int]* %_14, [32 x %struct.ap_int]* %_15, [32 x %struct.ap_int]* %_16, [32 x %struct.ap_int]* %_17, [32 x %struct.ap_int]* %_18, [32 x %struct.ap_int]* %_19, [32 x %struct.ap_int]* %_20, [32 x %struct.ap_int]* %_21, [32 x %struct.ap_int]* %_22, [32 x %struct.ap_int]* %_23, [32 x %struct.ap_int]* %_24, [32 x %struct.ap_int]* %_25, [32 x %struct.ap_int]* %_26, [32 x %struct.ap_int]* %_27, [32 x %struct.ap_int]* %_28, [32 x %struct.ap_int]* %_29, [32 x %struct.ap_int]* %_30, [32 x %struct.ap_int]* %_31, [32 x [32 x %struct.ap_int]]* %0)
  call void @onebyonecpy_hls.p0a32a10struct.ap_int.19.26([10 x %struct.ap_int]* %_01, [10 x %struct.ap_int]* %_110, [10 x %struct.ap_int]* %_211, [10 x %struct.ap_int]* %_312, [10 x %struct.ap_int]* %_413, [10 x %struct.ap_int]* %_514, [10 x %struct.ap_int]* %_615, [10 x %struct.ap_int]* %_716, [10 x %struct.ap_int]* %_817, [10 x %struct.ap_int]* %_918, [10 x %struct.ap_int]* %_1019, [10 x %struct.ap_int]* %_1120, [10 x %struct.ap_int]* %_1221, [10 x %struct.ap_int]* %_1322, [10 x %struct.ap_int]* %_1423, [10 x %struct.ap_int]* %_1524, [10 x %struct.ap_int]* %_1625, [10 x %struct.ap_int]* %_1726, [10 x %struct.ap_int]* %_1827, [10 x %struct.ap_int]* %_1928, [10 x %struct.ap_int]* %_2029, [10 x %struct.ap_int]* %_2130, [10 x %struct.ap_int]* %_2231, [10 x %struct.ap_int]* %_2332, [10 x %struct.ap_int]* %_2433, [10 x %struct.ap_int]* %_2534, [10 x %struct.ap_int]* %_2635, [10 x %struct.ap_int]* %_2736, [10 x %struct.ap_int]* %_2837, [10 x %struct.ap_int]* %_2938, [10 x %struct.ap_int]* %_3039, [10 x %struct.ap_int]* %_3140, [32 x [10 x %struct.ap_int]]* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %3, %"class.hls::stream"* %2)
  call fastcc void @onebyonecpy_hls.p0a10struct.ap_int([10 x %struct.ap_int]* align 512 %5, [10 x %struct.ap_int]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* noalias nocapture "orig.arg.no"="0", %struct.ap_int* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ap_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int* %2 to i8*
  %6 = bitcast %struct.ap_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int, %struct.ap_int* %2
  %8 = bitcast %struct.ap_int* %2 to i8*
  %9 = bitcast %struct.ap_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int* %1 to i8*
  %11 = bitcast %struct.ap_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* noalias nocapture "orig.arg.no"="0", %struct.ap_int_base* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* noalias nocapture "orig.arg.no"="0", %struct.ssdm_int* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline
define internal void @onebyonecpy_hls.p0a32a32struct.ap_int.35.42([32 x [32 x %struct.ap_int]]* noalias "orig.arg.no"="0", [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_0, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_1, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_2, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_3, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_4, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_5, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_6, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_7, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_8, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_9, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_10, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_11, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_12, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_13, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_14, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_15, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_16, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_17, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_18, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_19, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_20, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_21, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_22, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_23, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_24, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_25, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_26, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_27, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_28, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_29, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_30, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_31) #3 {
entry:
  %1 = icmp eq [32 x [32 x %struct.ap_int]]* %0, null
  %2 = icmp eq [32 x %struct.ap_int]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %src.addr68_0 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx18
  %src.addr68_1 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx18
  %src.addr68_2 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx18
  %src.addr68_3 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx18
  %src.addr68_4 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx18
  %src.addr68_5 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx18
  %src.addr68_6 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx18
  %src.addr68_7 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx18
  %src.addr68_8 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx18
  %src.addr68_9 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx18
  %src.addr68_10 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx18
  %src.addr68_11 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx18
  %src.addr68_12 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx18
  %src.addr68_13 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx18
  %src.addr68_14 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx18
  %src.addr68_15 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx18
  %src.addr68_16 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx18
  %src.addr68_17 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx18
  %src.addr68_18 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx18
  %src.addr68_19 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx18
  %src.addr68_20 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx18
  %src.addr68_21 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx18
  %src.addr68_22 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx18
  %src.addr68_23 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx18
  %src.addr68_24 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx18
  %src.addr68_25 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx18
  %src.addr68_26 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx18
  %src.addr68_27 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx18
  %src.addr68_28 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx18
  %src.addr68_29 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx18
  %src.addr68_30 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx18
  %src.addr68_31 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx18
  %_01 = bitcast %struct.ap_int* %src.addr68_0 to i8*
  %_110 = bitcast %struct.ap_int* %src.addr68_1 to i8*
  %_211 = bitcast %struct.ap_int* %src.addr68_2 to i8*
  %_312 = bitcast %struct.ap_int* %src.addr68_3 to i8*
  %_413 = bitcast %struct.ap_int* %src.addr68_4 to i8*
  %_514 = bitcast %struct.ap_int* %src.addr68_5 to i8*
  %_615 = bitcast %struct.ap_int* %src.addr68_6 to i8*
  %_716 = bitcast %struct.ap_int* %src.addr68_7 to i8*
  %_817 = bitcast %struct.ap_int* %src.addr68_8 to i8*
  %_918 = bitcast %struct.ap_int* %src.addr68_9 to i8*
  %_1019 = bitcast %struct.ap_int* %src.addr68_10 to i8*
  %_1120 = bitcast %struct.ap_int* %src.addr68_11 to i8*
  %_1221 = bitcast %struct.ap_int* %src.addr68_12 to i8*
  %_1322 = bitcast %struct.ap_int* %src.addr68_13 to i8*
  %_1423 = bitcast %struct.ap_int* %src.addr68_14 to i8*
  %_1524 = bitcast %struct.ap_int* %src.addr68_15 to i8*
  %_1625 = bitcast %struct.ap_int* %src.addr68_16 to i8*
  %_1726 = bitcast %struct.ap_int* %src.addr68_17 to i8*
  %_1827 = bitcast %struct.ap_int* %src.addr68_18 to i8*
  %_1928 = bitcast %struct.ap_int* %src.addr68_19 to i8*
  %_2029 = bitcast %struct.ap_int* %src.addr68_20 to i8*
  %_2130 = bitcast %struct.ap_int* %src.addr68_21 to i8*
  %_2231 = bitcast %struct.ap_int* %src.addr68_22 to i8*
  %_2332 = bitcast %struct.ap_int* %src.addr68_23 to i8*
  %_2433 = bitcast %struct.ap_int* %src.addr68_24 to i8*
  %_2534 = bitcast %struct.ap_int* %src.addr68_25 to i8*
  %_2635 = bitcast %struct.ap_int* %src.addr68_26 to i8*
  %_2736 = bitcast %struct.ap_int* %src.addr68_27 to i8*
  %_2837 = bitcast %struct.ap_int* %src.addr68_28 to i8*
  %_2938 = bitcast %struct.ap_int* %src.addr68_29 to i8*
  %_3039 = bitcast %struct.ap_int* %src.addr68_30 to i8*
  %_3140 = bitcast %struct.ap_int* %src.addr68_31 to i8*
  %src.addr6.09_0 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_1 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_2 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_3 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_4 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_5 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_6 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_7 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_8 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_9 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_10 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_11 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_12 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_13 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_14 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_15 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_16 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_17 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_18 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_19 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_20 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_21 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_22 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_23 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_24 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_25 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_26 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_27 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_28 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_29 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_30 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx18, i32 0
  %src.addr6.09_31 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx18, i32 0
  %_073 = bitcast %struct.ap_int_base* %src.addr6.09_0 to i8*
  %_174 = bitcast %struct.ap_int_base* %src.addr6.09_1 to i8*
  %_275 = bitcast %struct.ap_int_base* %src.addr6.09_2 to i8*
  %_376 = bitcast %struct.ap_int_base* %src.addr6.09_3 to i8*
  %_477 = bitcast %struct.ap_int_base* %src.addr6.09_4 to i8*
  %_578 = bitcast %struct.ap_int_base* %src.addr6.09_5 to i8*
  %_679 = bitcast %struct.ap_int_base* %src.addr6.09_6 to i8*
  %_780 = bitcast %struct.ap_int_base* %src.addr6.09_7 to i8*
  %_881 = bitcast %struct.ap_int_base* %src.addr6.09_8 to i8*
  %_982 = bitcast %struct.ap_int_base* %src.addr6.09_9 to i8*
  %_1083 = bitcast %struct.ap_int_base* %src.addr6.09_10 to i8*
  %_1184 = bitcast %struct.ap_int_base* %src.addr6.09_11 to i8*
  %_1285 = bitcast %struct.ap_int_base* %src.addr6.09_12 to i8*
  %_1386 = bitcast %struct.ap_int_base* %src.addr6.09_13 to i8*
  %_1487 = bitcast %struct.ap_int_base* %src.addr6.09_14 to i8*
  %_1588 = bitcast %struct.ap_int_base* %src.addr6.09_15 to i8*
  %_1689 = bitcast %struct.ap_int_base* %src.addr6.09_16 to i8*
  %_1790 = bitcast %struct.ap_int_base* %src.addr6.09_17 to i8*
  %_1891 = bitcast %struct.ap_int_base* %src.addr6.09_18 to i8*
  %_1992 = bitcast %struct.ap_int_base* %src.addr6.09_19 to i8*
  %_2093 = bitcast %struct.ap_int_base* %src.addr6.09_20 to i8*
  %_2194 = bitcast %struct.ap_int_base* %src.addr6.09_21 to i8*
  %_2295 = bitcast %struct.ap_int_base* %src.addr6.09_22 to i8*
  %_2396 = bitcast %struct.ap_int_base* %src.addr6.09_23 to i8*
  %_2497 = bitcast %struct.ap_int_base* %src.addr6.09_24 to i8*
  %_2598 = bitcast %struct.ap_int_base* %src.addr6.09_25 to i8*
  %_2699 = bitcast %struct.ap_int_base* %src.addr6.09_26 to i8*
  %_27100 = bitcast %struct.ap_int_base* %src.addr6.09_27 to i8*
  %_28101 = bitcast %struct.ap_int_base* %src.addr6.09_28 to i8*
  %_29102 = bitcast %struct.ap_int_base* %src.addr6.09_29 to i8*
  %_30103 = bitcast %struct.ap_int_base* %src.addr6.09_30 to i8*
  %_31104 = bitcast %struct.ap_int_base* %src.addr6.09_31 to i8*
  %src.addr6.0.011_0 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_1 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_2 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_3 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_4 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_5 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_6 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_7 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_8 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_9 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_10 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_11 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_12 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_13 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_14 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_15 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_16 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_17 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_18 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_19 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_20 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_21 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_22 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_23 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_24 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_25 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_26 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_27 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_28 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_29 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_30 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %src.addr6.0.011_31 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx18, i32 0, i32 0
  %_0171 = bitcast %struct.ssdm_int* %src.addr6.0.011_0 to i8*
  %_1172 = bitcast %struct.ssdm_int* %src.addr6.0.011_1 to i8*
  %_2173 = bitcast %struct.ssdm_int* %src.addr6.0.011_2 to i8*
  %_3174 = bitcast %struct.ssdm_int* %src.addr6.0.011_3 to i8*
  %_4175 = bitcast %struct.ssdm_int* %src.addr6.0.011_4 to i8*
  %_5176 = bitcast %struct.ssdm_int* %src.addr6.0.011_5 to i8*
  %_6177 = bitcast %struct.ssdm_int* %src.addr6.0.011_6 to i8*
  %_7178 = bitcast %struct.ssdm_int* %src.addr6.0.011_7 to i8*
  %_8179 = bitcast %struct.ssdm_int* %src.addr6.0.011_8 to i8*
  %_9180 = bitcast %struct.ssdm_int* %src.addr6.0.011_9 to i8*
  %_10181 = bitcast %struct.ssdm_int* %src.addr6.0.011_10 to i8*
  %_11182 = bitcast %struct.ssdm_int* %src.addr6.0.011_11 to i8*
  %_12183 = bitcast %struct.ssdm_int* %src.addr6.0.011_12 to i8*
  %_13184 = bitcast %struct.ssdm_int* %src.addr6.0.011_13 to i8*
  %_14185 = bitcast %struct.ssdm_int* %src.addr6.0.011_14 to i8*
  %_15186 = bitcast %struct.ssdm_int* %src.addr6.0.011_15 to i8*
  %_16187 = bitcast %struct.ssdm_int* %src.addr6.0.011_16 to i8*
  %_17188 = bitcast %struct.ssdm_int* %src.addr6.0.011_17 to i8*
  %_18189 = bitcast %struct.ssdm_int* %src.addr6.0.011_18 to i8*
  %_19190 = bitcast %struct.ssdm_int* %src.addr6.0.011_19 to i8*
  %_20191 = bitcast %struct.ssdm_int* %src.addr6.0.011_20 to i8*
  %_21192 = bitcast %struct.ssdm_int* %src.addr6.0.011_21 to i8*
  %_22193 = bitcast %struct.ssdm_int* %src.addr6.0.011_22 to i8*
  %_23194 = bitcast %struct.ssdm_int* %src.addr6.0.011_23 to i8*
  %_24195 = bitcast %struct.ssdm_int* %src.addr6.0.011_24 to i8*
  %_25196 = bitcast %struct.ssdm_int* %src.addr6.0.011_25 to i8*
  %_26197 = bitcast %struct.ssdm_int* %src.addr6.0.011_26 to i8*
  %_27198 = bitcast %struct.ssdm_int* %src.addr6.0.011_27 to i8*
  %_28199 = bitcast %struct.ssdm_int* %src.addr6.0.011_28 to i8*
  %_29200 = bitcast %struct.ssdm_int* %src.addr6.0.011_29 to i8*
  %_30201 = bitcast %struct.ssdm_int* %src.addr6.0.011_30 to i8*
  %_31202 = bitcast %struct.ssdm_int* %src.addr6.0.011_31 to i8*
  %src.addr6.0.0.013.gep16_0 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_1 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_2 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_3 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_4 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_5 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_6 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_7 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_8 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_9 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_10 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_11 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_12 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_13 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_14 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_15 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_16 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_17 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_18 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_19 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_20 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_21 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_22 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_23 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_24 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_25 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_26 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_27 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_28 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_29 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_30 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_31 = getelementptr [32 x %struct.ap_int], [32 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0
  %_0269 = bitcast i128* %src.addr6.0.0.013.gep16_0 to i8*
  %_1270 = bitcast i128* %src.addr6.0.0.013.gep16_1 to i8*
  %_2271 = bitcast i128* %src.addr6.0.0.013.gep16_2 to i8*
  %_3272 = bitcast i128* %src.addr6.0.0.013.gep16_3 to i8*
  %_4273 = bitcast i128* %src.addr6.0.0.013.gep16_4 to i8*
  %_5274 = bitcast i128* %src.addr6.0.0.013.gep16_5 to i8*
  %_6275 = bitcast i128* %src.addr6.0.0.013.gep16_6 to i8*
  %_7276 = bitcast i128* %src.addr6.0.0.013.gep16_7 to i8*
  %_8277 = bitcast i128* %src.addr6.0.0.013.gep16_8 to i8*
  %_9278 = bitcast i128* %src.addr6.0.0.013.gep16_9 to i8*
  %_10279 = bitcast i128* %src.addr6.0.0.013.gep16_10 to i8*
  %_11280 = bitcast i128* %src.addr6.0.0.013.gep16_11 to i8*
  %_12281 = bitcast i128* %src.addr6.0.0.013.gep16_12 to i8*
  %_13282 = bitcast i128* %src.addr6.0.0.013.gep16_13 to i8*
  %_14283 = bitcast i128* %src.addr6.0.0.013.gep16_14 to i8*
  %_15284 = bitcast i128* %src.addr6.0.0.013.gep16_15 to i8*
  %_16285 = bitcast i128* %src.addr6.0.0.013.gep16_16 to i8*
  %_17286 = bitcast i128* %src.addr6.0.0.013.gep16_17 to i8*
  %_18287 = bitcast i128* %src.addr6.0.0.013.gep16_18 to i8*
  %_19288 = bitcast i128* %src.addr6.0.0.013.gep16_19 to i8*
  %_20289 = bitcast i128* %src.addr6.0.0.013.gep16_20 to i8*
  %_21290 = bitcast i128* %src.addr6.0.0.013.gep16_21 to i8*
  %_22291 = bitcast i128* %src.addr6.0.0.013.gep16_22 to i8*
  %_23292 = bitcast i128* %src.addr6.0.0.013.gep16_23 to i8*
  %_24293 = bitcast i128* %src.addr6.0.0.013.gep16_24 to i8*
  %_25294 = bitcast i128* %src.addr6.0.0.013.gep16_25 to i8*
  %_26295 = bitcast i128* %src.addr6.0.0.013.gep16_26 to i8*
  %_27296 = bitcast i128* %src.addr6.0.0.013.gep16_27 to i8*
  %_28297 = bitcast i128* %src.addr6.0.0.013.gep16_28 to i8*
  %_29298 = bitcast i128* %src.addr6.0.0.013.gep16_29 to i8*
  %_30299 = bitcast i128* %src.addr6.0.0.013.gep16_30 to i8*
  %_31300 = bitcast i128* %src.addr6.0.0.013.gep16_31 to i8*
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop.head1, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop.head1 ]
  %dst.addr57 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  switch i64 %for.loop.idx317, label %.default [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.case.7
    i64 8, label %.case.8
    i64 9, label %.case.9
    i64 10, label %.case.10
    i64 11, label %.case.11
    i64 12, label %.case.12
    i64 13, label %.case.13
    i64 14, label %.case.14
    i64 15, label %.case.15
    i64 16, label %.case.16
    i64 17, label %.case.17
    i64 18, label %.case.18
    i64 19, label %.case.19
    i64 20, label %.case.20
    i64 21, label %.case.21
    i64 22, label %.case.22
    i64 23, label %.case.23
    i64 24, label %.case.24
    i64 25, label %.case.25
    i64 26, label %.case.26
    i64 27, label %.case.27
    i64 28, label %.case.28
    i64 29, label %.case.29
    i64 30, label %.case.30
    i64 31, label %.exit
  ]

.default:                                         ; preds = %for.loop2
  unreachable

.case.0:                                          ; preds = %for.loop2
  %_041 = call i1 @fpga_fifo_exist_16(i8* %_01)
  br i1 %_041, label %src.addr68.case.0, label %.case.0107

.case.1:                                          ; preds = %for.loop2
  %_142 = call i1 @fpga_fifo_exist_16(i8* %_110)
  br i1 %_142, label %src.addr68.case.1, label %.case.1108

.case.2:                                          ; preds = %for.loop2
  %_243 = call i1 @fpga_fifo_exist_16(i8* %_211)
  br i1 %_243, label %src.addr68.case.2, label %.case.2109

.case.3:                                          ; preds = %for.loop2
  %_344 = call i1 @fpga_fifo_exist_16(i8* %_312)
  br i1 %_344, label %src.addr68.case.3, label %.case.3110

.case.4:                                          ; preds = %for.loop2
  %_445 = call i1 @fpga_fifo_exist_16(i8* %_413)
  br i1 %_445, label %src.addr68.case.4, label %.case.4111

.case.5:                                          ; preds = %for.loop2
  %_546 = call i1 @fpga_fifo_exist_16(i8* %_514)
  br i1 %_546, label %src.addr68.case.5, label %.case.5112

.case.6:                                          ; preds = %for.loop2
  %_647 = call i1 @fpga_fifo_exist_16(i8* %_615)
  br i1 %_647, label %src.addr68.case.6, label %.case.6113

.case.7:                                          ; preds = %for.loop2
  %_748 = call i1 @fpga_fifo_exist_16(i8* %_716)
  br i1 %_748, label %src.addr68.case.7, label %.case.7114

.case.8:                                          ; preds = %for.loop2
  %_849 = call i1 @fpga_fifo_exist_16(i8* %_817)
  br i1 %_849, label %src.addr68.case.8, label %.case.8115

.case.9:                                          ; preds = %for.loop2
  %_950 = call i1 @fpga_fifo_exist_16(i8* %_918)
  br i1 %_950, label %src.addr68.case.9, label %.case.9116

.case.10:                                         ; preds = %for.loop2
  %_1051 = call i1 @fpga_fifo_exist_16(i8* %_1019)
  br i1 %_1051, label %src.addr68.case.10, label %.case.10117

.case.11:                                         ; preds = %for.loop2
  %_1152 = call i1 @fpga_fifo_exist_16(i8* %_1120)
  br i1 %_1152, label %src.addr68.case.11, label %.case.11118

.case.12:                                         ; preds = %for.loop2
  %_1253 = call i1 @fpga_fifo_exist_16(i8* %_1221)
  br i1 %_1253, label %src.addr68.case.12, label %.case.12119

.case.13:                                         ; preds = %for.loop2
  %_1354 = call i1 @fpga_fifo_exist_16(i8* %_1322)
  br i1 %_1354, label %src.addr68.case.13, label %.case.13120

.case.14:                                         ; preds = %for.loop2
  %_1455 = call i1 @fpga_fifo_exist_16(i8* %_1423)
  br i1 %_1455, label %src.addr68.case.14, label %.case.14121

.case.15:                                         ; preds = %for.loop2
  %_1556 = call i1 @fpga_fifo_exist_16(i8* %_1524)
  br i1 %_1556, label %src.addr68.case.15, label %.case.15122

.case.16:                                         ; preds = %for.loop2
  %_1657 = call i1 @fpga_fifo_exist_16(i8* %_1625)
  br i1 %_1657, label %src.addr68.case.16, label %.case.16123

.case.17:                                         ; preds = %for.loop2
  %_1758 = call i1 @fpga_fifo_exist_16(i8* %_1726)
  br i1 %_1758, label %src.addr68.case.17, label %.case.17124

.case.18:                                         ; preds = %for.loop2
  %_1859 = call i1 @fpga_fifo_exist_16(i8* %_1827)
  br i1 %_1859, label %src.addr68.case.18, label %.case.18125

.case.19:                                         ; preds = %for.loop2
  %_1960 = call i1 @fpga_fifo_exist_16(i8* %_1928)
  br i1 %_1960, label %src.addr68.case.19, label %.case.19126

.case.20:                                         ; preds = %for.loop2
  %_2061 = call i1 @fpga_fifo_exist_16(i8* %_2029)
  br i1 %_2061, label %src.addr68.case.20, label %.case.20127

.case.21:                                         ; preds = %for.loop2
  %_2162 = call i1 @fpga_fifo_exist_16(i8* %_2130)
  br i1 %_2162, label %src.addr68.case.21, label %.case.21128

.case.22:                                         ; preds = %for.loop2
  %_2263 = call i1 @fpga_fifo_exist_16(i8* %_2231)
  br i1 %_2263, label %src.addr68.case.22, label %.case.22129

.case.23:                                         ; preds = %for.loop2
  %_2364 = call i1 @fpga_fifo_exist_16(i8* %_2332)
  br i1 %_2364, label %src.addr68.case.23, label %.case.23130

.case.24:                                         ; preds = %for.loop2
  %_2465 = call i1 @fpga_fifo_exist_16(i8* %_2433)
  br i1 %_2465, label %src.addr68.case.24, label %.case.24131

.case.25:                                         ; preds = %for.loop2
  %_2566 = call i1 @fpga_fifo_exist_16(i8* %_2534)
  br i1 %_2566, label %src.addr68.case.25, label %.case.25132

.case.26:                                         ; preds = %for.loop2
  %_2667 = call i1 @fpga_fifo_exist_16(i8* %_2635)
  br i1 %_2667, label %src.addr68.case.26, label %.case.26133

.case.27:                                         ; preds = %for.loop2
  %_2768 = call i1 @fpga_fifo_exist_16(i8* %_2736)
  br i1 %_2768, label %src.addr68.case.27, label %.case.27134

.case.28:                                         ; preds = %for.loop2
  %_2869 = call i1 @fpga_fifo_exist_16(i8* %_2837)
  br i1 %_2869, label %src.addr68.case.28, label %.case.28135

.case.29:                                         ; preds = %for.loop2
  %_2970 = call i1 @fpga_fifo_exist_16(i8* %_2938)
  br i1 %_2970, label %src.addr68.case.29, label %.case.29136

.case.30:                                         ; preds = %for.loop2
  %_3071 = call i1 @fpga_fifo_exist_16(i8* %_3039)
  br i1 %_3071, label %src.addr68.case.30, label %.case.30137

.exit:                                            ; preds = %for.loop2
  %_3172 = call i1 @fpga_fifo_exist_16(i8* %_3140)
  br i1 %_3172, label %src.addr68.case.31, label %.exit106

src.addr68.case.0:                                ; preds = %.case.0
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_0)
  br label %for.loop.head1

src.addr68.case.1:                                ; preds = %.case.1
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_1)
  br label %for.loop.head1

src.addr68.case.2:                                ; preds = %.case.2
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_2)
  br label %for.loop.head1

src.addr68.case.3:                                ; preds = %.case.3
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_3)
  br label %for.loop.head1

src.addr68.case.4:                                ; preds = %.case.4
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_4)
  br label %for.loop.head1

src.addr68.case.5:                                ; preds = %.case.5
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_5)
  br label %for.loop.head1

src.addr68.case.6:                                ; preds = %.case.6
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_6)
  br label %for.loop.head1

src.addr68.case.7:                                ; preds = %.case.7
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_7)
  br label %for.loop.head1

src.addr68.case.8:                                ; preds = %.case.8
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_8)
  br label %for.loop.head1

src.addr68.case.9:                                ; preds = %.case.9
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_9)
  br label %for.loop.head1

src.addr68.case.10:                               ; preds = %.case.10
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_10)
  br label %for.loop.head1

src.addr68.case.11:                               ; preds = %.case.11
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_11)
  br label %for.loop.head1

src.addr68.case.12:                               ; preds = %.case.12
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_12)
  br label %for.loop.head1

src.addr68.case.13:                               ; preds = %.case.13
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_13)
  br label %for.loop.head1

src.addr68.case.14:                               ; preds = %.case.14
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_14)
  br label %for.loop.head1

src.addr68.case.15:                               ; preds = %.case.15
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_15)
  br label %for.loop.head1

src.addr68.case.16:                               ; preds = %.case.16
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_16)
  br label %for.loop.head1

src.addr68.case.17:                               ; preds = %.case.17
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_17)
  br label %for.loop.head1

src.addr68.case.18:                               ; preds = %.case.18
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_18)
  br label %for.loop.head1

src.addr68.case.19:                               ; preds = %.case.19
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_19)
  br label %for.loop.head1

src.addr68.case.20:                               ; preds = %.case.20
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_20)
  br label %for.loop.head1

src.addr68.case.21:                               ; preds = %.case.21
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_21)
  br label %for.loop.head1

src.addr68.case.22:                               ; preds = %.case.22
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_22)
  br label %for.loop.head1

src.addr68.case.23:                               ; preds = %.case.23
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_23)
  br label %for.loop.head1

src.addr68.case.24:                               ; preds = %.case.24
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_24)
  br label %for.loop.head1

src.addr68.case.25:                               ; preds = %.case.25
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_25)
  br label %for.loop.head1

src.addr68.case.26:                               ; preds = %.case.26
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_26)
  br label %for.loop.head1

src.addr68.case.27:                               ; preds = %.case.27
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_27)
  br label %for.loop.head1

src.addr68.case.28:                               ; preds = %.case.28
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_28)
  br label %for.loop.head1

src.addr68.case.29:                               ; preds = %.case.29
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_29)
  br label %for.loop.head1

src.addr68.case.30:                               ; preds = %.case.30
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_30)
  br label %for.loop.head1

src.addr68.case.31:                               ; preds = %.exit
  call void @streamcpy_hls.p0struct.ap_int.36.37(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_31)
  br label %for.loop.head1

.case.0107:                                       ; preds = %.case.0
  %dst.addr5.01032 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 0, i32 0
  %_0139 = call i1 @fpga_fifo_exist_16(i8* %_073)
  br i1 %_0139, label %src.addr6.09.case.0, label %.case.0205

.case.1108:                                       ; preds = %.case.1
  %dst.addr5.01036 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 1, i32 0
  %_1140 = call i1 @fpga_fifo_exist_16(i8* %_174)
  br i1 %_1140, label %src.addr6.09.case.1, label %.case.1206

.case.2109:                                       ; preds = %.case.2
  %dst.addr5.01039 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 2, i32 0
  %_2141 = call i1 @fpga_fifo_exist_16(i8* %_275)
  br i1 %_2141, label %src.addr6.09.case.2, label %.case.2207

.case.3110:                                       ; preds = %.case.3
  %dst.addr5.01042 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 3, i32 0
  %_3142 = call i1 @fpga_fifo_exist_16(i8* %_376)
  br i1 %_3142, label %src.addr6.09.case.3, label %.case.3208

.case.4111:                                       ; preds = %.case.4
  %dst.addr5.01045 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 4, i32 0
  %_4143 = call i1 @fpga_fifo_exist_16(i8* %_477)
  br i1 %_4143, label %src.addr6.09.case.4, label %.case.4209

.case.5112:                                       ; preds = %.case.5
  %dst.addr5.01048 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 5, i32 0
  %_5144 = call i1 @fpga_fifo_exist_16(i8* %_578)
  br i1 %_5144, label %src.addr6.09.case.5, label %.case.5210

.case.6113:                                       ; preds = %.case.6
  %dst.addr5.01051 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 6, i32 0
  %_6145 = call i1 @fpga_fifo_exist_16(i8* %_679)
  br i1 %_6145, label %src.addr6.09.case.6, label %.case.6211

.case.7114:                                       ; preds = %.case.7
  %dst.addr5.01054 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 7, i32 0
  %_7146 = call i1 @fpga_fifo_exist_16(i8* %_780)
  br i1 %_7146, label %src.addr6.09.case.7, label %.case.7212

.case.8115:                                       ; preds = %.case.8
  %dst.addr5.01057 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 8, i32 0
  %_8147 = call i1 @fpga_fifo_exist_16(i8* %_881)
  br i1 %_8147, label %src.addr6.09.case.8, label %.case.8213

.case.9116:                                       ; preds = %.case.9
  %dst.addr5.01060 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 9, i32 0
  %_9148 = call i1 @fpga_fifo_exist_16(i8* %_982)
  br i1 %_9148, label %src.addr6.09.case.9, label %.case.9214

.case.10117:                                      ; preds = %.case.10
  %dst.addr5.01063 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 10, i32 0
  %_10149 = call i1 @fpga_fifo_exist_16(i8* %_1083)
  br i1 %_10149, label %src.addr6.09.case.10, label %.case.10215

.case.11118:                                      ; preds = %.case.11
  %dst.addr5.01066 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 11, i32 0
  %_11150 = call i1 @fpga_fifo_exist_16(i8* %_1184)
  br i1 %_11150, label %src.addr6.09.case.11, label %.case.11216

.case.12119:                                      ; preds = %.case.12
  %dst.addr5.01069 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 12, i32 0
  %_12151 = call i1 @fpga_fifo_exist_16(i8* %_1285)
  br i1 %_12151, label %src.addr6.09.case.12, label %.case.12217

.case.13120:                                      ; preds = %.case.13
  %dst.addr5.01072 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 13, i32 0
  %_13152 = call i1 @fpga_fifo_exist_16(i8* %_1386)
  br i1 %_13152, label %src.addr6.09.case.13, label %.case.13218

.case.14121:                                      ; preds = %.case.14
  %dst.addr5.01075 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 14, i32 0
  %_14153 = call i1 @fpga_fifo_exist_16(i8* %_1487)
  br i1 %_14153, label %src.addr6.09.case.14, label %.case.14219

.case.15122:                                      ; preds = %.case.15
  %dst.addr5.01078 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 15, i32 0
  %_15154 = call i1 @fpga_fifo_exist_16(i8* %_1588)
  br i1 %_15154, label %src.addr6.09.case.15, label %.case.15220

.case.16123:                                      ; preds = %.case.16
  %dst.addr5.01081 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 16, i32 0
  %_16155 = call i1 @fpga_fifo_exist_16(i8* %_1689)
  br i1 %_16155, label %src.addr6.09.case.16, label %.case.16221

.case.17124:                                      ; preds = %.case.17
  %dst.addr5.01084 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 17, i32 0
  %_17156 = call i1 @fpga_fifo_exist_16(i8* %_1790)
  br i1 %_17156, label %src.addr6.09.case.17, label %.case.17222

.case.18125:                                      ; preds = %.case.18
  %dst.addr5.01087 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 18, i32 0
  %_18157 = call i1 @fpga_fifo_exist_16(i8* %_1891)
  br i1 %_18157, label %src.addr6.09.case.18, label %.case.18223

.case.19126:                                      ; preds = %.case.19
  %dst.addr5.01090 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 19, i32 0
  %_19158 = call i1 @fpga_fifo_exist_16(i8* %_1992)
  br i1 %_19158, label %src.addr6.09.case.19, label %.case.19224

.case.20127:                                      ; preds = %.case.20
  %dst.addr5.01093 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 20, i32 0
  %_20159 = call i1 @fpga_fifo_exist_16(i8* %_2093)
  br i1 %_20159, label %src.addr6.09.case.20, label %.case.20225

.case.21128:                                      ; preds = %.case.21
  %dst.addr5.01096 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 21, i32 0
  %_21160 = call i1 @fpga_fifo_exist_16(i8* %_2194)
  br i1 %_21160, label %src.addr6.09.case.21, label %.case.21226

.case.22129:                                      ; preds = %.case.22
  %dst.addr5.01099 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 22, i32 0
  %_22161 = call i1 @fpga_fifo_exist_16(i8* %_2295)
  br i1 %_22161, label %src.addr6.09.case.22, label %.case.22227

.case.23130:                                      ; preds = %.case.23
  %dst.addr5.010102 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 23, i32 0
  %_23162 = call i1 @fpga_fifo_exist_16(i8* %_2396)
  br i1 %_23162, label %src.addr6.09.case.23, label %.case.23228

.case.24131:                                      ; preds = %.case.24
  %dst.addr5.010105 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 24, i32 0
  %_24163 = call i1 @fpga_fifo_exist_16(i8* %_2497)
  br i1 %_24163, label %src.addr6.09.case.24, label %.case.24229

.case.25132:                                      ; preds = %.case.25
  %dst.addr5.010108 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 25, i32 0
  %_25164 = call i1 @fpga_fifo_exist_16(i8* %_2598)
  br i1 %_25164, label %src.addr6.09.case.25, label %.case.25230

.case.26133:                                      ; preds = %.case.26
  %dst.addr5.010111 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 26, i32 0
  %_26165 = call i1 @fpga_fifo_exist_16(i8* %_2699)
  br i1 %_26165, label %src.addr6.09.case.26, label %.case.26231

.case.27134:                                      ; preds = %.case.27
  %dst.addr5.010114 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 27, i32 0
  %_27166 = call i1 @fpga_fifo_exist_16(i8* %_27100)
  br i1 %_27166, label %src.addr6.09.case.27, label %.case.27232

.case.28135:                                      ; preds = %.case.28
  %dst.addr5.010117 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 28, i32 0
  %_28167 = call i1 @fpga_fifo_exist_16(i8* %_28101)
  br i1 %_28167, label %src.addr6.09.case.28, label %.case.28233

.case.29136:                                      ; preds = %.case.29
  %dst.addr5.010120 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 29, i32 0
  %_29168 = call i1 @fpga_fifo_exist_16(i8* %_29102)
  br i1 %_29168, label %src.addr6.09.case.29, label %.case.29234

.case.30137:                                      ; preds = %.case.30
  %dst.addr5.010123 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 30, i32 0
  %_30169 = call i1 @fpga_fifo_exist_16(i8* %_30103)
  br i1 %_30169, label %src.addr6.09.case.30, label %.case.30235

.exit106:                                         ; preds = %.exit
  %dst.addr5.010 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 31, i32 0
  %_31170 = call i1 @fpga_fifo_exist_16(i8* %_31104)
  br i1 %_31170, label %src.addr6.09.case.31, label %.exit204

src.addr6.09.case.0:                              ; preds = %.case.0107
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01032, %struct.ap_int_base* %src.addr6.09_0)
  br label %for.loop.head1

src.addr6.09.case.1:                              ; preds = %.case.1108
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01036, %struct.ap_int_base* %src.addr6.09_1)
  br label %for.loop.head1

src.addr6.09.case.2:                              ; preds = %.case.2109
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01039, %struct.ap_int_base* %src.addr6.09_2)
  br label %for.loop.head1

src.addr6.09.case.3:                              ; preds = %.case.3110
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01042, %struct.ap_int_base* %src.addr6.09_3)
  br label %for.loop.head1

src.addr6.09.case.4:                              ; preds = %.case.4111
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01045, %struct.ap_int_base* %src.addr6.09_4)
  br label %for.loop.head1

src.addr6.09.case.5:                              ; preds = %.case.5112
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01048, %struct.ap_int_base* %src.addr6.09_5)
  br label %for.loop.head1

src.addr6.09.case.6:                              ; preds = %.case.6113
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01051, %struct.ap_int_base* %src.addr6.09_6)
  br label %for.loop.head1

src.addr6.09.case.7:                              ; preds = %.case.7114
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01054, %struct.ap_int_base* %src.addr6.09_7)
  br label %for.loop.head1

src.addr6.09.case.8:                              ; preds = %.case.8115
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01057, %struct.ap_int_base* %src.addr6.09_8)
  br label %for.loop.head1

src.addr6.09.case.9:                              ; preds = %.case.9116
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01060, %struct.ap_int_base* %src.addr6.09_9)
  br label %for.loop.head1

src.addr6.09.case.10:                             ; preds = %.case.10117
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01063, %struct.ap_int_base* %src.addr6.09_10)
  br label %for.loop.head1

src.addr6.09.case.11:                             ; preds = %.case.11118
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01066, %struct.ap_int_base* %src.addr6.09_11)
  br label %for.loop.head1

src.addr6.09.case.12:                             ; preds = %.case.12119
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01069, %struct.ap_int_base* %src.addr6.09_12)
  br label %for.loop.head1

src.addr6.09.case.13:                             ; preds = %.case.13120
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01072, %struct.ap_int_base* %src.addr6.09_13)
  br label %for.loop.head1

src.addr6.09.case.14:                             ; preds = %.case.14121
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01075, %struct.ap_int_base* %src.addr6.09_14)
  br label %for.loop.head1

src.addr6.09.case.15:                             ; preds = %.case.15122
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01078, %struct.ap_int_base* %src.addr6.09_15)
  br label %for.loop.head1

src.addr6.09.case.16:                             ; preds = %.case.16123
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01081, %struct.ap_int_base* %src.addr6.09_16)
  br label %for.loop.head1

src.addr6.09.case.17:                             ; preds = %.case.17124
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01084, %struct.ap_int_base* %src.addr6.09_17)
  br label %for.loop.head1

src.addr6.09.case.18:                             ; preds = %.case.18125
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01087, %struct.ap_int_base* %src.addr6.09_18)
  br label %for.loop.head1

src.addr6.09.case.19:                             ; preds = %.case.19126
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01090, %struct.ap_int_base* %src.addr6.09_19)
  br label %for.loop.head1

src.addr6.09.case.20:                             ; preds = %.case.20127
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01093, %struct.ap_int_base* %src.addr6.09_20)
  br label %for.loop.head1

src.addr6.09.case.21:                             ; preds = %.case.21128
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01096, %struct.ap_int_base* %src.addr6.09_21)
  br label %for.loop.head1

src.addr6.09.case.22:                             ; preds = %.case.22129
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.01099, %struct.ap_int_base* %src.addr6.09_22)
  br label %for.loop.head1

src.addr6.09.case.23:                             ; preds = %.case.23130
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.010102, %struct.ap_int_base* %src.addr6.09_23)
  br label %for.loop.head1

src.addr6.09.case.24:                             ; preds = %.case.24131
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.010105, %struct.ap_int_base* %src.addr6.09_24)
  br label %for.loop.head1

src.addr6.09.case.25:                             ; preds = %.case.25132
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.010108, %struct.ap_int_base* %src.addr6.09_25)
  br label %for.loop.head1

src.addr6.09.case.26:                             ; preds = %.case.26133
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.010111, %struct.ap_int_base* %src.addr6.09_26)
  br label %for.loop.head1

src.addr6.09.case.27:                             ; preds = %.case.27134
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.010114, %struct.ap_int_base* %src.addr6.09_27)
  br label %for.loop.head1

src.addr6.09.case.28:                             ; preds = %.case.28135
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.010117, %struct.ap_int_base* %src.addr6.09_28)
  br label %for.loop.head1

src.addr6.09.case.29:                             ; preds = %.case.29136
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.010120, %struct.ap_int_base* %src.addr6.09_29)
  br label %for.loop.head1

src.addr6.09.case.30:                             ; preds = %.case.30137
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.010123, %struct.ap_int_base* %src.addr6.09_30)
  br label %for.loop.head1

src.addr6.09.case.31:                             ; preds = %.exit106
  call void @streamcpy_hls.p0struct.ap_int_base.38.39(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_31)
  br label %for.loop.head1

.case.0205:                                       ; preds = %.case.0107
  %dst.addr5.0.012189 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 0, i32 0, i32 0
  %_0237 = call i1 @fpga_fifo_exist_16(i8* %_0171)
  br i1 %_0237, label %src.addr6.0.011.case.0, label %.case.0303

.case.1206:                                       ; preds = %.case.1108
  %dst.addr5.0.012193 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 1, i32 0, i32 0
  %_1238 = call i1 @fpga_fifo_exist_16(i8* %_1172)
  br i1 %_1238, label %src.addr6.0.011.case.1, label %.case.1304

.case.2207:                                       ; preds = %.case.2109
  %dst.addr5.0.012196 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 2, i32 0, i32 0
  %_2239 = call i1 @fpga_fifo_exist_16(i8* %_2173)
  br i1 %_2239, label %src.addr6.0.011.case.2, label %.case.2305

.case.3208:                                       ; preds = %.case.3110
  %dst.addr5.0.012199 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 3, i32 0, i32 0
  %_3240 = call i1 @fpga_fifo_exist_16(i8* %_3174)
  br i1 %_3240, label %src.addr6.0.011.case.3, label %.case.3306

.case.4209:                                       ; preds = %.case.4111
  %dst.addr5.0.012202 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 4, i32 0, i32 0
  %_4241 = call i1 @fpga_fifo_exist_16(i8* %_4175)
  br i1 %_4241, label %src.addr6.0.011.case.4, label %.case.4307

.case.5210:                                       ; preds = %.case.5112
  %dst.addr5.0.012205 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 5, i32 0, i32 0
  %_5242 = call i1 @fpga_fifo_exist_16(i8* %_5176)
  br i1 %_5242, label %src.addr6.0.011.case.5, label %.case.5308

.case.6211:                                       ; preds = %.case.6113
  %dst.addr5.0.012208 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 6, i32 0, i32 0
  %_6243 = call i1 @fpga_fifo_exist_16(i8* %_6177)
  br i1 %_6243, label %src.addr6.0.011.case.6, label %.case.6309

.case.7212:                                       ; preds = %.case.7114
  %dst.addr5.0.012211 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 7, i32 0, i32 0
  %_7244 = call i1 @fpga_fifo_exist_16(i8* %_7178)
  br i1 %_7244, label %src.addr6.0.011.case.7, label %.case.7310

.case.8213:                                       ; preds = %.case.8115
  %dst.addr5.0.012214 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 8, i32 0, i32 0
  %_8245 = call i1 @fpga_fifo_exist_16(i8* %_8179)
  br i1 %_8245, label %src.addr6.0.011.case.8, label %.case.8311

.case.9214:                                       ; preds = %.case.9116
  %dst.addr5.0.012217 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 9, i32 0, i32 0
  %_9246 = call i1 @fpga_fifo_exist_16(i8* %_9180)
  br i1 %_9246, label %src.addr6.0.011.case.9, label %.case.9312

.case.10215:                                      ; preds = %.case.10117
  %dst.addr5.0.012220 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 10, i32 0, i32 0
  %_10247 = call i1 @fpga_fifo_exist_16(i8* %_10181)
  br i1 %_10247, label %src.addr6.0.011.case.10, label %.case.10313

.case.11216:                                      ; preds = %.case.11118
  %dst.addr5.0.012223 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 11, i32 0, i32 0
  %_11248 = call i1 @fpga_fifo_exist_16(i8* %_11182)
  br i1 %_11248, label %src.addr6.0.011.case.11, label %.case.11314

.case.12217:                                      ; preds = %.case.12119
  %dst.addr5.0.012226 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 12, i32 0, i32 0
  %_12249 = call i1 @fpga_fifo_exist_16(i8* %_12183)
  br i1 %_12249, label %src.addr6.0.011.case.12, label %.case.12315

.case.13218:                                      ; preds = %.case.13120
  %dst.addr5.0.012229 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 13, i32 0, i32 0
  %_13250 = call i1 @fpga_fifo_exist_16(i8* %_13184)
  br i1 %_13250, label %src.addr6.0.011.case.13, label %.case.13316

.case.14219:                                      ; preds = %.case.14121
  %dst.addr5.0.012232 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 14, i32 0, i32 0
  %_14251 = call i1 @fpga_fifo_exist_16(i8* %_14185)
  br i1 %_14251, label %src.addr6.0.011.case.14, label %.case.14317

.case.15220:                                      ; preds = %.case.15122
  %dst.addr5.0.012235 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 15, i32 0, i32 0
  %_15252 = call i1 @fpga_fifo_exist_16(i8* %_15186)
  br i1 %_15252, label %src.addr6.0.011.case.15, label %.case.15318

.case.16221:                                      ; preds = %.case.16123
  %dst.addr5.0.012238 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 16, i32 0, i32 0
  %_16253 = call i1 @fpga_fifo_exist_16(i8* %_16187)
  br i1 %_16253, label %src.addr6.0.011.case.16, label %.case.16319

.case.17222:                                      ; preds = %.case.17124
  %dst.addr5.0.012241 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 17, i32 0, i32 0
  %_17254 = call i1 @fpga_fifo_exist_16(i8* %_17188)
  br i1 %_17254, label %src.addr6.0.011.case.17, label %.case.17320

.case.18223:                                      ; preds = %.case.18125
  %dst.addr5.0.012244 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 18, i32 0, i32 0
  %_18255 = call i1 @fpga_fifo_exist_16(i8* %_18189)
  br i1 %_18255, label %src.addr6.0.011.case.18, label %.case.18321

.case.19224:                                      ; preds = %.case.19126
  %dst.addr5.0.012247 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 19, i32 0, i32 0
  %_19256 = call i1 @fpga_fifo_exist_16(i8* %_19190)
  br i1 %_19256, label %src.addr6.0.011.case.19, label %.case.19322

.case.20225:                                      ; preds = %.case.20127
  %dst.addr5.0.012250 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 20, i32 0, i32 0
  %_20257 = call i1 @fpga_fifo_exist_16(i8* %_20191)
  br i1 %_20257, label %src.addr6.0.011.case.20, label %.case.20323

.case.21226:                                      ; preds = %.case.21128
  %dst.addr5.0.012253 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 21, i32 0, i32 0
  %_21258 = call i1 @fpga_fifo_exist_16(i8* %_21192)
  br i1 %_21258, label %src.addr6.0.011.case.21, label %.case.21324

.case.22227:                                      ; preds = %.case.22129
  %dst.addr5.0.012256 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 22, i32 0, i32 0
  %_22259 = call i1 @fpga_fifo_exist_16(i8* %_22193)
  br i1 %_22259, label %src.addr6.0.011.case.22, label %.case.22325

.case.23228:                                      ; preds = %.case.23130
  %dst.addr5.0.012259 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 23, i32 0, i32 0
  %_23260 = call i1 @fpga_fifo_exist_16(i8* %_23194)
  br i1 %_23260, label %src.addr6.0.011.case.23, label %.case.23326

.case.24229:                                      ; preds = %.case.24131
  %dst.addr5.0.012262 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 24, i32 0, i32 0
  %_24261 = call i1 @fpga_fifo_exist_16(i8* %_24195)
  br i1 %_24261, label %src.addr6.0.011.case.24, label %.case.24327

.case.25230:                                      ; preds = %.case.25132
  %dst.addr5.0.012265 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 25, i32 0, i32 0
  %_25262 = call i1 @fpga_fifo_exist_16(i8* %_25196)
  br i1 %_25262, label %src.addr6.0.011.case.25, label %.case.25328

.case.26231:                                      ; preds = %.case.26133
  %dst.addr5.0.012268 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 26, i32 0, i32 0
  %_26263 = call i1 @fpga_fifo_exist_16(i8* %_26197)
  br i1 %_26263, label %src.addr6.0.011.case.26, label %.case.26329

.case.27232:                                      ; preds = %.case.27134
  %dst.addr5.0.012271 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 27, i32 0, i32 0
  %_27264 = call i1 @fpga_fifo_exist_16(i8* %_27198)
  br i1 %_27264, label %src.addr6.0.011.case.27, label %.case.27330

.case.28233:                                      ; preds = %.case.28135
  %dst.addr5.0.012274 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 28, i32 0, i32 0
  %_28265 = call i1 @fpga_fifo_exist_16(i8* %_28199)
  br i1 %_28265, label %src.addr6.0.011.case.28, label %.case.28331

.case.29234:                                      ; preds = %.case.29136
  %dst.addr5.0.012277 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 29, i32 0, i32 0
  %_29266 = call i1 @fpga_fifo_exist_16(i8* %_29200)
  br i1 %_29266, label %src.addr6.0.011.case.29, label %.case.29332

.case.30235:                                      ; preds = %.case.30137
  %dst.addr5.0.012280 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 30, i32 0, i32 0
  %_30267 = call i1 @fpga_fifo_exist_16(i8* %_30201)
  br i1 %_30267, label %src.addr6.0.011.case.30, label %.case.30333

.exit204:                                         ; preds = %.exit106
  %dst.addr5.0.012 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 31, i32 0, i32 0
  %_31268 = call i1 @fpga_fifo_exist_16(i8* %_31202)
  br i1 %_31268, label %src.addr6.0.011.case.31, label %.case.31334

src.addr6.0.011.case.0:                           ; preds = %.case.0205
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012189, %struct.ssdm_int* %src.addr6.0.011_0)
  br label %for.loop.head1

src.addr6.0.011.case.1:                           ; preds = %.case.1206
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012193, %struct.ssdm_int* %src.addr6.0.011_1)
  br label %for.loop.head1

src.addr6.0.011.case.2:                           ; preds = %.case.2207
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012196, %struct.ssdm_int* %src.addr6.0.011_2)
  br label %for.loop.head1

src.addr6.0.011.case.3:                           ; preds = %.case.3208
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012199, %struct.ssdm_int* %src.addr6.0.011_3)
  br label %for.loop.head1

src.addr6.0.011.case.4:                           ; preds = %.case.4209
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012202, %struct.ssdm_int* %src.addr6.0.011_4)
  br label %for.loop.head1

src.addr6.0.011.case.5:                           ; preds = %.case.5210
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012205, %struct.ssdm_int* %src.addr6.0.011_5)
  br label %for.loop.head1

src.addr6.0.011.case.6:                           ; preds = %.case.6211
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012208, %struct.ssdm_int* %src.addr6.0.011_6)
  br label %for.loop.head1

src.addr6.0.011.case.7:                           ; preds = %.case.7212
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012211, %struct.ssdm_int* %src.addr6.0.011_7)
  br label %for.loop.head1

src.addr6.0.011.case.8:                           ; preds = %.case.8213
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012214, %struct.ssdm_int* %src.addr6.0.011_8)
  br label %for.loop.head1

src.addr6.0.011.case.9:                           ; preds = %.case.9214
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012217, %struct.ssdm_int* %src.addr6.0.011_9)
  br label %for.loop.head1

src.addr6.0.011.case.10:                          ; preds = %.case.10215
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012220, %struct.ssdm_int* %src.addr6.0.011_10)
  br label %for.loop.head1

src.addr6.0.011.case.11:                          ; preds = %.case.11216
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012223, %struct.ssdm_int* %src.addr6.0.011_11)
  br label %for.loop.head1

src.addr6.0.011.case.12:                          ; preds = %.case.12217
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012226, %struct.ssdm_int* %src.addr6.0.011_12)
  br label %for.loop.head1

src.addr6.0.011.case.13:                          ; preds = %.case.13218
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012229, %struct.ssdm_int* %src.addr6.0.011_13)
  br label %for.loop.head1

src.addr6.0.011.case.14:                          ; preds = %.case.14219
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012232, %struct.ssdm_int* %src.addr6.0.011_14)
  br label %for.loop.head1

src.addr6.0.011.case.15:                          ; preds = %.case.15220
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012235, %struct.ssdm_int* %src.addr6.0.011_15)
  br label %for.loop.head1

src.addr6.0.011.case.16:                          ; preds = %.case.16221
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012238, %struct.ssdm_int* %src.addr6.0.011_16)
  br label %for.loop.head1

src.addr6.0.011.case.17:                          ; preds = %.case.17222
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012241, %struct.ssdm_int* %src.addr6.0.011_17)
  br label %for.loop.head1

src.addr6.0.011.case.18:                          ; preds = %.case.18223
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012244, %struct.ssdm_int* %src.addr6.0.011_18)
  br label %for.loop.head1

src.addr6.0.011.case.19:                          ; preds = %.case.19224
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012247, %struct.ssdm_int* %src.addr6.0.011_19)
  br label %for.loop.head1

src.addr6.0.011.case.20:                          ; preds = %.case.20225
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012250, %struct.ssdm_int* %src.addr6.0.011_20)
  br label %for.loop.head1

src.addr6.0.011.case.21:                          ; preds = %.case.21226
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012253, %struct.ssdm_int* %src.addr6.0.011_21)
  br label %for.loop.head1

src.addr6.0.011.case.22:                          ; preds = %.case.22227
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012256, %struct.ssdm_int* %src.addr6.0.011_22)
  br label %for.loop.head1

src.addr6.0.011.case.23:                          ; preds = %.case.23228
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012259, %struct.ssdm_int* %src.addr6.0.011_23)
  br label %for.loop.head1

src.addr6.0.011.case.24:                          ; preds = %.case.24229
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012262, %struct.ssdm_int* %src.addr6.0.011_24)
  br label %for.loop.head1

src.addr6.0.011.case.25:                          ; preds = %.case.25230
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012265, %struct.ssdm_int* %src.addr6.0.011_25)
  br label %for.loop.head1

src.addr6.0.011.case.26:                          ; preds = %.case.26231
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012268, %struct.ssdm_int* %src.addr6.0.011_26)
  br label %for.loop.head1

src.addr6.0.011.case.27:                          ; preds = %.case.27232
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012271, %struct.ssdm_int* %src.addr6.0.011_27)
  br label %for.loop.head1

src.addr6.0.011.case.28:                          ; preds = %.case.28233
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012274, %struct.ssdm_int* %src.addr6.0.011_28)
  br label %for.loop.head1

src.addr6.0.011.case.29:                          ; preds = %.case.29234
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012277, %struct.ssdm_int* %src.addr6.0.011_29)
  br label %for.loop.head1

src.addr6.0.011.case.30:                          ; preds = %.case.30235
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012280, %struct.ssdm_int* %src.addr6.0.011_30)
  br label %for.loop.head1

src.addr6.0.011.case.31:                          ; preds = %.exit204
  call void @streamcpy_hls.p0struct.ssdm_int.40.41(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_31)
  br label %for.loop.head1

.case.0303:                                       ; preds = %.case.0205
  %dst.addr5.0.0.014.gep15346 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 0, i32 0, i32 0, i32 0
  %4 = bitcast i128* %dst.addr5.0.0.014.gep15346 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_0269, i64 16, i1 false)
  br label %for.loop.head1

.case.1304:                                       ; preds = %.case.1206
  %dst.addr5.0.0.014.gep15348 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 1, i32 0, i32 0, i32 0
  %5 = bitcast i128* %dst.addr5.0.0.014.gep15348 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %_1270, i64 16, i1 false)
  br label %for.loop.head1

.case.2305:                                       ; preds = %.case.2207
  %dst.addr5.0.0.014.gep15350 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 2, i32 0, i32 0, i32 0
  %6 = bitcast i128* %dst.addr5.0.0.014.gep15350 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %_2271, i64 16, i1 false)
  br label %for.loop.head1

.case.3306:                                       ; preds = %.case.3208
  %dst.addr5.0.0.014.gep15352 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 3, i32 0, i32 0, i32 0
  %7 = bitcast i128* %dst.addr5.0.0.014.gep15352 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_3272, i64 16, i1 false)
  br label %for.loop.head1

.case.4307:                                       ; preds = %.case.4209
  %dst.addr5.0.0.014.gep15354 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 4, i32 0, i32 0, i32 0
  %8 = bitcast i128* %dst.addr5.0.0.014.gep15354 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %_4273, i64 16, i1 false)
  br label %for.loop.head1

.case.5308:                                       ; preds = %.case.5210
  %dst.addr5.0.0.014.gep15356 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 5, i32 0, i32 0, i32 0
  %9 = bitcast i128* %dst.addr5.0.0.014.gep15356 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %_5274, i64 16, i1 false)
  br label %for.loop.head1

.case.6309:                                       ; preds = %.case.6211
  %dst.addr5.0.0.014.gep15358 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 6, i32 0, i32 0, i32 0
  %10 = bitcast i128* %dst.addr5.0.0.014.gep15358 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %_6275, i64 16, i1 false)
  br label %for.loop.head1

.case.7310:                                       ; preds = %.case.7212
  %dst.addr5.0.0.014.gep15360 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 7, i32 0, i32 0, i32 0
  %11 = bitcast i128* %dst.addr5.0.0.014.gep15360 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %_7276, i64 16, i1 false)
  br label %for.loop.head1

.case.8311:                                       ; preds = %.case.8213
  %dst.addr5.0.0.014.gep15362 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 8, i32 0, i32 0, i32 0
  %12 = bitcast i128* %dst.addr5.0.0.014.gep15362 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %_8277, i64 16, i1 false)
  br label %for.loop.head1

.case.9312:                                       ; preds = %.case.9214
  %dst.addr5.0.0.014.gep15364 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 9, i32 0, i32 0, i32 0
  %13 = bitcast i128* %dst.addr5.0.0.014.gep15364 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %_9278, i64 16, i1 false)
  br label %for.loop.head1

.case.10313:                                      ; preds = %.case.10215
  %dst.addr5.0.0.014.gep15366 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 10, i32 0, i32 0, i32 0
  %14 = bitcast i128* %dst.addr5.0.0.014.gep15366 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 %_10279, i64 16, i1 false)
  br label %for.loop.head1

.case.11314:                                      ; preds = %.case.11216
  %dst.addr5.0.0.014.gep15368 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 11, i32 0, i32 0, i32 0
  %15 = bitcast i128* %dst.addr5.0.0.014.gep15368 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %_11280, i64 16, i1 false)
  br label %for.loop.head1

.case.12315:                                      ; preds = %.case.12217
  %dst.addr5.0.0.014.gep15370 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 12, i32 0, i32 0, i32 0
  %16 = bitcast i128* %dst.addr5.0.0.014.gep15370 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %_12281, i64 16, i1 false)
  br label %for.loop.head1

.case.13316:                                      ; preds = %.case.13218
  %dst.addr5.0.0.014.gep15372 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 13, i32 0, i32 0, i32 0
  %17 = bitcast i128* %dst.addr5.0.0.014.gep15372 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %_13282, i64 16, i1 false)
  br label %for.loop.head1

.case.14317:                                      ; preds = %.case.14219
  %dst.addr5.0.0.014.gep15374 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 14, i32 0, i32 0, i32 0
  %18 = bitcast i128* %dst.addr5.0.0.014.gep15374 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %_14283, i64 16, i1 false)
  br label %for.loop.head1

.case.15318:                                      ; preds = %.case.15220
  %dst.addr5.0.0.014.gep15376 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 15, i32 0, i32 0, i32 0
  %19 = bitcast i128* %dst.addr5.0.0.014.gep15376 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 %_15284, i64 16, i1 false)
  br label %for.loop.head1

.case.16319:                                      ; preds = %.case.16221
  %dst.addr5.0.0.014.gep15378 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 16, i32 0, i32 0, i32 0
  %20 = bitcast i128* %dst.addr5.0.0.014.gep15378 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %_16285, i64 16, i1 false)
  br label %for.loop.head1

.case.17320:                                      ; preds = %.case.17222
  %dst.addr5.0.0.014.gep15380 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 17, i32 0, i32 0, i32 0
  %21 = bitcast i128* %dst.addr5.0.0.014.gep15380 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 %_17286, i64 16, i1 false)
  br label %for.loop.head1

.case.18321:                                      ; preds = %.case.18223
  %dst.addr5.0.0.014.gep15382 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 18, i32 0, i32 0, i32 0
  %22 = bitcast i128* %dst.addr5.0.0.014.gep15382 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %_18287, i64 16, i1 false)
  br label %for.loop.head1

.case.19322:                                      ; preds = %.case.19224
  %dst.addr5.0.0.014.gep15384 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 19, i32 0, i32 0, i32 0
  %23 = bitcast i128* %dst.addr5.0.0.014.gep15384 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %_19288, i64 16, i1 false)
  br label %for.loop.head1

.case.20323:                                      ; preds = %.case.20225
  %dst.addr5.0.0.014.gep15386 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 20, i32 0, i32 0, i32 0
  %24 = bitcast i128* %dst.addr5.0.0.014.gep15386 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %_20289, i64 16, i1 false)
  br label %for.loop.head1

.case.21324:                                      ; preds = %.case.21226
  %dst.addr5.0.0.014.gep15388 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 21, i32 0, i32 0, i32 0
  %25 = bitcast i128* %dst.addr5.0.0.014.gep15388 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %_21290, i64 16, i1 false)
  br label %for.loop.head1

.case.22325:                                      ; preds = %.case.22227
  %dst.addr5.0.0.014.gep15390 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 22, i32 0, i32 0, i32 0
  %26 = bitcast i128* %dst.addr5.0.0.014.gep15390 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %_22291, i64 16, i1 false)
  br label %for.loop.head1

.case.23326:                                      ; preds = %.case.23228
  %dst.addr5.0.0.014.gep15392 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 23, i32 0, i32 0, i32 0
  %27 = bitcast i128* %dst.addr5.0.0.014.gep15392 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 %_23292, i64 16, i1 false)
  br label %for.loop.head1

.case.24327:                                      ; preds = %.case.24229
  %dst.addr5.0.0.014.gep15394 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 24, i32 0, i32 0, i32 0
  %28 = bitcast i128* %dst.addr5.0.0.014.gep15394 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %_24293, i64 16, i1 false)
  br label %for.loop.head1

.case.25328:                                      ; preds = %.case.25230
  %dst.addr5.0.0.014.gep15396 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 25, i32 0, i32 0, i32 0
  %29 = bitcast i128* %dst.addr5.0.0.014.gep15396 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %_25294, i64 16, i1 false)
  br label %for.loop.head1

.case.26329:                                      ; preds = %.case.26231
  %dst.addr5.0.0.014.gep15398 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 26, i32 0, i32 0, i32 0
  %30 = bitcast i128* %dst.addr5.0.0.014.gep15398 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 %_26295, i64 16, i1 false)
  br label %for.loop.head1

.case.27330:                                      ; preds = %.case.27232
  %dst.addr5.0.0.014.gep15400 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 27, i32 0, i32 0, i32 0
  %31 = bitcast i128* %dst.addr5.0.0.014.gep15400 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %_27296, i64 16, i1 false)
  br label %for.loop.head1

.case.28331:                                      ; preds = %.case.28233
  %dst.addr5.0.0.014.gep15402 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 28, i32 0, i32 0, i32 0
  %32 = bitcast i128* %dst.addr5.0.0.014.gep15402 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %_28297, i64 16, i1 false)
  br label %for.loop.head1

.case.29332:                                      ; preds = %.case.29234
  %dst.addr5.0.0.014.gep15404 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 29, i32 0, i32 0, i32 0
  %33 = bitcast i128* %dst.addr5.0.0.014.gep15404 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 %_29298, i64 16, i1 false)
  br label %for.loop.head1

.case.30333:                                      ; preds = %.case.30235
  %dst.addr5.0.0.014.gep15406 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 30, i32 0, i32 0, i32 0
  %34 = bitcast i128* %dst.addr5.0.0.014.gep15406 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 %_30299, i64 16, i1 false)
  br label %for.loop.head1

.case.31334:                                      ; preds = %.exit204
  %dst.addr5.0.0.014.gep15 = getelementptr [32 x [32 x %struct.ap_int]], [32 x [32 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 31, i32 0, i32 0, i32 0
  %35 = bitcast i128* %dst.addr5.0.0.014.gep15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %_31300, i64 16, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %.case.31334, %.case.30333, %.case.29332, %.case.28331, %.case.27330, %.case.26329, %.case.25328, %.case.24327, %.case.23326, %.case.22325, %.case.21324, %.case.20323, %.case.19322, %.case.18321, %.case.17320, %.case.16319, %.case.15318, %.case.14317, %.case.13316, %.case.12315, %.case.11314, %.case.10313, %.case.9312, %.case.8311, %.case.7310, %.case.6309, %.case.5308, %.case.4307, %.case.3306, %.case.2305, %.case.1304, %.case.0303, %src.addr6.0.011.case.31, %src.addr6.0.011.case.30, %src.addr6.0.011.case.29, %src.addr6.0.011.case.28, %src.addr6.0.011.case.27, %src.addr6.0.011.case.26, %src.addr6.0.011.case.25, %src.addr6.0.011.case.24, %src.addr6.0.011.case.23, %src.addr6.0.011.case.22, %src.addr6.0.011.case.21, %src.addr6.0.011.case.20, %src.addr6.0.011.case.19, %src.addr6.0.011.case.18, %src.addr6.0.011.case.17, %src.addr6.0.011.case.16, %src.addr6.0.011.case.15, %src.addr6.0.011.case.14, %src.addr6.0.011.case.13, %src.addr6.0.011.case.12, %src.addr6.0.011.case.11, %src.addr6.0.011.case.10, %src.addr6.0.011.case.9, %src.addr6.0.011.case.8, %src.addr6.0.011.case.7, %src.addr6.0.011.case.6, %src.addr6.0.011.case.5, %src.addr6.0.011.case.4, %src.addr6.0.011.case.3, %src.addr6.0.011.case.2, %src.addr6.0.011.case.1, %src.addr6.0.011.case.0, %src.addr6.09.case.31, %src.addr6.09.case.30, %src.addr6.09.case.29, %src.addr6.09.case.28, %src.addr6.09.case.27, %src.addr6.09.case.26, %src.addr6.09.case.25, %src.addr6.09.case.24, %src.addr6.09.case.23, %src.addr6.09.case.22, %src.addr6.09.case.21, %src.addr6.09.case.20, %src.addr6.09.case.19, %src.addr6.09.case.18, %src.addr6.09.case.17, %src.addr6.09.case.16, %src.addr6.09.case.15, %src.addr6.09.case.14, %src.addr6.09.case.13, %src.addr6.09.case.12, %src.addr6.09.case.11, %src.addr6.09.case.10, %src.addr6.09.case.9, %src.addr6.09.case.8, %src.addr6.09.case.7, %src.addr6.09.case.6, %src.addr6.09.case.5, %src.addr6.09.case.4, %src.addr6.09.case.3, %src.addr6.09.case.2, %src.addr6.09.case.1, %src.addr6.09.case.0, %src.addr68.case.31, %src.addr68.case.30, %src.addr68.case.29, %src.addr68.case.28, %src.addr68.case.27, %src.addr68.case.26, %src.addr68.case.25, %src.addr68.case.24, %src.addr68.case.23, %src.addr68.case.22, %src.addr68.case.21, %src.addr68.case.20, %src.addr68.case.19, %src.addr68.case.18, %src.addr68.case.17, %src.addr68.case.16, %src.addr68.case.15, %src.addr68.case.14, %src.addr68.case.13, %src.addr68.case.12, %src.addr68.case.11, %src.addr68.case.10, %src.addr68.case.9, %src.addr68.case.8, %src.addr68.case.7, %src.addr68.case.6, %src.addr68.case.5, %src.addr68.case.4, %src.addr68.case.3, %src.addr68.case.2, %src.addr68.case.1, %src.addr68.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 32
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* noalias nocapture "orig.arg.no"="0", %struct.ap_int* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ap_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int* %2 to i8*
  %6 = bitcast %struct.ap_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int, %struct.ap_int* %2
  %8 = bitcast %struct.ap_int* %2 to i8*
  %9 = bitcast %struct.ap_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int* %1 to i8*
  %11 = bitcast %struct.ap_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* noalias nocapture "orig.arg.no"="0", %struct.ap_int_base* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* noalias nocapture "orig.arg.no"="0", %struct.ssdm_int* noalias nocapture "orig.arg.no"="1") #1 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline
define internal void @onebyonecpy_hls.p0a32a10struct.ap_int.43.50([32 x [10 x %struct.ap_int]]* noalias "orig.arg.no"="0", [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_0, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_1, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_2, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_3, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_4, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_5, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_6, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_7, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_8, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_9, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_10, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_11, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_12, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_13, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_14, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_15, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_16, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_17, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_18, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_19, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_20, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_21, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_22, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_23, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_24, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_25, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_26, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_27, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_28, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_29, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_30, [10 x %struct.ap_int]* noalias "orig.arg.no"="1" %_31) #3 {
entry:
  %1 = icmp eq [32 x [10 x %struct.ap_int]]* %0, null
  %2 = icmp eq [10 x %struct.ap_int]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop.head1, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop.head1 ]
  %dst.addr57 = getelementptr [32 x [10 x %struct.ap_int]], [32 x [10 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %src.addr68_0 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx317
  %src.addr68_1 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx317
  %src.addr68_2 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx317
  %src.addr68_3 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx317
  %src.addr68_4 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx317
  %src.addr68_5 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx317
  %src.addr68_6 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx317
  %src.addr68_7 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx317
  %src.addr68_8 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx317
  %src.addr68_9 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx317
  %src.addr68_10 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx317
  %src.addr68_11 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx317
  %src.addr68_12 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx317
  %src.addr68_13 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx317
  %src.addr68_14 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx317
  %src.addr68_15 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx317
  %src.addr68_16 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx317
  %src.addr68_17 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx317
  %src.addr68_18 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx317
  %src.addr68_19 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx317
  %src.addr68_20 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx317
  %src.addr68_21 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx317
  %src.addr68_22 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx317
  %src.addr68_23 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx317
  %src.addr68_24 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx317
  %src.addr68_25 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx317
  %src.addr68_26 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx317
  %src.addr68_27 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx317
  %src.addr68_28 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx317
  %src.addr68_29 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx317
  %src.addr68_30 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx317
  %src.addr68_31 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx317
  %_01 = bitcast %struct.ap_int* %src.addr68_0 to i8*
  %_110 = bitcast %struct.ap_int* %src.addr68_1 to i8*
  %_211 = bitcast %struct.ap_int* %src.addr68_2 to i8*
  %_312 = bitcast %struct.ap_int* %src.addr68_3 to i8*
  %_413 = bitcast %struct.ap_int* %src.addr68_4 to i8*
  %_514 = bitcast %struct.ap_int* %src.addr68_5 to i8*
  %_615 = bitcast %struct.ap_int* %src.addr68_6 to i8*
  %_716 = bitcast %struct.ap_int* %src.addr68_7 to i8*
  %_817 = bitcast %struct.ap_int* %src.addr68_8 to i8*
  %_918 = bitcast %struct.ap_int* %src.addr68_9 to i8*
  %_1019 = bitcast %struct.ap_int* %src.addr68_10 to i8*
  %_1120 = bitcast %struct.ap_int* %src.addr68_11 to i8*
  %_1221 = bitcast %struct.ap_int* %src.addr68_12 to i8*
  %_1322 = bitcast %struct.ap_int* %src.addr68_13 to i8*
  %_1423 = bitcast %struct.ap_int* %src.addr68_14 to i8*
  %_1524 = bitcast %struct.ap_int* %src.addr68_15 to i8*
  %_1625 = bitcast %struct.ap_int* %src.addr68_16 to i8*
  %_1726 = bitcast %struct.ap_int* %src.addr68_17 to i8*
  %_1827 = bitcast %struct.ap_int* %src.addr68_18 to i8*
  %_1928 = bitcast %struct.ap_int* %src.addr68_19 to i8*
  %_2029 = bitcast %struct.ap_int* %src.addr68_20 to i8*
  %_2130 = bitcast %struct.ap_int* %src.addr68_21 to i8*
  %_2231 = bitcast %struct.ap_int* %src.addr68_22 to i8*
  %_2332 = bitcast %struct.ap_int* %src.addr68_23 to i8*
  %_2433 = bitcast %struct.ap_int* %src.addr68_24 to i8*
  %_2534 = bitcast %struct.ap_int* %src.addr68_25 to i8*
  %_2635 = bitcast %struct.ap_int* %src.addr68_26 to i8*
  %_2736 = bitcast %struct.ap_int* %src.addr68_27 to i8*
  %_2837 = bitcast %struct.ap_int* %src.addr68_28 to i8*
  %_2938 = bitcast %struct.ap_int* %src.addr68_29 to i8*
  %_3039 = bitcast %struct.ap_int* %src.addr68_30 to i8*
  %_3140 = bitcast %struct.ap_int* %src.addr68_31 to i8*
  switch i64 %for.loop.idx18, label %.default [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.case.7
    i64 8, label %.case.8
    i64 9, label %.case.9
    i64 10, label %.case.10
    i64 11, label %.case.11
    i64 12, label %.case.12
    i64 13, label %.case.13
    i64 14, label %.case.14
    i64 15, label %.case.15
    i64 16, label %.case.16
    i64 17, label %.case.17
    i64 18, label %.case.18
    i64 19, label %.case.19
    i64 20, label %.case.20
    i64 21, label %.case.21
    i64 22, label %.case.22
    i64 23, label %.case.23
    i64 24, label %.case.24
    i64 25, label %.case.25
    i64 26, label %.case.26
    i64 27, label %.case.27
    i64 28, label %.case.28
    i64 29, label %.case.29
    i64 30, label %.case.30
    i64 31, label %.exit
  ]

.default:                                         ; preds = %for.loop2
  unreachable

.case.0:                                          ; preds = %for.loop2
  %_041 = call i1 @fpga_fifo_exist_16(i8* %_01)
  br i1 %_041, label %src.addr68.case.0, label %4

.case.1:                                          ; preds = %for.loop2
  %_142 = call i1 @fpga_fifo_exist_16(i8* %_110)
  br i1 %_142, label %src.addr68.case.1, label %4

.case.2:                                          ; preds = %for.loop2
  %_243 = call i1 @fpga_fifo_exist_16(i8* %_211)
  br i1 %_243, label %src.addr68.case.2, label %4

.case.3:                                          ; preds = %for.loop2
  %_344 = call i1 @fpga_fifo_exist_16(i8* %_312)
  br i1 %_344, label %src.addr68.case.3, label %4

.case.4:                                          ; preds = %for.loop2
  %_445 = call i1 @fpga_fifo_exist_16(i8* %_413)
  br i1 %_445, label %src.addr68.case.4, label %4

.case.5:                                          ; preds = %for.loop2
  %_546 = call i1 @fpga_fifo_exist_16(i8* %_514)
  br i1 %_546, label %src.addr68.case.5, label %4

.case.6:                                          ; preds = %for.loop2
  %_647 = call i1 @fpga_fifo_exist_16(i8* %_615)
  br i1 %_647, label %src.addr68.case.6, label %4

.case.7:                                          ; preds = %for.loop2
  %_748 = call i1 @fpga_fifo_exist_16(i8* %_716)
  br i1 %_748, label %src.addr68.case.7, label %4

.case.8:                                          ; preds = %for.loop2
  %_849 = call i1 @fpga_fifo_exist_16(i8* %_817)
  br i1 %_849, label %src.addr68.case.8, label %4

.case.9:                                          ; preds = %for.loop2
  %_950 = call i1 @fpga_fifo_exist_16(i8* %_918)
  br i1 %_950, label %src.addr68.case.9, label %4

.case.10:                                         ; preds = %for.loop2
  %_1051 = call i1 @fpga_fifo_exist_16(i8* %_1019)
  br i1 %_1051, label %src.addr68.case.10, label %4

.case.11:                                         ; preds = %for.loop2
  %_1152 = call i1 @fpga_fifo_exist_16(i8* %_1120)
  br i1 %_1152, label %src.addr68.case.11, label %4

.case.12:                                         ; preds = %for.loop2
  %_1253 = call i1 @fpga_fifo_exist_16(i8* %_1221)
  br i1 %_1253, label %src.addr68.case.12, label %4

.case.13:                                         ; preds = %for.loop2
  %_1354 = call i1 @fpga_fifo_exist_16(i8* %_1322)
  br i1 %_1354, label %src.addr68.case.13, label %4

.case.14:                                         ; preds = %for.loop2
  %_1455 = call i1 @fpga_fifo_exist_16(i8* %_1423)
  br i1 %_1455, label %src.addr68.case.14, label %4

.case.15:                                         ; preds = %for.loop2
  %_1556 = call i1 @fpga_fifo_exist_16(i8* %_1524)
  br i1 %_1556, label %src.addr68.case.15, label %4

.case.16:                                         ; preds = %for.loop2
  %_1657 = call i1 @fpga_fifo_exist_16(i8* %_1625)
  br i1 %_1657, label %src.addr68.case.16, label %4

.case.17:                                         ; preds = %for.loop2
  %_1758 = call i1 @fpga_fifo_exist_16(i8* %_1726)
  br i1 %_1758, label %src.addr68.case.17, label %4

.case.18:                                         ; preds = %for.loop2
  %_1859 = call i1 @fpga_fifo_exist_16(i8* %_1827)
  br i1 %_1859, label %src.addr68.case.18, label %4

.case.19:                                         ; preds = %for.loop2
  %_1960 = call i1 @fpga_fifo_exist_16(i8* %_1928)
  br i1 %_1960, label %src.addr68.case.19, label %4

.case.20:                                         ; preds = %for.loop2
  %_2061 = call i1 @fpga_fifo_exist_16(i8* %_2029)
  br i1 %_2061, label %src.addr68.case.20, label %4

.case.21:                                         ; preds = %for.loop2
  %_2162 = call i1 @fpga_fifo_exist_16(i8* %_2130)
  br i1 %_2162, label %src.addr68.case.21, label %4

.case.22:                                         ; preds = %for.loop2
  %_2263 = call i1 @fpga_fifo_exist_16(i8* %_2231)
  br i1 %_2263, label %src.addr68.case.22, label %4

.case.23:                                         ; preds = %for.loop2
  %_2364 = call i1 @fpga_fifo_exist_16(i8* %_2332)
  br i1 %_2364, label %src.addr68.case.23, label %4

.case.24:                                         ; preds = %for.loop2
  %_2465 = call i1 @fpga_fifo_exist_16(i8* %_2433)
  br i1 %_2465, label %src.addr68.case.24, label %4

.case.25:                                         ; preds = %for.loop2
  %_2566 = call i1 @fpga_fifo_exist_16(i8* %_2534)
  br i1 %_2566, label %src.addr68.case.25, label %4

.case.26:                                         ; preds = %for.loop2
  %_2667 = call i1 @fpga_fifo_exist_16(i8* %_2635)
  br i1 %_2667, label %src.addr68.case.26, label %4

.case.27:                                         ; preds = %for.loop2
  %_2768 = call i1 @fpga_fifo_exist_16(i8* %_2736)
  br i1 %_2768, label %src.addr68.case.27, label %4

.case.28:                                         ; preds = %for.loop2
  %_2869 = call i1 @fpga_fifo_exist_16(i8* %_2837)
  br i1 %_2869, label %src.addr68.case.28, label %4

.case.29:                                         ; preds = %for.loop2
  %_2970 = call i1 @fpga_fifo_exist_16(i8* %_2938)
  br i1 %_2970, label %src.addr68.case.29, label %4

.case.30:                                         ; preds = %for.loop2
  %_3071 = call i1 @fpga_fifo_exist_16(i8* %_3039)
  br i1 %_3071, label %src.addr68.case.30, label %4

.exit:                                            ; preds = %for.loop2
  %_3172 = call i1 @fpga_fifo_exist_16(i8* %_3140)
  br i1 %_3172, label %src.addr68.case.31, label %4

src.addr68.case.0:                                ; preds = %.case.0
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_0)
  br label %for.loop.head1

src.addr68.case.1:                                ; preds = %.case.1
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_1)
  br label %for.loop.head1

src.addr68.case.2:                                ; preds = %.case.2
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_2)
  br label %for.loop.head1

src.addr68.case.3:                                ; preds = %.case.3
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_3)
  br label %for.loop.head1

src.addr68.case.4:                                ; preds = %.case.4
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_4)
  br label %for.loop.head1

src.addr68.case.5:                                ; preds = %.case.5
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_5)
  br label %for.loop.head1

src.addr68.case.6:                                ; preds = %.case.6
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_6)
  br label %for.loop.head1

src.addr68.case.7:                                ; preds = %.case.7
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_7)
  br label %for.loop.head1

src.addr68.case.8:                                ; preds = %.case.8
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_8)
  br label %for.loop.head1

src.addr68.case.9:                                ; preds = %.case.9
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_9)
  br label %for.loop.head1

src.addr68.case.10:                               ; preds = %.case.10
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_10)
  br label %for.loop.head1

src.addr68.case.11:                               ; preds = %.case.11
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_11)
  br label %for.loop.head1

src.addr68.case.12:                               ; preds = %.case.12
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_12)
  br label %for.loop.head1

src.addr68.case.13:                               ; preds = %.case.13
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_13)
  br label %for.loop.head1

src.addr68.case.14:                               ; preds = %.case.14
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_14)
  br label %for.loop.head1

src.addr68.case.15:                               ; preds = %.case.15
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_15)
  br label %for.loop.head1

src.addr68.case.16:                               ; preds = %.case.16
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_16)
  br label %for.loop.head1

src.addr68.case.17:                               ; preds = %.case.17
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_17)
  br label %for.loop.head1

src.addr68.case.18:                               ; preds = %.case.18
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_18)
  br label %for.loop.head1

src.addr68.case.19:                               ; preds = %.case.19
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_19)
  br label %for.loop.head1

src.addr68.case.20:                               ; preds = %.case.20
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_20)
  br label %for.loop.head1

src.addr68.case.21:                               ; preds = %.case.21
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_21)
  br label %for.loop.head1

src.addr68.case.22:                               ; preds = %.case.22
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_22)
  br label %for.loop.head1

src.addr68.case.23:                               ; preds = %.case.23
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_23)
  br label %for.loop.head1

src.addr68.case.24:                               ; preds = %.case.24
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_24)
  br label %for.loop.head1

src.addr68.case.25:                               ; preds = %.case.25
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_25)
  br label %for.loop.head1

src.addr68.case.26:                               ; preds = %.case.26
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_26)
  br label %for.loop.head1

src.addr68.case.27:                               ; preds = %.case.27
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_27)
  br label %for.loop.head1

src.addr68.case.28:                               ; preds = %.case.28
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_28)
  br label %for.loop.head1

src.addr68.case.29:                               ; preds = %.case.29
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_29)
  br label %for.loop.head1

src.addr68.case.30:                               ; preds = %.case.30
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_30)
  br label %for.loop.head1

src.addr68.case.31:                               ; preds = %.exit
  call void @streamcpy_hls.p0struct.ap_int.44.45(%struct.ap_int* %dst.addr57, %struct.ap_int* %src.addr68_31)
  br label %for.loop.head1

; <label>:4:                                      ; preds = %.exit, %.case.30, %.case.29, %.case.28, %.case.27, %.case.26, %.case.25, %.case.24, %.case.23, %.case.22, %.case.21, %.case.20, %.case.19, %.case.18, %.case.17, %.case.16, %.case.15, %.case.14, %.case.13, %.case.12, %.case.11, %.case.10, %.case.9, %.case.8, %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0
  %src.addr6.09_0 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_1 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_2 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_3 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_4 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_5 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_6 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_7 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_8 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_9 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_10 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_11 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_12 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_13 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_14 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_15 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_16 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_17 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_18 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_19 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_20 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_21 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_22 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_23 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_24 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_25 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_26 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_27 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_28 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_29 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_30 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_31 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010 = getelementptr [32 x [10 x %struct.ap_int]], [32 x [10 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0
  %_073 = bitcast %struct.ap_int_base* %src.addr6.09_0 to i8*
  %_174 = bitcast %struct.ap_int_base* %src.addr6.09_1 to i8*
  %_275 = bitcast %struct.ap_int_base* %src.addr6.09_2 to i8*
  %_376 = bitcast %struct.ap_int_base* %src.addr6.09_3 to i8*
  %_477 = bitcast %struct.ap_int_base* %src.addr6.09_4 to i8*
  %_578 = bitcast %struct.ap_int_base* %src.addr6.09_5 to i8*
  %_679 = bitcast %struct.ap_int_base* %src.addr6.09_6 to i8*
  %_780 = bitcast %struct.ap_int_base* %src.addr6.09_7 to i8*
  %_881 = bitcast %struct.ap_int_base* %src.addr6.09_8 to i8*
  %_982 = bitcast %struct.ap_int_base* %src.addr6.09_9 to i8*
  %_1083 = bitcast %struct.ap_int_base* %src.addr6.09_10 to i8*
  %_1184 = bitcast %struct.ap_int_base* %src.addr6.09_11 to i8*
  %_1285 = bitcast %struct.ap_int_base* %src.addr6.09_12 to i8*
  %_1386 = bitcast %struct.ap_int_base* %src.addr6.09_13 to i8*
  %_1487 = bitcast %struct.ap_int_base* %src.addr6.09_14 to i8*
  %_1588 = bitcast %struct.ap_int_base* %src.addr6.09_15 to i8*
  %_1689 = bitcast %struct.ap_int_base* %src.addr6.09_16 to i8*
  %_1790 = bitcast %struct.ap_int_base* %src.addr6.09_17 to i8*
  %_1891 = bitcast %struct.ap_int_base* %src.addr6.09_18 to i8*
  %_1992 = bitcast %struct.ap_int_base* %src.addr6.09_19 to i8*
  %_2093 = bitcast %struct.ap_int_base* %src.addr6.09_20 to i8*
  %_2194 = bitcast %struct.ap_int_base* %src.addr6.09_21 to i8*
  %_2295 = bitcast %struct.ap_int_base* %src.addr6.09_22 to i8*
  %_2396 = bitcast %struct.ap_int_base* %src.addr6.09_23 to i8*
  %_2497 = bitcast %struct.ap_int_base* %src.addr6.09_24 to i8*
  %_2598 = bitcast %struct.ap_int_base* %src.addr6.09_25 to i8*
  %_2699 = bitcast %struct.ap_int_base* %src.addr6.09_26 to i8*
  %_27100 = bitcast %struct.ap_int_base* %src.addr6.09_27 to i8*
  %_28101 = bitcast %struct.ap_int_base* %src.addr6.09_28 to i8*
  %_29102 = bitcast %struct.ap_int_base* %src.addr6.09_29 to i8*
  %_30103 = bitcast %struct.ap_int_base* %src.addr6.09_30 to i8*
  %_31104 = bitcast %struct.ap_int_base* %src.addr6.09_31 to i8*
  switch i64 %for.loop.idx18, label %.default105 [
    i64 0, label %.case.0107
    i64 1, label %.case.1108
    i64 2, label %.case.2109
    i64 3, label %.case.3110
    i64 4, label %.case.4111
    i64 5, label %.case.5112
    i64 6, label %.case.6113
    i64 7, label %.case.7114
    i64 8, label %.case.8115
    i64 9, label %.case.9116
    i64 10, label %.case.10117
    i64 11, label %.case.11118
    i64 12, label %.case.12119
    i64 13, label %.case.13120
    i64 14, label %.case.14121
    i64 15, label %.case.15122
    i64 16, label %.case.16123
    i64 17, label %.case.17124
    i64 18, label %.case.18125
    i64 19, label %.case.19126
    i64 20, label %.case.20127
    i64 21, label %.case.21128
    i64 22, label %.case.22129
    i64 23, label %.case.23130
    i64 24, label %.case.24131
    i64 25, label %.case.25132
    i64 26, label %.case.26133
    i64 27, label %.case.27134
    i64 28, label %.case.28135
    i64 29, label %.case.29136
    i64 30, label %.case.30137
    i64 31, label %.exit106
  ]

.default105:                                      ; preds = %4
  unreachable

.case.0107:                                       ; preds = %4
  %_0139 = call i1 @fpga_fifo_exist_16(i8* %_073)
  br i1 %_0139, label %src.addr6.09.case.0, label %5

.case.1108:                                       ; preds = %4
  %_1140 = call i1 @fpga_fifo_exist_16(i8* %_174)
  br i1 %_1140, label %src.addr6.09.case.1, label %5

.case.2109:                                       ; preds = %4
  %_2141 = call i1 @fpga_fifo_exist_16(i8* %_275)
  br i1 %_2141, label %src.addr6.09.case.2, label %5

.case.3110:                                       ; preds = %4
  %_3142 = call i1 @fpga_fifo_exist_16(i8* %_376)
  br i1 %_3142, label %src.addr6.09.case.3, label %5

.case.4111:                                       ; preds = %4
  %_4143 = call i1 @fpga_fifo_exist_16(i8* %_477)
  br i1 %_4143, label %src.addr6.09.case.4, label %5

.case.5112:                                       ; preds = %4
  %_5144 = call i1 @fpga_fifo_exist_16(i8* %_578)
  br i1 %_5144, label %src.addr6.09.case.5, label %5

.case.6113:                                       ; preds = %4
  %_6145 = call i1 @fpga_fifo_exist_16(i8* %_679)
  br i1 %_6145, label %src.addr6.09.case.6, label %5

.case.7114:                                       ; preds = %4
  %_7146 = call i1 @fpga_fifo_exist_16(i8* %_780)
  br i1 %_7146, label %src.addr6.09.case.7, label %5

.case.8115:                                       ; preds = %4
  %_8147 = call i1 @fpga_fifo_exist_16(i8* %_881)
  br i1 %_8147, label %src.addr6.09.case.8, label %5

.case.9116:                                       ; preds = %4
  %_9148 = call i1 @fpga_fifo_exist_16(i8* %_982)
  br i1 %_9148, label %src.addr6.09.case.9, label %5

.case.10117:                                      ; preds = %4
  %_10149 = call i1 @fpga_fifo_exist_16(i8* %_1083)
  br i1 %_10149, label %src.addr6.09.case.10, label %5

.case.11118:                                      ; preds = %4
  %_11150 = call i1 @fpga_fifo_exist_16(i8* %_1184)
  br i1 %_11150, label %src.addr6.09.case.11, label %5

.case.12119:                                      ; preds = %4
  %_12151 = call i1 @fpga_fifo_exist_16(i8* %_1285)
  br i1 %_12151, label %src.addr6.09.case.12, label %5

.case.13120:                                      ; preds = %4
  %_13152 = call i1 @fpga_fifo_exist_16(i8* %_1386)
  br i1 %_13152, label %src.addr6.09.case.13, label %5

.case.14121:                                      ; preds = %4
  %_14153 = call i1 @fpga_fifo_exist_16(i8* %_1487)
  br i1 %_14153, label %src.addr6.09.case.14, label %5

.case.15122:                                      ; preds = %4
  %_15154 = call i1 @fpga_fifo_exist_16(i8* %_1588)
  br i1 %_15154, label %src.addr6.09.case.15, label %5

.case.16123:                                      ; preds = %4
  %_16155 = call i1 @fpga_fifo_exist_16(i8* %_1689)
  br i1 %_16155, label %src.addr6.09.case.16, label %5

.case.17124:                                      ; preds = %4
  %_17156 = call i1 @fpga_fifo_exist_16(i8* %_1790)
  br i1 %_17156, label %src.addr6.09.case.17, label %5

.case.18125:                                      ; preds = %4
  %_18157 = call i1 @fpga_fifo_exist_16(i8* %_1891)
  br i1 %_18157, label %src.addr6.09.case.18, label %5

.case.19126:                                      ; preds = %4
  %_19158 = call i1 @fpga_fifo_exist_16(i8* %_1992)
  br i1 %_19158, label %src.addr6.09.case.19, label %5

.case.20127:                                      ; preds = %4
  %_20159 = call i1 @fpga_fifo_exist_16(i8* %_2093)
  br i1 %_20159, label %src.addr6.09.case.20, label %5

.case.21128:                                      ; preds = %4
  %_21160 = call i1 @fpga_fifo_exist_16(i8* %_2194)
  br i1 %_21160, label %src.addr6.09.case.21, label %5

.case.22129:                                      ; preds = %4
  %_22161 = call i1 @fpga_fifo_exist_16(i8* %_2295)
  br i1 %_22161, label %src.addr6.09.case.22, label %5

.case.23130:                                      ; preds = %4
  %_23162 = call i1 @fpga_fifo_exist_16(i8* %_2396)
  br i1 %_23162, label %src.addr6.09.case.23, label %5

.case.24131:                                      ; preds = %4
  %_24163 = call i1 @fpga_fifo_exist_16(i8* %_2497)
  br i1 %_24163, label %src.addr6.09.case.24, label %5

.case.25132:                                      ; preds = %4
  %_25164 = call i1 @fpga_fifo_exist_16(i8* %_2598)
  br i1 %_25164, label %src.addr6.09.case.25, label %5

.case.26133:                                      ; preds = %4
  %_26165 = call i1 @fpga_fifo_exist_16(i8* %_2699)
  br i1 %_26165, label %src.addr6.09.case.26, label %5

.case.27134:                                      ; preds = %4
  %_27166 = call i1 @fpga_fifo_exist_16(i8* %_27100)
  br i1 %_27166, label %src.addr6.09.case.27, label %5

.case.28135:                                      ; preds = %4
  %_28167 = call i1 @fpga_fifo_exist_16(i8* %_28101)
  br i1 %_28167, label %src.addr6.09.case.28, label %5

.case.29136:                                      ; preds = %4
  %_29168 = call i1 @fpga_fifo_exist_16(i8* %_29102)
  br i1 %_29168, label %src.addr6.09.case.29, label %5

.case.30137:                                      ; preds = %4
  %_30169 = call i1 @fpga_fifo_exist_16(i8* %_30103)
  br i1 %_30169, label %src.addr6.09.case.30, label %5

.exit106:                                         ; preds = %4
  %_31170 = call i1 @fpga_fifo_exist_16(i8* %_31104)
  br i1 %_31170, label %src.addr6.09.case.31, label %5

src.addr6.09.case.0:                              ; preds = %.case.0107
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_0)
  br label %for.loop.head1

src.addr6.09.case.1:                              ; preds = %.case.1108
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_1)
  br label %for.loop.head1

src.addr6.09.case.2:                              ; preds = %.case.2109
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_2)
  br label %for.loop.head1

src.addr6.09.case.3:                              ; preds = %.case.3110
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_3)
  br label %for.loop.head1

src.addr6.09.case.4:                              ; preds = %.case.4111
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_4)
  br label %for.loop.head1

src.addr6.09.case.5:                              ; preds = %.case.5112
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_5)
  br label %for.loop.head1

src.addr6.09.case.6:                              ; preds = %.case.6113
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_6)
  br label %for.loop.head1

src.addr6.09.case.7:                              ; preds = %.case.7114
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_7)
  br label %for.loop.head1

src.addr6.09.case.8:                              ; preds = %.case.8115
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_8)
  br label %for.loop.head1

src.addr6.09.case.9:                              ; preds = %.case.9116
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_9)
  br label %for.loop.head1

src.addr6.09.case.10:                             ; preds = %.case.10117
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_10)
  br label %for.loop.head1

src.addr6.09.case.11:                             ; preds = %.case.11118
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_11)
  br label %for.loop.head1

src.addr6.09.case.12:                             ; preds = %.case.12119
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_12)
  br label %for.loop.head1

src.addr6.09.case.13:                             ; preds = %.case.13120
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_13)
  br label %for.loop.head1

src.addr6.09.case.14:                             ; preds = %.case.14121
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_14)
  br label %for.loop.head1

src.addr6.09.case.15:                             ; preds = %.case.15122
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_15)
  br label %for.loop.head1

src.addr6.09.case.16:                             ; preds = %.case.16123
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_16)
  br label %for.loop.head1

src.addr6.09.case.17:                             ; preds = %.case.17124
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_17)
  br label %for.loop.head1

src.addr6.09.case.18:                             ; preds = %.case.18125
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_18)
  br label %for.loop.head1

src.addr6.09.case.19:                             ; preds = %.case.19126
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_19)
  br label %for.loop.head1

src.addr6.09.case.20:                             ; preds = %.case.20127
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_20)
  br label %for.loop.head1

src.addr6.09.case.21:                             ; preds = %.case.21128
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_21)
  br label %for.loop.head1

src.addr6.09.case.22:                             ; preds = %.case.22129
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_22)
  br label %for.loop.head1

src.addr6.09.case.23:                             ; preds = %.case.23130
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_23)
  br label %for.loop.head1

src.addr6.09.case.24:                             ; preds = %.case.24131
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_24)
  br label %for.loop.head1

src.addr6.09.case.25:                             ; preds = %.case.25132
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_25)
  br label %for.loop.head1

src.addr6.09.case.26:                             ; preds = %.case.26133
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_26)
  br label %for.loop.head1

src.addr6.09.case.27:                             ; preds = %.case.27134
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_27)
  br label %for.loop.head1

src.addr6.09.case.28:                             ; preds = %.case.28135
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_28)
  br label %for.loop.head1

src.addr6.09.case.29:                             ; preds = %.case.29136
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_29)
  br label %for.loop.head1

src.addr6.09.case.30:                             ; preds = %.case.30137
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_30)
  br label %for.loop.head1

src.addr6.09.case.31:                             ; preds = %.exit106
  call void @streamcpy_hls.p0struct.ap_int_base.46.47(%struct.ap_int_base* %dst.addr5.010, %struct.ap_int_base* %src.addr6.09_31)
  br label %for.loop.head1

; <label>:5:                                      ; preds = %.exit106, %.case.30137, %.case.29136, %.case.28135, %.case.27134, %.case.26133, %.case.25132, %.case.24131, %.case.23130, %.case.22129, %.case.21128, %.case.20127, %.case.19126, %.case.18125, %.case.17124, %.case.16123, %.case.15122, %.case.14121, %.case.13120, %.case.12119, %.case.11118, %.case.10117, %.case.9116, %.case.8115, %.case.7114, %.case.6113, %.case.5112, %.case.4111, %.case.3110, %.case.2109, %.case.1108, %.case.0107
  %src.addr6.0.011_0 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_1 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_2 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_3 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_4 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_5 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_6 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_7 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_8 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_9 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_10 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_11 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_12 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_13 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_14 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_15 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_16 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_17 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_18 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_19 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_20 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_21 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_22 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_23 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_24 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_25 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_26 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_27 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_28 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_29 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_30 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_31 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012 = getelementptr [32 x [10 x %struct.ap_int]], [32 x [10 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0
  %_0171 = bitcast %struct.ssdm_int* %src.addr6.0.011_0 to i8*
  %_1172 = bitcast %struct.ssdm_int* %src.addr6.0.011_1 to i8*
  %_2173 = bitcast %struct.ssdm_int* %src.addr6.0.011_2 to i8*
  %_3174 = bitcast %struct.ssdm_int* %src.addr6.0.011_3 to i8*
  %_4175 = bitcast %struct.ssdm_int* %src.addr6.0.011_4 to i8*
  %_5176 = bitcast %struct.ssdm_int* %src.addr6.0.011_5 to i8*
  %_6177 = bitcast %struct.ssdm_int* %src.addr6.0.011_6 to i8*
  %_7178 = bitcast %struct.ssdm_int* %src.addr6.0.011_7 to i8*
  %_8179 = bitcast %struct.ssdm_int* %src.addr6.0.011_8 to i8*
  %_9180 = bitcast %struct.ssdm_int* %src.addr6.0.011_9 to i8*
  %_10181 = bitcast %struct.ssdm_int* %src.addr6.0.011_10 to i8*
  %_11182 = bitcast %struct.ssdm_int* %src.addr6.0.011_11 to i8*
  %_12183 = bitcast %struct.ssdm_int* %src.addr6.0.011_12 to i8*
  %_13184 = bitcast %struct.ssdm_int* %src.addr6.0.011_13 to i8*
  %_14185 = bitcast %struct.ssdm_int* %src.addr6.0.011_14 to i8*
  %_15186 = bitcast %struct.ssdm_int* %src.addr6.0.011_15 to i8*
  %_16187 = bitcast %struct.ssdm_int* %src.addr6.0.011_16 to i8*
  %_17188 = bitcast %struct.ssdm_int* %src.addr6.0.011_17 to i8*
  %_18189 = bitcast %struct.ssdm_int* %src.addr6.0.011_18 to i8*
  %_19190 = bitcast %struct.ssdm_int* %src.addr6.0.011_19 to i8*
  %_20191 = bitcast %struct.ssdm_int* %src.addr6.0.011_20 to i8*
  %_21192 = bitcast %struct.ssdm_int* %src.addr6.0.011_21 to i8*
  %_22193 = bitcast %struct.ssdm_int* %src.addr6.0.011_22 to i8*
  %_23194 = bitcast %struct.ssdm_int* %src.addr6.0.011_23 to i8*
  %_24195 = bitcast %struct.ssdm_int* %src.addr6.0.011_24 to i8*
  %_25196 = bitcast %struct.ssdm_int* %src.addr6.0.011_25 to i8*
  %_26197 = bitcast %struct.ssdm_int* %src.addr6.0.011_26 to i8*
  %_27198 = bitcast %struct.ssdm_int* %src.addr6.0.011_27 to i8*
  %_28199 = bitcast %struct.ssdm_int* %src.addr6.0.011_28 to i8*
  %_29200 = bitcast %struct.ssdm_int* %src.addr6.0.011_29 to i8*
  %_30201 = bitcast %struct.ssdm_int* %src.addr6.0.011_30 to i8*
  %_31202 = bitcast %struct.ssdm_int* %src.addr6.0.011_31 to i8*
  switch i64 %for.loop.idx18, label %.default203 [
    i64 0, label %.case.0205
    i64 1, label %.case.1206
    i64 2, label %.case.2207
    i64 3, label %.case.3208
    i64 4, label %.case.4209
    i64 5, label %.case.5210
    i64 6, label %.case.6211
    i64 7, label %.case.7212
    i64 8, label %.case.8213
    i64 9, label %.case.9214
    i64 10, label %.case.10215
    i64 11, label %.case.11216
    i64 12, label %.case.12217
    i64 13, label %.case.13218
    i64 14, label %.case.14219
    i64 15, label %.case.15220
    i64 16, label %.case.16221
    i64 17, label %.case.17222
    i64 18, label %.case.18223
    i64 19, label %.case.19224
    i64 20, label %.case.20225
    i64 21, label %.case.21226
    i64 22, label %.case.22227
    i64 23, label %.case.23228
    i64 24, label %.case.24229
    i64 25, label %.case.25230
    i64 26, label %.case.26231
    i64 27, label %.case.27232
    i64 28, label %.case.28233
    i64 29, label %.case.29234
    i64 30, label %.case.30235
    i64 31, label %.exit204
  ]

.default203:                                      ; preds = %5
  unreachable

.case.0205:                                       ; preds = %5
  %_0237 = call i1 @fpga_fifo_exist_16(i8* %_0171)
  br i1 %_0237, label %src.addr6.0.011.case.0, label %6

.case.1206:                                       ; preds = %5
  %_1238 = call i1 @fpga_fifo_exist_16(i8* %_1172)
  br i1 %_1238, label %src.addr6.0.011.case.1, label %6

.case.2207:                                       ; preds = %5
  %_2239 = call i1 @fpga_fifo_exist_16(i8* %_2173)
  br i1 %_2239, label %src.addr6.0.011.case.2, label %6

.case.3208:                                       ; preds = %5
  %_3240 = call i1 @fpga_fifo_exist_16(i8* %_3174)
  br i1 %_3240, label %src.addr6.0.011.case.3, label %6

.case.4209:                                       ; preds = %5
  %_4241 = call i1 @fpga_fifo_exist_16(i8* %_4175)
  br i1 %_4241, label %src.addr6.0.011.case.4, label %6

.case.5210:                                       ; preds = %5
  %_5242 = call i1 @fpga_fifo_exist_16(i8* %_5176)
  br i1 %_5242, label %src.addr6.0.011.case.5, label %6

.case.6211:                                       ; preds = %5
  %_6243 = call i1 @fpga_fifo_exist_16(i8* %_6177)
  br i1 %_6243, label %src.addr6.0.011.case.6, label %6

.case.7212:                                       ; preds = %5
  %_7244 = call i1 @fpga_fifo_exist_16(i8* %_7178)
  br i1 %_7244, label %src.addr6.0.011.case.7, label %6

.case.8213:                                       ; preds = %5
  %_8245 = call i1 @fpga_fifo_exist_16(i8* %_8179)
  br i1 %_8245, label %src.addr6.0.011.case.8, label %6

.case.9214:                                       ; preds = %5
  %_9246 = call i1 @fpga_fifo_exist_16(i8* %_9180)
  br i1 %_9246, label %src.addr6.0.011.case.9, label %6

.case.10215:                                      ; preds = %5
  %_10247 = call i1 @fpga_fifo_exist_16(i8* %_10181)
  br i1 %_10247, label %src.addr6.0.011.case.10, label %6

.case.11216:                                      ; preds = %5
  %_11248 = call i1 @fpga_fifo_exist_16(i8* %_11182)
  br i1 %_11248, label %src.addr6.0.011.case.11, label %6

.case.12217:                                      ; preds = %5
  %_12249 = call i1 @fpga_fifo_exist_16(i8* %_12183)
  br i1 %_12249, label %src.addr6.0.011.case.12, label %6

.case.13218:                                      ; preds = %5
  %_13250 = call i1 @fpga_fifo_exist_16(i8* %_13184)
  br i1 %_13250, label %src.addr6.0.011.case.13, label %6

.case.14219:                                      ; preds = %5
  %_14251 = call i1 @fpga_fifo_exist_16(i8* %_14185)
  br i1 %_14251, label %src.addr6.0.011.case.14, label %6

.case.15220:                                      ; preds = %5
  %_15252 = call i1 @fpga_fifo_exist_16(i8* %_15186)
  br i1 %_15252, label %src.addr6.0.011.case.15, label %6

.case.16221:                                      ; preds = %5
  %_16253 = call i1 @fpga_fifo_exist_16(i8* %_16187)
  br i1 %_16253, label %src.addr6.0.011.case.16, label %6

.case.17222:                                      ; preds = %5
  %_17254 = call i1 @fpga_fifo_exist_16(i8* %_17188)
  br i1 %_17254, label %src.addr6.0.011.case.17, label %6

.case.18223:                                      ; preds = %5
  %_18255 = call i1 @fpga_fifo_exist_16(i8* %_18189)
  br i1 %_18255, label %src.addr6.0.011.case.18, label %6

.case.19224:                                      ; preds = %5
  %_19256 = call i1 @fpga_fifo_exist_16(i8* %_19190)
  br i1 %_19256, label %src.addr6.0.011.case.19, label %6

.case.20225:                                      ; preds = %5
  %_20257 = call i1 @fpga_fifo_exist_16(i8* %_20191)
  br i1 %_20257, label %src.addr6.0.011.case.20, label %6

.case.21226:                                      ; preds = %5
  %_21258 = call i1 @fpga_fifo_exist_16(i8* %_21192)
  br i1 %_21258, label %src.addr6.0.011.case.21, label %6

.case.22227:                                      ; preds = %5
  %_22259 = call i1 @fpga_fifo_exist_16(i8* %_22193)
  br i1 %_22259, label %src.addr6.0.011.case.22, label %6

.case.23228:                                      ; preds = %5
  %_23260 = call i1 @fpga_fifo_exist_16(i8* %_23194)
  br i1 %_23260, label %src.addr6.0.011.case.23, label %6

.case.24229:                                      ; preds = %5
  %_24261 = call i1 @fpga_fifo_exist_16(i8* %_24195)
  br i1 %_24261, label %src.addr6.0.011.case.24, label %6

.case.25230:                                      ; preds = %5
  %_25262 = call i1 @fpga_fifo_exist_16(i8* %_25196)
  br i1 %_25262, label %src.addr6.0.011.case.25, label %6

.case.26231:                                      ; preds = %5
  %_26263 = call i1 @fpga_fifo_exist_16(i8* %_26197)
  br i1 %_26263, label %src.addr6.0.011.case.26, label %6

.case.27232:                                      ; preds = %5
  %_27264 = call i1 @fpga_fifo_exist_16(i8* %_27198)
  br i1 %_27264, label %src.addr6.0.011.case.27, label %6

.case.28233:                                      ; preds = %5
  %_28265 = call i1 @fpga_fifo_exist_16(i8* %_28199)
  br i1 %_28265, label %src.addr6.0.011.case.28, label %6

.case.29234:                                      ; preds = %5
  %_29266 = call i1 @fpga_fifo_exist_16(i8* %_29200)
  br i1 %_29266, label %src.addr6.0.011.case.29, label %6

.case.30235:                                      ; preds = %5
  %_30267 = call i1 @fpga_fifo_exist_16(i8* %_30201)
  br i1 %_30267, label %src.addr6.0.011.case.30, label %6

.exit204:                                         ; preds = %5
  %_31268 = call i1 @fpga_fifo_exist_16(i8* %_31202)
  br i1 %_31268, label %src.addr6.0.011.case.31, label %6

src.addr6.0.011.case.0:                           ; preds = %.case.0205
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_0)
  br label %for.loop.head1

src.addr6.0.011.case.1:                           ; preds = %.case.1206
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_1)
  br label %for.loop.head1

src.addr6.0.011.case.2:                           ; preds = %.case.2207
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_2)
  br label %for.loop.head1

src.addr6.0.011.case.3:                           ; preds = %.case.3208
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_3)
  br label %for.loop.head1

src.addr6.0.011.case.4:                           ; preds = %.case.4209
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_4)
  br label %for.loop.head1

src.addr6.0.011.case.5:                           ; preds = %.case.5210
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_5)
  br label %for.loop.head1

src.addr6.0.011.case.6:                           ; preds = %.case.6211
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_6)
  br label %for.loop.head1

src.addr6.0.011.case.7:                           ; preds = %.case.7212
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_7)
  br label %for.loop.head1

src.addr6.0.011.case.8:                           ; preds = %.case.8213
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_8)
  br label %for.loop.head1

src.addr6.0.011.case.9:                           ; preds = %.case.9214
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_9)
  br label %for.loop.head1

src.addr6.0.011.case.10:                          ; preds = %.case.10215
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_10)
  br label %for.loop.head1

src.addr6.0.011.case.11:                          ; preds = %.case.11216
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_11)
  br label %for.loop.head1

src.addr6.0.011.case.12:                          ; preds = %.case.12217
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_12)
  br label %for.loop.head1

src.addr6.0.011.case.13:                          ; preds = %.case.13218
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_13)
  br label %for.loop.head1

src.addr6.0.011.case.14:                          ; preds = %.case.14219
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_14)
  br label %for.loop.head1

src.addr6.0.011.case.15:                          ; preds = %.case.15220
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_15)
  br label %for.loop.head1

src.addr6.0.011.case.16:                          ; preds = %.case.16221
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_16)
  br label %for.loop.head1

src.addr6.0.011.case.17:                          ; preds = %.case.17222
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_17)
  br label %for.loop.head1

src.addr6.0.011.case.18:                          ; preds = %.case.18223
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_18)
  br label %for.loop.head1

src.addr6.0.011.case.19:                          ; preds = %.case.19224
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_19)
  br label %for.loop.head1

src.addr6.0.011.case.20:                          ; preds = %.case.20225
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_20)
  br label %for.loop.head1

src.addr6.0.011.case.21:                          ; preds = %.case.21226
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_21)
  br label %for.loop.head1

src.addr6.0.011.case.22:                          ; preds = %.case.22227
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_22)
  br label %for.loop.head1

src.addr6.0.011.case.23:                          ; preds = %.case.23228
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_23)
  br label %for.loop.head1

src.addr6.0.011.case.24:                          ; preds = %.case.24229
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_24)
  br label %for.loop.head1

src.addr6.0.011.case.25:                          ; preds = %.case.25230
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_25)
  br label %for.loop.head1

src.addr6.0.011.case.26:                          ; preds = %.case.26231
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_26)
  br label %for.loop.head1

src.addr6.0.011.case.27:                          ; preds = %.case.27232
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_27)
  br label %for.loop.head1

src.addr6.0.011.case.28:                          ; preds = %.case.28233
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_28)
  br label %for.loop.head1

src.addr6.0.011.case.29:                          ; preds = %.case.29234
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_29)
  br label %for.loop.head1

src.addr6.0.011.case.30:                          ; preds = %.case.30235
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_30)
  br label %for.loop.head1

src.addr6.0.011.case.31:                          ; preds = %.exit204
  call void @streamcpy_hls.p0struct.ssdm_int.48.49(%struct.ssdm_int* %dst.addr5.0.012, %struct.ssdm_int* %src.addr6.0.011_31)
  br label %for.loop.head1

; <label>:6:                                      ; preds = %.exit204, %.case.30235, %.case.29234, %.case.28233, %.case.27232, %.case.26231, %.case.25230, %.case.24229, %.case.23228, %.case.22227, %.case.21226, %.case.20225, %.case.19224, %.case.18223, %.case.17222, %.case.16221, %.case.15220, %.case.14219, %.case.13218, %.case.12217, %.case.11216, %.case.10215, %.case.9214, %.case.8213, %.case.7212, %.case.6211, %.case.5210, %.case.4209, %.case.3208, %.case.2207, %.case.1206, %.case.0205
  %dst.addr5.0.0.014.gep15 = getelementptr [32 x [10 x %struct.ap_int]], [32 x [10 x %struct.ap_int]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %7 = bitcast i128* %dst.addr5.0.0.014.gep15 to i8*
  %src.addr6.0.0.013.gep16_0 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_1 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_2 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_3 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_4 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_5 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_6 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_7 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_8 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_8, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_9 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_9, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_10 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_10, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_11 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_11, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_12 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_12, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_13 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_13, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_14 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_14, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_15 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_15, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_16 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_16, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_17 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_17, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_18 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_18, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_19 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_19, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_20 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_20, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_21 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_21, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_22 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_22, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_23 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_23, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_24 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_24, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_25 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_25, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_26 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_26, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_27 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_27, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_28 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_28, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_29 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_29, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_30 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_30, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_31 = getelementptr [10 x %struct.ap_int], [10 x %struct.ap_int]* %_31, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_0269 = bitcast i128* %src.addr6.0.0.013.gep16_0 to i8*
  %_1270 = bitcast i128* %src.addr6.0.0.013.gep16_1 to i8*
  %_2271 = bitcast i128* %src.addr6.0.0.013.gep16_2 to i8*
  %_3272 = bitcast i128* %src.addr6.0.0.013.gep16_3 to i8*
  %_4273 = bitcast i128* %src.addr6.0.0.013.gep16_4 to i8*
  %_5274 = bitcast i128* %src.addr6.0.0.013.gep16_5 to i8*
  %_6275 = bitcast i128* %src.addr6.0.0.013.gep16_6 to i8*
  %_7276 = bitcast i128* %src.addr6.0.0.013.gep16_7 to i8*
  %_8277 = bitcast i128* %src.addr6.0.0.013.gep16_8 to i8*
  %_9278 = bitcast i128* %src.addr6.0.0.013.gep16_9 to i8*
  %_10279 = bitcast i128* %src.addr6.0.0.013.gep16_10 to i8*
  %_11280 = bitcast i128* %src.addr6.0.0.013.gep16_11 to i8*
  %_12281 = bitcast i128* %src.addr6.0.0.013.gep16_12 to i8*
  %_13282 = bitcast i128* %src.addr6.0.0.013.gep16_13 to i8*
  %_14283 = bitcast i128* %src.addr6.0.0.013.gep16_14 to i8*
  %_15284 = bitcast i128* %src.addr6.0.0.013.gep16_15 to i8*
  %_16285 = bitcast i128* %src.addr6.0.0.013.gep16_16 to i8*
  %_17286 = bitcast i128* %src.addr6.0.0.013.gep16_17 to i8*
  %_18287 = bitcast i128* %src.addr6.0.0.013.gep16_18 to i8*
  %_19288 = bitcast i128* %src.addr6.0.0.013.gep16_19 to i8*
  %_20289 = bitcast i128* %src.addr6.0.0.013.gep16_20 to i8*
  %_21290 = bitcast i128* %src.addr6.0.0.013.gep16_21 to i8*
  %_22291 = bitcast i128* %src.addr6.0.0.013.gep16_22 to i8*
  %_23292 = bitcast i128* %src.addr6.0.0.013.gep16_23 to i8*
  %_24293 = bitcast i128* %src.addr6.0.0.013.gep16_24 to i8*
  %_25294 = bitcast i128* %src.addr6.0.0.013.gep16_25 to i8*
  %_26295 = bitcast i128* %src.addr6.0.0.013.gep16_26 to i8*
  %_27296 = bitcast i128* %src.addr6.0.0.013.gep16_27 to i8*
  %_28297 = bitcast i128* %src.addr6.0.0.013.gep16_28 to i8*
  %_29298 = bitcast i128* %src.addr6.0.0.013.gep16_29 to i8*
  %_30299 = bitcast i128* %src.addr6.0.0.013.gep16_30 to i8*
  %_31300 = bitcast i128* %src.addr6.0.0.013.gep16_31 to i8*
  switch i64 %for.loop.idx18, label %.default301 [
    i64 0, label %.case.0303
    i64 1, label %.case.1304
    i64 2, label %.case.2305
    i64 3, label %.case.3306
    i64 4, label %.case.4307
    i64 5, label %.case.5308
    i64 6, label %.case.6309
    i64 7, label %.case.7310
    i64 8, label %.case.8311
    i64 9, label %.case.9312
    i64 10, label %.case.10313
    i64 11, label %.case.11314
    i64 12, label %.case.12315
    i64 13, label %.case.13316
    i64 14, label %.case.14317
    i64 15, label %.case.15318
    i64 16, label %.case.16319
    i64 17, label %.case.17320
    i64 18, label %.case.18321
    i64 19, label %.case.19322
    i64 20, label %.case.20323
    i64 21, label %.case.21324
    i64 22, label %.case.22325
    i64 23, label %.case.23326
    i64 24, label %.case.24327
    i64 25, label %.case.25328
    i64 26, label %.case.26329
    i64 27, label %.case.27330
    i64 28, label %.case.28331
    i64 29, label %.case.29332
    i64 30, label %.case.30333
    i64 31, label %.case.31334
  ]

.default301:                                      ; preds = %6
  unreachable

.case.0303:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_0269, i64 16, i1 false)
  br label %for.loop.head1

.case.1304:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_1270, i64 16, i1 false)
  br label %for.loop.head1

.case.2305:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_2271, i64 16, i1 false)
  br label %for.loop.head1

.case.3306:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_3272, i64 16, i1 false)
  br label %for.loop.head1

.case.4307:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_4273, i64 16, i1 false)
  br label %for.loop.head1

.case.5308:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_5274, i64 16, i1 false)
  br label %for.loop.head1

.case.6309:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_6275, i64 16, i1 false)
  br label %for.loop.head1

.case.7310:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_7276, i64 16, i1 false)
  br label %for.loop.head1

.case.8311:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_8277, i64 16, i1 false)
  br label %for.loop.head1

.case.9312:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_9278, i64 16, i1 false)
  br label %for.loop.head1

.case.10313:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_10279, i64 16, i1 false)
  br label %for.loop.head1

.case.11314:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_11280, i64 16, i1 false)
  br label %for.loop.head1

.case.12315:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_12281, i64 16, i1 false)
  br label %for.loop.head1

.case.13316:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_13282, i64 16, i1 false)
  br label %for.loop.head1

.case.14317:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_14283, i64 16, i1 false)
  br label %for.loop.head1

.case.15318:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_15284, i64 16, i1 false)
  br label %for.loop.head1

.case.16319:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_16285, i64 16, i1 false)
  br label %for.loop.head1

.case.17320:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_17286, i64 16, i1 false)
  br label %for.loop.head1

.case.18321:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_18287, i64 16, i1 false)
  br label %for.loop.head1

.case.19322:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_19288, i64 16, i1 false)
  br label %for.loop.head1

.case.20323:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_20289, i64 16, i1 false)
  br label %for.loop.head1

.case.21324:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_21290, i64 16, i1 false)
  br label %for.loop.head1

.case.22325:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_22291, i64 16, i1 false)
  br label %for.loop.head1

.case.23326:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_23292, i64 16, i1 false)
  br label %for.loop.head1

.case.24327:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_24293, i64 16, i1 false)
  br label %for.loop.head1

.case.25328:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_25294, i64 16, i1 false)
  br label %for.loop.head1

.case.26329:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_26295, i64 16, i1 false)
  br label %for.loop.head1

.case.27330:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_27296, i64 16, i1 false)
  br label %for.loop.head1

.case.28331:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_28297, i64 16, i1 false)
  br label %for.loop.head1

.case.29332:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_29298, i64 16, i1 false)
  br label %for.loop.head1

.case.30333:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_30299, i64 16, i1 false)
  br label %for.loop.head1

.case.31334:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_31300, i64 16, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %.case.31334, %.case.30333, %.case.29332, %.case.28331, %.case.27330, %.case.26329, %.case.25328, %.case.24327, %.case.23326, %.case.22325, %.case.21324, %.case.20323, %.case.19322, %.case.18321, %.case.17320, %.case.16319, %.case.15318, %.case.14317, %.case.13316, %.case.12315, %.case.11314, %.case.10313, %.case.9312, %.case.8311, %.case.7310, %.case.6309, %.case.5308, %.case.4307, %.case.3306, %.case.2305, %.case.1304, %.case.0303, %src.addr6.0.011.case.31, %src.addr6.0.011.case.30, %src.addr6.0.011.case.29, %src.addr6.0.011.case.28, %src.addr6.0.011.case.27, %src.addr6.0.011.case.26, %src.addr6.0.011.case.25, %src.addr6.0.011.case.24, %src.addr6.0.011.case.23, %src.addr6.0.011.case.22, %src.addr6.0.011.case.21, %src.addr6.0.011.case.20, %src.addr6.0.011.case.19, %src.addr6.0.011.case.18, %src.addr6.0.011.case.17, %src.addr6.0.011.case.16, %src.addr6.0.011.case.15, %src.addr6.0.011.case.14, %src.addr6.0.011.case.13, %src.addr6.0.011.case.12, %src.addr6.0.011.case.11, %src.addr6.0.011.case.10, %src.addr6.0.011.case.9, %src.addr6.0.011.case.8, %src.addr6.0.011.case.7, %src.addr6.0.011.case.6, %src.addr6.0.011.case.5, %src.addr6.0.011.case.4, %src.addr6.0.011.case.3, %src.addr6.0.011.case.2, %src.addr6.0.011.case.1, %src.addr6.0.011.case.0, %src.addr6.09.case.31, %src.addr6.09.case.30, %src.addr6.09.case.29, %src.addr6.09.case.28, %src.addr6.09.case.27, %src.addr6.09.case.26, %src.addr6.09.case.25, %src.addr6.09.case.24, %src.addr6.09.case.23, %src.addr6.09.case.22, %src.addr6.09.case.21, %src.addr6.09.case.20, %src.addr6.09.case.19, %src.addr6.09.case.18, %src.addr6.09.case.17, %src.addr6.09.case.16, %src.addr6.09.case.15, %src.addr6.09.case.14, %src.addr6.09.case.13, %src.addr6.09.case.12, %src.addr6.09.case.11, %src.addr6.09.case.10, %src.addr6.09.case.9, %src.addr6.09.case.8, %src.addr6.09.case.7, %src.addr6.09.case.6, %src.addr6.09.case.5, %src.addr6.09.case.4, %src.addr6.09.case.3, %src.addr6.09.case.2, %src.addr6.09.case.1, %src.addr6.09.case.0, %src.addr68.case.31, %src.addr68.case.30, %src.addr68.case.29, %src.addr68.case.28, %src.addr68.case.27, %src.addr68.case.26, %src.addr68.case.25, %src.addr68.case.24, %src.addr68.case.23, %src.addr68.case.22, %src.addr68.case.21, %src.addr68.case.20, %src.addr68.case.19, %src.addr68.case.18, %src.addr68.case.17, %src.addr68.case.16, %src.addr68.case.15, %src.addr68.case.14, %src.addr68.case.13, %src.addr68.case.12, %src.addr68.case.11, %src.addr68.case.10, %src.addr68.case.9, %src.addr68.case.8, %src.addr68.case.7, %src.addr68.case.6, %src.addr68.case.5, %src.addr68.case.4, %src.addr68.case.3, %src.addr68.case.2, %src.addr68.case.1, %src.addr68.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 10
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: noinline
define internal void @copy_out([32 x [32 x %struct.ap_int]]* "orig.arg.no"="0", [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_0, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_1, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_2, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_3, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_4, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_5, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_6, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_7, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_8, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_9, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_10, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_11, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_12, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_13, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_14, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_15, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_16, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_17, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_18, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_19, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_20, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_21, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_22, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_23, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_24, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_25, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_26, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_27, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_28, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_29, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_30, [32 x %struct.ap_int]* noalias "orig.arg.no"="1" %_31, [32 x [10 x %struct.ap_int]]* "orig.arg.no"="2", [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_01, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_110, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_211, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_312, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_413, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_514, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_615, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_716, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_817, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_918, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1019, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1120, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1221, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1322, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1423, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1524, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1625, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1726, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1827, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_1928, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2029, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2130, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2231, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2332, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2433, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2534, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2635, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2736, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2837, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_2938, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_3039, [10 x %struct.ap_int]* noalias "orig.arg.no"="3" %_3140, %"class.hls::stream"* "orig.arg.no"="4", %"class.hls::stream"* noalias align 512 "orig.arg.no"="5", [10 x %struct.ap_int]* "orig.arg.no"="6", [10 x %struct.ap_int]* noalias align 512 "orig.arg.no"="7") #5 {
entry:
  call void @onebyonecpy_hls.p0a32a32struct.ap_int.35.42([32 x [32 x %struct.ap_int]]* %0, [32 x %struct.ap_int]* %_0, [32 x %struct.ap_int]* %_1, [32 x %struct.ap_int]* %_2, [32 x %struct.ap_int]* %_3, [32 x %struct.ap_int]* %_4, [32 x %struct.ap_int]* %_5, [32 x %struct.ap_int]* %_6, [32 x %struct.ap_int]* %_7, [32 x %struct.ap_int]* %_8, [32 x %struct.ap_int]* %_9, [32 x %struct.ap_int]* %_10, [32 x %struct.ap_int]* %_11, [32 x %struct.ap_int]* %_12, [32 x %struct.ap_int]* %_13, [32 x %struct.ap_int]* %_14, [32 x %struct.ap_int]* %_15, [32 x %struct.ap_int]* %_16, [32 x %struct.ap_int]* %_17, [32 x %struct.ap_int]* %_18, [32 x %struct.ap_int]* %_19, [32 x %struct.ap_int]* %_20, [32 x %struct.ap_int]* %_21, [32 x %struct.ap_int]* %_22, [32 x %struct.ap_int]* %_23, [32 x %struct.ap_int]* %_24, [32 x %struct.ap_int]* %_25, [32 x %struct.ap_int]* %_26, [32 x %struct.ap_int]* %_27, [32 x %struct.ap_int]* %_28, [32 x %struct.ap_int]* %_29, [32 x %struct.ap_int]* %_30, [32 x %struct.ap_int]* %_31)
  call void @onebyonecpy_hls.p0a32a10struct.ap_int.43.50([32 x [10 x %struct.ap_int]]* %1, [10 x %struct.ap_int]* %_01, [10 x %struct.ap_int]* %_110, [10 x %struct.ap_int]* %_211, [10 x %struct.ap_int]* %_312, [10 x %struct.ap_int]* %_413, [10 x %struct.ap_int]* %_514, [10 x %struct.ap_int]* %_615, [10 x %struct.ap_int]* %_716, [10 x %struct.ap_int]* %_817, [10 x %struct.ap_int]* %_918, [10 x %struct.ap_int]* %_1019, [10 x %struct.ap_int]* %_1120, [10 x %struct.ap_int]* %_1221, [10 x %struct.ap_int]* %_1322, [10 x %struct.ap_int]* %_1423, [10 x %struct.ap_int]* %_1524, [10 x %struct.ap_int]* %_1625, [10 x %struct.ap_int]* %_1726, [10 x %struct.ap_int]* %_1827, [10 x %struct.ap_int]* %_1928, [10 x %struct.ap_int]* %_2029, [10 x %struct.ap_int]* %_2130, [10 x %struct.ap_int]* %_2231, [10 x %struct.ap_int]* %_2332, [10 x %struct.ap_int]* %_2433, [10 x %struct.ap_int]* %_2534, [10 x %struct.ap_int]* %_2635, [10 x %struct.ap_int]* %_2736, [10 x %struct.ap_int]* %_2837, [10 x %struct.ap_int]* %_2938, [10 x %struct.ap_int]* %_3039, [10 x %struct.ap_int]* %_3140)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %2, %"class.hls::stream"* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a10struct.ap_int([10 x %struct.ap_int]* %4, [10 x %struct.ap_int]* align 512 %5)
  ret void
}

declare void @apatb_matrix_matrix_mult_streaming_hw([32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, %"class.hls::stream"*, %struct.ap_int*)

define void @matrix_matrix_mult_streaming_hw_stub_wrapper([32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [32 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, [10 x %struct.ap_int]*, %"class.hls::stream"*, %struct.ap_int*) #6 {
entry:
  %66 = alloca [32 x [32 x %struct.ap_int]]
  %67 = alloca [32 x [10 x %struct.ap_int]]
  %68 = bitcast %struct.ap_int* %65 to [10 x %struct.ap_int]*
  call void @copy_out([32 x [32 x %struct.ap_int]]* %66, [32 x %struct.ap_int]* %0, [32 x %struct.ap_int]* %1, [32 x %struct.ap_int]* %2, [32 x %struct.ap_int]* %3, [32 x %struct.ap_int]* %4, [32 x %struct.ap_int]* %5, [32 x %struct.ap_int]* %6, [32 x %struct.ap_int]* %7, [32 x %struct.ap_int]* %8, [32 x %struct.ap_int]* %9, [32 x %struct.ap_int]* %10, [32 x %struct.ap_int]* %11, [32 x %struct.ap_int]* %12, [32 x %struct.ap_int]* %13, [32 x %struct.ap_int]* %14, [32 x %struct.ap_int]* %15, [32 x %struct.ap_int]* %16, [32 x %struct.ap_int]* %17, [32 x %struct.ap_int]* %18, [32 x %struct.ap_int]* %19, [32 x %struct.ap_int]* %20, [32 x %struct.ap_int]* %21, [32 x %struct.ap_int]* %22, [32 x %struct.ap_int]* %23, [32 x %struct.ap_int]* %24, [32 x %struct.ap_int]* %25, [32 x %struct.ap_int]* %26, [32 x %struct.ap_int]* %27, [32 x %struct.ap_int]* %28, [32 x %struct.ap_int]* %29, [32 x %struct.ap_int]* %30, [32 x %struct.ap_int]* %31, [32 x [10 x %struct.ap_int]]* %67, [10 x %struct.ap_int]* %32, [10 x %struct.ap_int]* %33, [10 x %struct.ap_int]* %34, [10 x %struct.ap_int]* %35, [10 x %struct.ap_int]* %36, [10 x %struct.ap_int]* %37, [10 x %struct.ap_int]* %38, [10 x %struct.ap_int]* %39, [10 x %struct.ap_int]* %40, [10 x %struct.ap_int]* %41, [10 x %struct.ap_int]* %42, [10 x %struct.ap_int]* %43, [10 x %struct.ap_int]* %44, [10 x %struct.ap_int]* %45, [10 x %struct.ap_int]* %46, [10 x %struct.ap_int]* %47, [10 x %struct.ap_int]* %48, [10 x %struct.ap_int]* %49, [10 x %struct.ap_int]* %50, [10 x %struct.ap_int]* %51, [10 x %struct.ap_int]* %52, [10 x %struct.ap_int]* %53, [10 x %struct.ap_int]* %54, [10 x %struct.ap_int]* %55, [10 x %struct.ap_int]* %56, [10 x %struct.ap_int]* %57, [10 x %struct.ap_int]* %58, [10 x %struct.ap_int]* %59, [10 x %struct.ap_int]* %60, [10 x %struct.ap_int]* %61, [10 x %struct.ap_int]* %62, [10 x %struct.ap_int]* %63, %"class.hls::stream"* null, %"class.hls::stream"* %64, [10 x %struct.ap_int]* null, [10 x %struct.ap_int]* %68)
  %69 = bitcast [32 x [32 x %struct.ap_int]]* %66 to [32 x %struct.ap_int]*
  %70 = bitcast [32 x [10 x %struct.ap_int]]* %67 to [10 x %struct.ap_int]*
  %71 = bitcast [10 x %struct.ap_int]* %68 to %struct.ap_int*
  call void @matrix_matrix_mult_streaming_hw_stub([32 x %struct.ap_int]* %69, [10 x %struct.ap_int]* %70, %"class.hls::stream"* %64, %struct.ap_int* %71)
  call void @copy_in([32 x [32 x %struct.ap_int]]* %66, [32 x %struct.ap_int]* %0, [32 x %struct.ap_int]* %1, [32 x %struct.ap_int]* %2, [32 x %struct.ap_int]* %3, [32 x %struct.ap_int]* %4, [32 x %struct.ap_int]* %5, [32 x %struct.ap_int]* %6, [32 x %struct.ap_int]* %7, [32 x %struct.ap_int]* %8, [32 x %struct.ap_int]* %9, [32 x %struct.ap_int]* %10, [32 x %struct.ap_int]* %11, [32 x %struct.ap_int]* %12, [32 x %struct.ap_int]* %13, [32 x %struct.ap_int]* %14, [32 x %struct.ap_int]* %15, [32 x %struct.ap_int]* %16, [32 x %struct.ap_int]* %17, [32 x %struct.ap_int]* %18, [32 x %struct.ap_int]* %19, [32 x %struct.ap_int]* %20, [32 x %struct.ap_int]* %21, [32 x %struct.ap_int]* %22, [32 x %struct.ap_int]* %23, [32 x %struct.ap_int]* %24, [32 x %struct.ap_int]* %25, [32 x %struct.ap_int]* %26, [32 x %struct.ap_int]* %27, [32 x %struct.ap_int]* %28, [32 x %struct.ap_int]* %29, [32 x %struct.ap_int]* %30, [32 x %struct.ap_int]* %31, [32 x [10 x %struct.ap_int]]* %67, [10 x %struct.ap_int]* %32, [10 x %struct.ap_int]* %33, [10 x %struct.ap_int]* %34, [10 x %struct.ap_int]* %35, [10 x %struct.ap_int]* %36, [10 x %struct.ap_int]* %37, [10 x %struct.ap_int]* %38, [10 x %struct.ap_int]* %39, [10 x %struct.ap_int]* %40, [10 x %struct.ap_int]* %41, [10 x %struct.ap_int]* %42, [10 x %struct.ap_int]* %43, [10 x %struct.ap_int]* %44, [10 x %struct.ap_int]* %45, [10 x %struct.ap_int]* %46, [10 x %struct.ap_int]* %47, [10 x %struct.ap_int]* %48, [10 x %struct.ap_int]* %49, [10 x %struct.ap_int]* %50, [10 x %struct.ap_int]* %51, [10 x %struct.ap_int]* %52, [10 x %struct.ap_int]* %53, [10 x %struct.ap_int]* %54, [10 x %struct.ap_int]* %55, [10 x %struct.ap_int]* %56, [10 x %struct.ap_int]* %57, [10 x %struct.ap_int]* %58, [10 x %struct.ap_int]* %59, [10 x %struct.ap_int]* %60, [10 x %struct.ap_int]* %61, [10 x %struct.ap_int]* %62, [10 x %struct.ap_int]* %63, %"class.hls::stream"* null, %"class.hls::stream"* %64, [10 x %struct.ap_int]* null, [10 x %struct.ap_int]* %68)
  ret void
}

declare void @matrix_matrix_mult_streaming_hw_stub([32 x %struct.ap_int]*, [10 x %struct.ap_int]*, %"class.hls::stream"*, %struct.ap_int*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { noinline "fpga.wrapper.func"="copyin" }
attributes #5 = { noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
