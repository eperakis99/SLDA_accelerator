#include <stdio.h>
#include <xparameters.h>
#include "xslda_final.h"
#include "xaxidma.h"
#include "platform.h"
#include "xtime_l.h"

#define INPUT_DIMENSION 8
#define ELEMENTS_TO_RECEIVE 10 //Must be a multiple of 4 as hls::stream transfers 4 elements at a time
#define MEM_BASE_ADDR 0x00000000
#define TX_DATA_BASE_ADDR_0 (MEM_BASE_ADDR + 0x00100000)
#define TX_DATA_BASE_ADDR_1 (MEM_BASE_ADDR + 0x00400000)
#define TX_DATA_BASE_ADDR_2 (MEM_BASE_ADDR + 0x00700000)
#define TX_DATA_BASE_ADDR_3 (MEM_BASE_ADDR + 0x01000000)


int32_t* scores = (int32_t*) 0xA0050000;


XSlda_final ip_instance;
XSlda_final_Config* ip_xconfig;
XAxiDma dma_instance_0;
XAxiDma_Config* dma_xconfig_0;
XAxiDma dma_instance_1;
XAxiDma_Config* dma_xconfig_1;
XAxiDma dma_instance_2;
XAxiDma_Config* dma_xconfig_2;
XAxiDma dma_instance_3;
XAxiDma_Config* dma_xconfig_3;



int init_IPs(){

	int status;
	//Initialize custom made accelerator
	ip_xconfig = XSlda_final_LookupConfig(XPAR_XSLDA_FINAL_0_DEVICE_ID);
	if(ip_xconfig == NULL){
		printf("Failed to initialize device slda_final with id: %d", XPAR_XSLDA_FINAL_0_DEVICE_ID);
		return -1;
	}


	status = XSlda_final_CfgInitialize(&ip_instance, ip_xconfig);
	if(status != XST_SUCCESS){
		printf("Failed to initialize device slda_final with id: %d", XPAR_XSLDA_FINAL_0_DEVICE_ID);
		return -2;
	}

	//======================================================================================================
	//Initialize dma 0
	dma_xconfig_0 = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	if(dma_xconfig_0 == NULL){
		printf("Failed to initialize device axi dma 0 with id: %d", XPAR_AXIDMA_0_DEVICE_ID);
		return -3;
	}

	status = XAxiDma_CfgInitialize(&dma_instance_0, dma_xconfig_0);
	if(status != XST_SUCCESS){
		printf("Failed to initialize device axi dma 0 with id: %d", XPAR_AXIDMA_0_DEVICE_ID);
		return -4;
	}

	XAxiDma_IntrDisable(&dma_instance_0, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrDisable(&dma_instance_0, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

	//======================================================================================================
	//Initialize dma 1
	dma_xconfig_1 = XAxiDma_LookupConfig(XPAR_AXIDMA_1_DEVICE_ID);
	if(dma_xconfig_1 == NULL){
		printf("Failed to initialize device axi dma 1 with id: %d", XPAR_AXIDMA_1_DEVICE_ID);
		return -3;
	}

	status = XAxiDma_CfgInitialize(&dma_instance_1, dma_xconfig_1);
	if(status != XST_SUCCESS){
		printf("Failed to initialize device axi dma 1 with id: %d", XPAR_AXIDMA_1_DEVICE_ID);
		return -4;
	}

	XAxiDma_IntrDisable(&dma_instance_1, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrDisable(&dma_instance_1, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

	//======================================================================================================
	//Initialize dma 2
	dma_xconfig_2 = XAxiDma_LookupConfig(XPAR_AXIDMA_2_DEVICE_ID);
	if(dma_xconfig_2 == NULL){
		printf("Failed to initialize device axi dma 2 with id: %d", XPAR_AXIDMA_2_DEVICE_ID);
		return -3;
	}

	status = XAxiDma_CfgInitialize(&dma_instance_2, dma_xconfig_2);
	if(status != XST_SUCCESS){
		printf("Failed to initialize device axi dma 2 with id: %d", XPAR_AXIDMA_2_DEVICE_ID);
		return -4;
	}

	XAxiDma_IntrDisable(&dma_instance_2, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrDisable(&dma_instance_2, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

	//======================================================================================================
	//Initialize dma 3
	dma_xconfig_3 = XAxiDma_LookupConfig(XPAR_AXIDMA_3_DEVICE_ID);
	if(dma_xconfig_3 == NULL){
		printf("Failed to initialize device axi dma 3 with id: %d", XPAR_AXIDMA_3_DEVICE_ID);
		return -3;
	}

	status = XAxiDma_CfgInitialize(&dma_instance_3, dma_xconfig_3);
	if(status != XST_SUCCESS){
		printf("Failed to initialize device axi dma 3 with id: %d", XPAR_AXIDMA_3_DEVICE_ID);
		return -4;
	}

	XAxiDma_IntrDisable(&dma_instance_3, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrDisable(&dma_instance_3, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);


return 0;
}


int main(){

	//Initialize the platform
	init_platform();


	//Initialize IPs
	init_IPs();

	int8_t* axi_dma_tx_0 = (int8_t*) TX_DATA_BASE_ADDR_0;
	int8_t* axi_dma_tx_1 = (int8_t*) TX_DATA_BASE_ADDR_1;
	int8_t* axi_dma_tx_2 = (int8_t*) TX_DATA_BASE_ADDR_2;
	int8_t* axi_dma_tx_3 = (int8_t*) TX_DATA_BASE_ADDR_3;
	//timer_t timer;
	XTime start, startHW, end, endHW;

	int counter = 0;
	int8_t constant1 = 0x01;
	int8_t constant2 = 0x02;

	//Initialize the mean matrix data
	for(int i = 0; i < 640; i+=2){
		axi_dma_tx_0[i] = constant1;
		axi_dma_tx_0[i+1] = constant2 ;
	}


	//There are 2 feature vectors so that predictions and updates can be performed independently
	//feature vector used for updating means
	for(int i = 0; i < 64; i+=2){
		axi_dma_tx_1[i] = constant1 + i;
		axi_dma_tx_1[i+1] = constant2 + i;
	}

	//feature vector used for the prediction
	for(int i = 0; i < 64; i+=2){
		axi_dma_tx_2[i] = constant1;
		axi_dma_tx_2[i+1] = constant2;
	}


	//Initialize the Lambda matrix data
	for(int i = 0; i < 2048; i+=2){
		axi_dma_tx_3[i] = constant1 + i;
		axi_dma_tx_3[i+1] = constant2 + i;
	}

/*	for(int j = 64; j < 320; j++){
		axi_dma_tx[j] = j;
	}*/


	while(1){

		XTime_GetTime(&start);
		XSlda_final_Start(&ip_instance);

		Xil_DCacheFlushRange((INTPTR)axi_dma_tx_0, sizeof(int8_t)*5120);
		Xil_DCacheFlushRange((INTPTR)axi_dma_tx_1, sizeof(int8_t)*512);
		Xil_DCacheFlushRange((INTPTR)axi_dma_tx_2, sizeof(int8_t)*512);
		Xil_DCacheFlushRange((INTPTR)axi_dma_tx_3, sizeof(int8_t)*262144);
		//Xil_DCacheFlushRange((INTPTR)axi_dma_rx_0, sizeof(int64_t)*ELEMENTS_TO_RECEIVE);
		printf("Send data to the ip core via dma");
		XTime_GetTime(&startHW);
		XAxiDma_SimpleTransfer(&dma_instance_0, (UINTPTR)axi_dma_tx_0, sizeof(int8_t)*5120, XAXIDMA_DMA_TO_DEVICE);
		XAxiDma_SimpleTransfer(&dma_instance_1, (UINTPTR)axi_dma_tx_1, sizeof(int8_t)*512, XAXIDMA_DMA_TO_DEVICE);
		XAxiDma_SimpleTransfer(&dma_instance_2, (UINTPTR)axi_dma_tx_2, sizeof(int8_t)*512, XAXIDMA_DMA_TO_DEVICE);
		XAxiDma_SimpleTransfer(&dma_instance_3, (UINTPTR)axi_dma_tx_3, sizeof(int8_t)*262144, XAXIDMA_DMA_TO_DEVICE);


/*		printf("Receive data from the dma");
		XAxiDma_SimpleTransfer(&dma_instance, (UINTPTR)axi_dma_rx, sizeof(int32_t)*ELEMENTS_TO_RECEIVE, XAXIDMA_DEVICE_TO_DMA);
		while(XAxiDma_Busy(&dma_instance, XAXIDMA_DEVICE_TO_DMA));
		XTime_GetTime(&endHW);
		Xil_DCacheInvalidateRange((INTPTR)axi_dma_rx, sizeof(int32_t)*ELEMENTS_TO_RECEIVE);*/

		while(!XSlda_final_IsDone(&ip_instance));
		XTime_GetTime(&endHW);

		XTime_GetTime(&end);

		printf("Time in microseconds for app execution: %llu\n", 2*(end-start));
		printf("app execution took %.2f us.\n",
		           1.0 * (end - start) / (COUNTS_PER_SECOND/1000000));

		printf("Time in microseconds for hw execution: %llu\n", 2*(endHW-startHW));
		printf("Hw execution took %.2f us.\n",
		           1.0 * (endHW - startHW) / (COUNTS_PER_SECOND/1000000));

		for(int k = 0; k < ELEMENTS_TO_RECEIVE; k++){
				printf("scores[%d]: %d\n", k, scores[k]);
			}

	}




	return 0;
}
