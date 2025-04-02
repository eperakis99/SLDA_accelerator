#include <hls_vector.h>
#include "hls_stream.h"
#include "hls_streamofblocks.h"
#include "ap_axi_sdata.h"
#include <iostream>
#include <numeric>

#define DIMENSION 512
#define BLOCK_SIZE 16
#define NUM_OF_BLOCKS 32 // (DIMENSION / BLOCK_SIZE)
#define NUM_CLASSES 10

#ifndef DATA_BLOCK_TYPE
#define DATA_BLOCK_TYPE

typedef struct{
	int8_t sdata[BLOCK_SIZE];//128 bit data width. The max PS-PL interface can support
} stream_data;

typedef ap_axistruct<stream_data, 2, 5, 6> data_block;
typedef ap_axis<128, 2, 5, 6> data_block_new;

#endif


//Unit that supports vector addition, subtraction, scaling
void vec_vec_op_streaming(uint8_t op, hls::stream<data_block>& vec1, hls::stream<data_block>& vec2, hls::stream<data_block>& vec_out);

//Adds two vectors
void vector_add(hls::stream<data_block>& vec1, hls::stream<data_block>& vec2, hls::stream<data_block>& vec_out);

//Adds two vectors overload
void vector_add_new(hls::stream<stream_data>& vec1, hls::stream<data_block>& vec2, hls::stream<data_block>& vec_out);

//Adds two vectors
void vector_add2(hls::stream<data_block>& vec1, hls::stream<data_block>& vec2, hls::stream<data_block>& vec_out);

//Adds two vectors overload
void vector_add2_new(hls::stream<stream_data>& vec1, hls::stream<data_block>& vec2, hls::stream<stream_data>& vec_out);

//Subtracts two vectors
void vector_subtract(hls::stream<data_block>& vec1, hls::stream<data_block>& vec2, hls::stream<data_block>& vec_out);

//Subtracts two vectors overload
void vector_subtract_new(hls::stream<data_block>& vec1, hls::stream<data_block>& vec2, hls::stream<stream_data>& vec_out);

//Scales a vector
void vector_scale(int32_t scalar, hls::stream<data_block>& vec, hls::stream<data_block>& vec_out);

//Scales a vector overload
void vector_scale_new(int32_t scalar, hls::stream<data_block>& vec, hls::stream<stream_data>& vec_out);


//-------------------------------------------------------------------------------------------------------------

//Scales a vector overload
void vector_scale_new2(int32_t scalar, hls::stream<stream_data>& vec, hls::stream<stream_data>& vec_out);


