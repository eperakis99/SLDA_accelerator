#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <iostream>
#include <numeric>
#include "hls_math.h"

#define N 64
#define M 10
#define P 64
#define DATA_WIDTH 128

extern ap_int<4*DATA_WIDTH> W[M][N];
extern ap_int<32> b[M];
extern ap_int<32> scores[M];

typedef ap_axis<128, 2, 5, 6> data_block_new;

void matrix_matrix_mult_streaming(ap_int<DATA_WIDTH> A[N][N], ap_int<DATA_WIDTH> B[N][M], hls::stream<data_block_new>& feature_vector,
								  ap_int<32> scores[M]);


void compute_weights_with_matrix_mult(ap_int<DATA_WIDTH> A[N][N], ap_int<DATA_WIDTH> B[N][M]);
void compute_biases_with_multiple_dot_products(ap_int<DATA_WIDTH> D[N][M]);
void compute_scores(hls::stream<data_block_new>& feature_vector, ap_int<32> scores[M]);

ap_int<DATA_WIDTH> bitwise_addition(ap_int<DATA_WIDTH> x, ap_int<DATA_WIDTH> y);
ap_int<DATA_WIDTH> bitwise_multiplication(ap_int<DATA_WIDTH> a, ap_int<DATA_WIDTH> b);

