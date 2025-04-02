#include "SLDA_final.h"

//ap_int<DATA_WIDTH> scores[M];
//ap_int<128> lambda[NUM_OF_BLOCKS][NUM_OF_BLOCKS];
ap_int<DATA_WIDTH> means[N][M];

void SLDA_final(hls::stream<data_block_new>& mu_in, hls::stream<data_block_new>& feature_vector1, hls::stream<data_block_new>& feature_vector2,
				hls::stream<data_block_new>& Lambda, ap_int<32> scores[M], int reset, int init, int* ready, int* complete){
#pragma HLS INTERFACE bram storage_type=ram_1p depth=10 port=scores
#pragma HLS INTERFACE s_axilite port=complete bundle=CTRL
#pragma HLS INTERFACE s_axilite port=ready bundle=CTRL
#pragma HLS INTERFACE s_axilite port=init bundle=CTRL
#pragma HLS INTERFACE s_axilite port=reset bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS INTERFACE axis register_mode=both register depth=640 port=mu_in
#pragma HLS INTERFACE axis register_mode=both register depth=64 port=feature_vector1
#pragma HLS INTERFACE axis register_mode=both register depth=64 port=feature_vector2
#pragma HLS INTERFACE axis register_mode=both register depth=4096 port=Lambda

#pragma HLS DATAFLOW
	std::cout << "ready" << *ready << std::endl;

	if(!(*ready)){
		init_module(Lambda);
		*ready = 1;
	}
	update_means(mu_in, feature_vector1);
	SLDA_update(feature_vector2, scores);
	//compute_scores(feature_vector, W, b, scores);

}


void init_module(hls::stream<data_block_new>& Lambda){

INIT_LOOP:
	for(int i = 0; i < N; i++){
		for(int j = 0; j < N; j++){
			lambda[i][j] = Lambda.read().data;
		}
	}

}


void SLDA_update(hls::stream<data_block_new>& feature_vector, ap_int<32> scores[M]){
//#pragma HLS DATAFLOW

/*	for(int i = 0; i < NUM_OF_BLOCKS; i++){
		for(int j = 0; j < NUM_CLASSES; j++){
			std::cout << "means:" << means[i][j] << std::endl;
		}
	}*/
	compute_weights_with_matrix_mult(lambda, means);
	compute_biases_with_multiple_dot_products(means);
	compute_scores(feature_vector, scores);

/*	for(int j = 0; j < NUM_CLASSES; j++){
		std::cout << "b[" << j << "]: " << b[j] << std::endl;
	}*/

}

