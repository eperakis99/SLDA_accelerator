#include "SLDA_final.h"
#include <stdio.h>
#include <cstdlib>
#include <ctime>



int main(){

hls::stream<data_block_new, 640> mu_in("mu");
hls::stream<data_block_new, 64> feature_vector1("fv1");
hls::stream<data_block_new, 64> feature_vector2("fv2");
hls::stream<data_block_new, 4096> Lambda("lambda");
data_block_new mu;
data_block_new fv;
data_block_new l;
int ready = 0;
int complete = 0;
srand(time(NULL));

LOOP_LAMBDA:
for(int i = 0; i < N; i++){
	for(int j = 0; j < N; j++){
		int x1 = 0;
		int x2 = 7;
		for(int k = 0; k < 16; k++){
			l.data += (ap_ufixed<8, 4, AP_RND_CONV, AP_SAT_SYM>)(i*j%255);
			l.data << 8;
			x1 += 8;
			x2 += 8;
		}
		//l.data = (ap_int<DATA_WIDTH>)0x11111111111111111111111111111111;
		if(i == N-1 && j == N-1) l.last = 1;
		Lambda.write(l);
	}
}


LOOP_MU:
for(int i = 0; i < NUM_CLASSES; i++){
	for(int j = 0; j < N; j++){
		int x1 = 0;
		int x2 = 7;
		for(int k = 0; k < 16; k++){
			mu.data += (ap_ufixed<8, 4, AP_RND_CONV, AP_SAT_SYM>)((i+10*j)%255);
			mu.data << 8;
			x1 += 8;
			x2 += 8;
		}
		//mu.data = (ap_int<DATA_WIDTH>)(i*j + 2000) % 10000;
		if(i == NUM_CLASSES-1 && j == N-1) mu.last = 1;
		mu_in.write(mu);
	}
}


LOOP_FV:
for(int j = 0; j < N; j++){
	fv.data = (ap_int<DATA_WIDTH>)(5*j + 7000) % 10000;
	if(j == N-1) fv.last = 1;
	feature_vector1.write(fv);
	feature_vector2.write(fv);
}



SLDA_final(mu_in, feature_vector1, feature_vector2, Lambda, scores, 1, 1, &ready, &complete);
std::cout << "ready" << ready << std::endl;
std::cout << "complete" << complete << std::endl;


/*LOOP_MU_2:
for(int i = 0; i < NUM_CLASSES; i++){
	for(int j = 0; j < NUM_OF_BLOCKS; j++){
		mu.data = (ap_int<DATA_WIDTH>)(i*j + 2000) % 10000;
		if(i == NUM_CLASSES-1 && j == NUM_OF_BLOCKS-1) mu.last = 1;
		mu_in.write(mu);
	}
}


LOOP_FV_2:
for(int j = 0; j < NUM_OF_BLOCKS; j++){
	fv.data = (ap_int<DATA_WIDTH>)(5*j + 7000) % 10000;
	if(j == NUM_OF_BLOCKS-1) fv.last = 1;
	feature_vector1.write(fv);
	feature_vector2.write(fv);
}

SLDA_final(mu_in, feature_vector1, feature_vector2, Lambda, scores, 0, 0, &ready, &complete);
std::cout << "ready" << ready << std::endl;
std::cout << "complete" << complete << std::endl;*/



#ifndef __SYNTHESIS__
	PRINT_SCORES:
	for(int i = 0; i < NUM_CLASSES; i++){
		std::cout << "score[" << i << "]: " << scores[i] << std::endl;
	}
#endif




	return 0;
}

