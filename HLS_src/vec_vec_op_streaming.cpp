#include "vec_vec_op_streaming.h"

//Top function for local testbench
void vec_vec_op_streaming(uint8_t op, hls::stream<data_block>& vec1, hls::stream<data_block>& vec2, hls::stream<data_block>& vec_out){
#pragma HLS INTERFACE s_axilite port=op bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=return bundle=BUS_A
#pragma HLS INTERFACE axis port=vec1
#pragma HLS INTERFACE axis port=vec2
#pragma HLS INTERFACE axis port=vec_out





	if(op == 0){
		vector_add(vec1, vec2, vec_out);
	}
	else if(op == 1){
		vector_subtract(vec1, vec2, vec_out);
	}
	else if(op == 2){
		float scalar = 10;
		vector_scale(scalar, vec1, vec_out);
	}
	else{
		vector_add2(vec1, vec2, vec_out);
	}



}


void vector_add(hls::stream<data_block>& vec1, hls::stream<data_block>& vec2, hls::stream<data_block>& vec_out){
	data_block data1[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data1[0],data1[1],data1[2],data1[3]
	data_block data2[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data2[0],data2[1],data2[2],data2[3]
	data_block data_out[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data_out[0],data_out[1],data_out[2],data_out[3]


BLOCK_CACHE_LOOP:	for(int j = 0; j < NUM_OF_BLOCKS; j++){
#pragma HLS PIPELINE II=1
	data1[j] = vec1.read();
	data2[j] = vec2.read();


ADD_LOOP:	for(int i = 0; i < BLOCK_SIZE; i++){
#pragma HLS PIPELINE II=1
		data_out[j].data.sdata[i] = data1[j].data.sdata[i] + data2[j].data.sdata[i];
		if(j == NUM_OF_BLOCKS - 1){ data1[j].last = 1; data2[j].last = 1;}
	}

	data_out[j].user = data1[j].user;
	data_out[j].last = data1[j].last;
	data_out[j].dest = data1[j].dest;
	data_out[j].id = data1[j].id;
	data_out[j].strb = data1[j].strb;
	data_out[j].keep = data1[j].keep;


	vec_out.write(data_out[j]);

	}


}





//OVERLOADED
void vector_add_new(hls::stream<stream_data>& vec1, hls::stream<data_block>& vec2, hls::stream<data_block>& vec_out){
	stream_data data1;
#pragma HLS AGGREGATE variable=data1,data1,data1,data1
	data_block data2;
#pragma HLS AGGREGATE variable=data2,data2,data2,data2
	data_block data_out;
#pragma HLS AGGREGATE variable=data_out,data_out,data_out,data_out

//if(vec1.empty() || vec_out.full()) return;

BLOCK_CACHE_LOOP:	for(int j = 0; j < NUM_OF_BLOCKS; j++){
#pragma HLS PIPELINE II=1
	data1 = vec1.read();
	data2 = vec2.read();


ADD_LOOP:	for(int i = 0; i < BLOCK_SIZE; i++){
#pragma HLS PIPELINE II=1
		data_out.data.sdata[i] = data1.sdata[i] + data2.data.sdata[i];
		if(j == NUM_OF_BLOCKS - 1){ data2.last = 1;}
	}


	data_out.user = data2.user;
	data_out.last = data2.last;
	data_out.dest = data2.dest;
	data_out.id = data2.id;
	data_out.strb = data2.strb;
	data_out.keep = data2.keep;

	vec_out.write(data_out);

	}




}




void vector_add2(hls::stream<data_block>& vec1, hls::stream<data_block>& vec2, hls::stream<data_block>& vec_out){

	data_block data1[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data1[0],data1[1],data1[2],data1[3]
	data_block data2[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data2[0],data2[1],data2[2],data2[3]
	data_block data_out[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data_out[0],data_out[1],data_out[2],data_out[3]


BLOCK_CACHE_LOOP:	for(int j = 0; j < 3; j++){
#pragma HLS PIPELINE II=1
	data1[j] = vec1.read();
	data2[j] = vec2.read();


ADD_LOOP:	for(int i = 0; i < BLOCK_SIZE; i++){
#pragma HLS PIPELINE II=1
		data_out[j].data.sdata[i] = data1[j].data.sdata[i] + data2[j].data.sdata[i];
		if(j == NUM_OF_BLOCKS - 1) data1[j].last = 1;
	}

	data_out[j].user = data1[j].user;
	data_out[j].last = data1[j].last;
	data_out[j].dest = data1[j].dest;
	data_out[j].id = data1[j].id;
	data_out[j].strb = data1[j].strb;
	data_out[j].keep = data1[j].keep;


	vec_out.write(data_out[j]);

	}
}


//OVERLOADED
void vector_add2_new(hls::stream<stream_data>& vec1, hls::stream<data_block>& vec2, hls::stream<stream_data>& vec_out){

	stream_data data1;
//#pragma HLS AGGREGATE variable=data1[0],data1[1],data1[2],data1[3]
	data_block data2;
//#pragma HLS AGGREGATE variable=data2[0],data2[1],data2[2],data2[3]
	stream_data data_out;
//#pragma HLS AGGREGATE variable=data_out[0],data_out[1],data_out[2],data_out[3]

//if(vec_out.full()) return;

//BLOCK_CACHE_LOOP:	for(int j = 0; j < 1; j++){
//#pragma HLS PIPELINE II=1
	data1 = vec1.read();
	data2 = vec2.read();


ADD_LOOP:	for(int i = 0; i < BLOCK_SIZE; i++){
#pragma HLS PIPELINE II=1
		data_out.sdata[i] = data1.sdata[i] + data2.data.sdata[i];
		//if(j == NUM_OF_BLOCKS - 1) { data2.last = 1;}
	}


	vec_out.write(data_out);

//	}
}



void vector_subtract(hls::stream<data_block>& vec1, hls::stream<data_block>& vec2, hls::stream<data_block>& vec_out){

	data_block data1[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data1[0],data1[1],data1[2],data1[3]
	data_block data2[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data2[0],data2[1],data2[2],data2[3]
	data_block data_out[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data_out[0],data_out[1],data_out[2],data_out[3]


BLOCK_CACHE_LOOP:	for(int j = 0; j < NUM_OF_BLOCKS; j++){
#pragma HLS PIPELINE II=1
	data1[j] = vec1.read();
	data2[j] = vec2.read();


ADD_LOOP:	for(int i = 0; i < BLOCK_SIZE; i++){
#pragma HLS PIPELINE II=1
		data_out[j].data.sdata[i] = data1[j].data.sdata[i] - data2[j].data.sdata[i];
		if(j == NUM_OF_BLOCKS - 1) data1[j].last = 1;
	}

	data_out[j].user = data1[j].user;
	data_out[j].last = data1[j].last;
	data_out[j].dest = data1[j].dest;
	data_out[j].id = data1[j].id;
	data_out[j].strb = data1[j].strb;
	data_out[j].keep = data1[j].keep;


	vec_out.write(data_out[j]);

	}
}

//OVERLOADED
void vector_subtract_new(hls::stream<data_block>& vec1, hls::stream<data_block>& vec2, hls::stream<stream_data>& vec_out){

	data_block data1[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data1[0],data1[1],data1[2],data1[3]
	data_block data2[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data2[0],data2[1],data2[2],data2[3]
	stream_data data_out[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data_out[0],data_out[1],data_out[2],data_out[3]


BLOCK_CACHE_LOOP:	for(int j = 0; j < NUM_OF_BLOCKS; j++){
#pragma HLS PIPELINE II=1
	data1[j] = vec1.read();
	data2[j] = vec2.read();


ADD_LOOP:	for(int i = 0; i < BLOCK_SIZE; i++){
#pragma HLS PIPELINE II=1
		data_out[j].sdata[i] = data1[j].data.sdata[i] - data2[j].data.sdata[i];
		if(j == NUM_OF_BLOCKS - 1) data1[j].last = 1;
	}


	vec_out.write(data_out[j]);

	}
}



void vector_scale(int32_t scalar, hls::stream<data_block>& vec, hls::stream<data_block>& vec_out){

	data_block data1[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data1[0],data1[1],data1[2],data1[3]
	data_block data_out[NUM_OF_BLOCKS];
#pragma HLS AGGREGATE variable=data_out[0],data_out[1],data_out[2],data_out[3]


BLOCK_CACHE_LOOP:	for(int j = 0; j < NUM_OF_BLOCKS; j++){
#pragma HLS PIPELINE II=1
	data1[j] = vec.read();


ADD_LOOP:	for(int i = 0; i < BLOCK_SIZE; i++){
#pragma HLS PIPELINE II=1
		data_out[j].data.sdata[i] = data1[j].data.sdata[i]*scalar;
		if(j == NUM_OF_BLOCKS - 1) data1[j].last = 1;
	}

	data_out[j].user = data1[j].user;
	data_out[j].last = data1[j].last;
	data_out[j].dest = data1[j].dest;
	data_out[j].id = data1[j].id;
	data_out[j].strb = data1[j].strb;
	data_out[j].keep = data1[j].keep;


	vec_out.write(data_out[j]);

	}

data_block out;
}

//OVERLOADED
void vector_scale_new(int32_t scalar, hls::stream<data_block>& vec, hls::stream<stream_data>& vec_out){

	data_block data1;
#pragma HLS AGGREGATE variable=data1,data1,data1,data1
	stream_data data_out;
#pragma HLS AGGREGATE variable=data_out,data_out,data_out,data_out

//if(vec_out.full()) return;

BLOCK_CACHE_LOOP:	for(int j = 0; j < NUM_OF_BLOCKS; j++){
#pragma HLS PIPELINE II=1
	data1 = vec.read();


ADD_LOOP:	for(int i = 0; i < BLOCK_SIZE; i++){
#pragma HLS PIPELINE II=1
		data_out.sdata[i] = data1.data.sdata[i]*scalar;
		if(j == NUM_OF_BLOCKS - 1) data1.last = 1;
	}


	vec_out.write(data_out);

	}


}

//Scales a vector overload
void vector_scale_new2(int32_t scalar, hls::stream<stream_data>& vec, hls::stream<stream_data>& vec_out){
	stream_data data1;
	stream_data data_out;

//if(vec_out.full()) return;

BLOCK_CACHE_LOOP:	for(int j = 0; j < NUM_OF_BLOCKS; j++){
#pragma HLS PIPELINE II=1
	data1 = vec.read();


ADD_LOOP:	for(int i = 0; i < BLOCK_SIZE; i++){
#pragma HLS PIPELINE II=1
		data_out.sdata[i] = data1.sdata[i]*scalar;
	}


	vec_out.write(data_out);

	}
}



/*void dot_product(hls::stream<data_block>& vec1, hls::stream<data_block>& vec2, int32_t* out){
	int32_t data1[DIMENSION];
	int32_t data2[DIMENSION];
	int32_t result;

GET_DATA:	for(int i = 0; i < NUM_OF_BLOCKS; i++){
#pragma HLS PIPELINE II=1
		data1[i] = vec1.read();
		data2[i] = vec2.read();
	}


DOT_PRODUCT:	  for(int i=0;i<DIMENSION;i ++) {
	  #pragma HLS unroll

	    result += data1[i]*data2[i];
	  }

	 *out = result;

}*/
