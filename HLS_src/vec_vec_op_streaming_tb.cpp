#include "vec_vec_op_streaming.h"
#include <stdio.h>

int main(){


	hls::stream<data_block> vec1;
	hls::stream<data_block> vec2;
	hls::stream<data_block> vec_out;
	data_block vec1_data[NUM_OF_BLOCKS];
	data_block vec2_data[NUM_OF_BLOCKS];


	for(int j = 0; j < NUM_OF_BLOCKS; j++){
		for(int i = 0; i < BLOCK_SIZE; i++){
				vec1_data[j].data.sdata[i] = i;
				vec2_data[j].data.sdata[i] = i;
			}

		vec1_data[j].id = 0;
		vec1_data[j].keep = 1;
		vec1_data[j].strb = 1;
		vec1_data[j].user = 1;
		vec1_data[j].dest = 0;
		vec2_data[j].id = 1;
		vec2_data[j].keep = 1;
		vec2_data[j].strb = 1;
		vec2_data[j].user = 1;
		vec2_data[j].dest = 0;

		vec1.write(vec1_data[j]);
		vec2.write(vec2_data[j]);
	}



	vec_vec_op_streaming(4, vec1, vec2, vec_out);

	data_block out[NUM_OF_BLOCKS];
	for(int k = 0; k < NUM_OF_BLOCKS; k++){
		out[k] = vec_out.read();

#ifndef __SYNTHESIS__
	for(int j = 0; j < BLOCK_SIZE; j++){
			std::cout << "out_vec[i]: " << out[k].data.sdata[j]<< "\n" << std::endl;
		}
#endif
	}

	return 0;
}
