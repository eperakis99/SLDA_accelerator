#include "matrix_matrix_mult_streaming.h"
#include <bitset>

ap_int<4*DATA_WIDTH> W[M][N];
ap_int<32> b[M];
ap_int<32> scores[M];


void matrix_matrix_mult_streaming(ap_int<DATA_WIDTH> A[N][N], ap_int<DATA_WIDTH> B[N][M], hls::stream<data_block_new>& feature_vector
		,ap_int<32> scores[M]){

#pragma HLS INTERFACE ap_ctrl_chain port=return
#pragma HLS INTERFACE axis depth=64 port=feature_vector
#pragma HLS INTERFACE bram storage_type=ram_t2p depth=2048 port=A
#pragma HLS INTERFACE bram storage_type=ram_t2p depth=640 port=B
//#pragma HLS INTERFACE ap_fifo max_widen_bitwidth=128 depth=1 port=R

#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS

#pragma HLS DATAFLOW


	compute_weights_with_matrix_mult(A, B);
	compute_biases_with_multiple_dot_products(B);
	compute_scores(feature_vector, scores);

}



ap_int<DATA_WIDTH> bitwise_addition(ap_int<DATA_WIDTH> x, ap_int<DATA_WIDTH> y){
// Iterate till there is no carry
while (y != 0)
{
	// carry should be unsigned to
	// deal with -ve numbers
	// carry now contains common
	//set bits of x and y
	ap_uint<DATA_WIDTH> carry = x & y;

	// Sum of bits of x and y where at
	//least one of the bits is not set
	x = x ^ y;

	// Carry is shifted by one so that adding
	// it to x gives the required sum
	y = carry << 1;
}
return x;
}


ap_int<DATA_WIDTH> bitwise_multiplication(ap_int<DATA_WIDTH> a, ap_int<DATA_WIDTH> b){
	ap_int<DATA_WIDTH> result = 0;
   while (b > 0) {
	  if (b & 1) {
		 result += a;
		 }
	  a = a << 1;
	  b = b >> 1;
   }
   return result;
}



void compute_weights_with_matrix_mult(ap_int<DATA_WIDTH> A[N][N], ap_int<DATA_WIDTH> B[N][M]) {

    #pragma HLS ARRAY_PARTITION variable=A block factor=64 dim=2
    #pragma HLS array_partition variable=B block factor=64 dim=1
	#pragma HLS ARRAY_PARTITION variable=W block factor=64 dim=2
    //#pragma HLS array_partition variable=C block factor=32 dim=1

    // Perform matrix multiplication
WEIGHTS_LOOP:
    for(int i = 0; i < M; i++) { //Iterate columns of B
        for(int j = 0; j < N; j++) { //Iterate rows of A
#pragma HLS PIPELINE II=1
        	W[i][j] = 0;
        	ap_int<4*DATA_WIDTH> temp = 0; //Used to store partial results from the systolic arrays
            for(int k = 0; k < N; k+=P) { //Determines how many blocks are accessed in parallel
                for(int p = 0; p < P; p++) {//Process the blocks in parallel using unrolling
				#pragma HLS unroll factor=32
                	int x1[P] = {0};
                	int x2[P] = {7,7,7,7,7,7,7,7,
                				 7,7,7,7,7,7,7,7,
                				 7,7,7,7,7,7,7,7,
                				 7,7,7,7,7,7,7,7};
                	ap_ufixed<8, 4, AP_RND_CONV, AP_WRAP> row = A[j][k+p];
                	ap_ufixed<8, 4, AP_RND_CONV, AP_WRAP> col = B[k+p][i];
                	for(int l = 0; l < 16; l++){//process all 16 elements in the 128bit vector
                		temp += ap_ufixed<8, 4, AP_RND_CONV, AP_WRAP>(row.range(x2[p], x1[p])) * ap_ufixed<8, 4, AP_RND_CONV, AP_WRAP>(col.range(x2[p], x1[p]));
#ifndef __SYNTHESIS__
                		std::cout << "W[" << i << "][" << j << "] : " << std::fixed;
                		int k1 = 32*l;
                		int k2 = 32*l + 31;
                		std::cout << ap_ufixed<32, 4, AP_RND_CONV, AP_WRAP>(temp.range(k2,k1)) << std::endl;
#endif
                		temp << 32;
                		x1[p] += 8;
                		x2[p] += 8;
                	}
                }
            }
            W[i][j] = temp; //Write the output vector in BRAM
        }
    }
}


void compute_biases_with_multiple_dot_products(ap_int<DATA_WIDTH> D[N][M]) {

    #pragma HLS ARRAY_PARTITION variable=D block factor=64 dim=1
    #pragma HLS array_partition variable=W block factor=64 dim=2
    #pragma HLS array_partition variable=b complete dim=0

BIASES_LOOP:
    for(int j = 0; j < M; j++) {//Iterate columns of D and rows of W
#pragma HLS PIPELINE II=1
    	//b[j] = 0;
    	ap_int<32> temp = 0; //Used to store partial results from the systolic arrays
        for(int k = 0; k < N; k+=P) {//Determines how many blocks are accessed in parallel
            for(int p = 0; p < P; p++) {//Process the blocks in parallel using unrolling
			#pragma HLS unroll factor=32
            	int x1 = 0;
				int x2 = 7;
				for(int l = 0; l < 16; l++){//process all 16 elements in the 128bit vector
					ap_ufixed<32, 4, AP_RND_CONV, AP_SAT_SYM> mean_extended = ap_ufixed<8, 4, AP_RND_CONV, AP_SAT_SYM>(D[k+p][j].range(x2, x1));
					temp += ap_ufixed<32, 4, AP_RND_CONV, AP_SAT_SYM>(W[j][k+p].range(x2, x1)) * mean_extended;
					x1 += 8;
					x2 += 8;
				}
            }
        }
        b[j] = temp;
    }

}


void compute_scores(hls::stream<data_block_new>& feature_vector, ap_int<32> scores[M]){
/*
#pragma HLS LOOP_MERGE

#pragma HLS DEPENDENCE array true RAW intra variable=b
#pragma HLS DEPENDENCE array true RAW intra variable=W
*/

#pragma HLS ARRAY_PARTITION variable=b dim=1 complete

	ap_int<DATA_WIDTH> fv_data[N];

	for(int k = 0; k < N; k++){
		fv_data[k] = feature_vector.read().data;
	}

SCORES_LOOP:
	for(int j = 0; j < M; j++) {
	#pragma HLS PIPELINE II=2
		//b[j] = 0;
		ap_int<32> temp = 0;
		for(int k = 0; k < N; k+=P) {
			#pragma HLS unroll factor=32
			for(int p = 0; p < P; p++) {
				int x1 = 0;
				int x2 = 7;
				for(int l = 0; l < 16; l++){
					temp += ap_ufixed<8, 4, AP_RND_CONV, AP_SAT_SYM>(W[j][k+p].range(x2, x1)) * ap_ufixed<8, 4, AP_RND_CONV, AP_SAT_SYM>(fv_data[k+p].range(x2, x1));
					x1 += 8;
					x2 += 8;
				}
			}
		}
		std::cout << b[j] << std::endl;
		scores[j] = temp + b[j];
		std::cout << scores[j] << std::endl;
	}
}


