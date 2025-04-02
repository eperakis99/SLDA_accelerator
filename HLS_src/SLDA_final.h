#include "vec_vec_op_streaming.h"
#include "mat_vec_mult_streaming.h"
#include "matrix_matrix_mult_streaming.h"
#include "training_module.h"


static ap_int<128> lambda[N][N];

void SLDA_final(hls::stream<data_block_new>& mu_in, hls::stream<data_block_new>& feature_vector1, hls::stream<data_block_new>& feature_vector2,
				hls::stream<data_block_new>& Lambda, ap_int<32> scores[M], int reset, int init, int* ready, int* complete);



void init_module(hls::stream<data_block_new>& Lambda);

void SLDA_update(hls::stream<data_block_new>& feature_vector, ap_int<32> scores[M]);
