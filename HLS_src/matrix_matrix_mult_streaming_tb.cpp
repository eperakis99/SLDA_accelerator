#include <iostream>
#include <cstdlib>
#include <ctime>
#include "matrix_matrix_mult_streaming.h"

int main() {
    // Initialize input matrices
    ap_int<DATA_WIDTH> A[N][N], B[N][M], C[M][N], D[N][M], R[M] ,E[M], out[M], trueScores[M], streamdata[N];
    hls::stream<data_block_new, 64> fv;
#pragma HLS STREAM variable=fv depth=64 dim=1

    for(int j = 0; j < 2; j++){
        for(int i = 0; i < N; i++){
        	data_block_new data;
        	data.data = (ap_int<DATA_WIDTH>)(i + 1000) % 10000;
        	streamdata[i] = data.data;
        	if(i == N-1) data.last = 1;
        	fv.write(data);
        }
    }



    srand(time(NULL));
    for(int i = 0; i < N; i++) {
        for(int j = 0; j < N; j++) {
            A[i][j] = (ap_int<DATA_WIDTH>)(i*j + 1000) % 10000;
        }
    }

    for(int i = 0; i < N; i++) {
        for(int j = 0; j < M; j++) {
            B[i][j] = (ap_int<DATA_WIDTH>) (i*j + 1000) % 10000;
            C[i][j] = (ap_int<DATA_WIDTH>) 0;
            D[i][j] = (ap_int<DATA_WIDTH>) 0;
        }
    }

    for(int i = 0; i < M; i++){
    	R[i] = (ap_int<DATA_WIDTH>) 0;
    }

    // Perform matrix multiplication using normal method
    for(int i = 0; i < M; i++) {
        for(int j = 0; j < N; j++) {
            for(int k = 0; k < N; k++) {
            	int x1 = 0;
				int x2 = 7;
				for(int l = 0; l < 16; l++){
					C[i][j] += ap_int<8>(A[j][k].range(x2, x1)) * ap_int<8>(B[k][i].range(x2, x1));
					C[i][j] << 8;
					x1 += 8;
					x2 += 8;
				}
            }
        }
    }

    // Perform dot products using normal method
	for(int j = 0; j < M; j++) {
		ap_int<128> temp = 0;
		for(int k = 0; k < N; k++) {
			int x1 = 0;
			int x2 = 7;
			for(int l = 0; l < 16; l++){
				temp += ap_int<8>(C[j][k].range(x2, x1)) * ap_int<8>(B[k][j].range(x2, x1));
				x1 += 8;
				x2 += 8;
			}
		}
		E[j]  = temp;
	}


	//Compute scores with the equation scores = Wx_t + b
	for(int j = 0; j < M; j++) {
		//b[j] = 0;
		ap_int<16> temp = 0;
		for(int k = 0; k < N; k++) {
			int x1 = 0;
			int x2 = 7;
			for(int l = 0; l < 16; l++){
				temp += ap_int<8>(C[j][k].range(x2, x1)) * ap_int<8>(streamdata[k].range(x2, x1));
				x1 += 8;
				x2 += 8;
			}
		}
		trueScores[j] = temp + E[j];
	}



    // Perform matrix multiplication using partitioned arrays
    matrix_matrix_mult_streaming(A, B, fv, scores);
    matrix_matrix_mult_streaming(A, B, fv, scores);

    // Compare results
    bool error = false;
/*    for(int i = 0; i < N; i++) {
        for(int j = 0; j < M; j++) {
            if(C[i][j] != D[i][j]) {
                error = true;
                std::cout << "Error: C[" << i << "][" << j << "] = " << C[i][j] << ", D[" << i << "][" << j << "] = " << D[i][j] << std::endl;
            }
        }
    }*/

    for(int j = 0; j < M; j++) {
/*		if(b[j] != E[j]) {
			error = true;
			std::cout << "Error: b[" << j << "] = " << b[j] << ", E[" << j << "] = " << E[j] << std::endl;
		}*/

		if(scores[j] != trueScores[j]){
			error = true;
			std::cout << "score[" << j << "] = " << scores[j] << ", trueScores[" << j << "] = " << trueScores[j] << std::endl;
		}

    }

    if(!error) {
        std::cout << "Test passed!" << std::endl;
    } else {
        std::cout << "Test failed." << std::endl;
        return 1;
    }

    return 0;
}
