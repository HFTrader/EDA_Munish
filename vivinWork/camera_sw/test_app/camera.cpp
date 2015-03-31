#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <time.h>

#include "driver_include.h"
#include "image.h"

using namespace cv;

#define FRAME_WIDTH  320
#define FRAME_HEIGHT 240

#define DEBUG_MODE
#define H_STRIDE            1920
#define H_ACTIVE            1920
#define V_ACTIVE            1080

#define XFILTER_REG_AP_CTRL        0x00
#define XFILTER_REG_GIE            0x04
#define XFILTER_REG_IER            0x08
#define XFILTER_REG_ISR            0x0c
#define XFILTER_REG_ROWS	       0x14
#define XFILTER_REG_COLS    	   0x1c

#define BUFFER_OFFSETS		0x00870000
#define FILTER_VDMA_BADDR   0x43020000
#define FILTER_BASEADDR     0x71800000
#define IMG_BASEADDR        0x1F000000
#define FILTER_OUT_BASEADDR 0x1F100000

#ifdef DEBUG_MODE
	#define DEBUG_Text(fmt) printf(fmt)
	#define DEBUG_Printf(fmt,...) printf(fmt,__VA_ARGS__)
#else
	#define DEBUG_Text(fmt)
	#define DEBUG_Printf(fmt,...)
#endif

#define IN0()	DEBUG_Printf(">> IN >> %s",__func__)
#define OUT0()	DEBUG_Printf("<< OUT << %s",__func__)


#define REG_WRITE(addr, off, val) (*(volatile unsigned int*)(addr+off)=(val))
#define REG_READ(addr,off) (*(volatile unsigned int*)(addr+off))


void configureVDMA(unsigned long vdma_physical_base)
{
	unsigned long int PhysicalAddress = vdma_physical_base ;
	int map_len = 0x20;
	int fd = open( "/dev/mem", O_RDWR);
	unsigned char* vdma_base_address;

	vdma_base_address = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	//check if it worked
	if(vdma_base_address == MAP_FAILED)
	{
		perror("VDMA Mapping memory for absolute memory access failed.\n");
		return;
	}
	DEBUG_Printf ("VDMA mapping 0x%x to 0x%x, size = %d\n ", (int )PhysicalAddress, (int)vdma_base_address, map_len );

	REG_WRITE(vdma_base_address, 0x0 /* 0x30 + additional_offset*/, 0x00003);
	REG_WRITE(vdma_base_address,0x58 /*VDMA_FRMDLY_STRIDE */,FRAME_WIDTH*4);
	REG_WRITE(vdma_base_address,0x5c /*VDMA_START_ADDRESS1*/,IMG_BASEADDR);
	//mem_base += BUFFER_OFFSETS;
	REG_WRITE(vdma_base_address,0x60 /*VDMA_START_ADDRESS2*/,IMG_BASEADDR);
	//mem_base += BUFFER_OFFSETS;
	REG_WRITE(vdma_base_address,0x64 /*VDMA_START_ADDRESS3*/,IMG_BASEADDR);

	REG_WRITE(vdma_base_address,0x54/*VDMA_HSIZE*/,FRAME_WIDTH*4);
	REG_WRITE(vdma_base_address,0x50/*VDMA_VSIZE*/,FRAME_HEIGHT);

	REG_WRITE(vdma_base_address, 0x30, 0x00003);
	REG_WRITE(vdma_base_address,0xa8,FRAME_WIDTH*4);
	REG_WRITE(vdma_base_address,0xac,FILTER_OUT_BASEADDR);
	//mem_base += BUFFER_OFFSETS;
	REG_WRITE(vdma_base_address,0xb0,FILTER_OUT_BASEADDR);
	//mem_base += BUFFER_OFFSETS;
	REG_WRITE(vdma_base_address,0xb4,FILTER_OUT_BASEADDR);

	REG_WRITE(vdma_base_address,0xa4,FRAME_WIDTH*4);
	REG_WRITE(vdma_base_address,0xa0,FRAME_HEIGHT);

	munmap((void *)vdma_base_address, map_len);
	close(fd);
}

void stopVDMA(unsigned long vdma_physical_base)
{
	unsigned long int PhysicalAddress = vdma_physical_base ;
	int map_len = 0x20;
	int fd = open( "/dev/mem", O_RDWR);
	unsigned char* vdma_base_address;

	vdma_base_address = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);

	//check if it worked
	if(vdma_base_address == MAP_FAILED)
	{
		perror("VDMA Mapping memory for absolute memory access failed.\n");
		return;
	}

	REG_WRITE(vdma_base_address, 0x0 /* 0x30 + additional_offset*/, 0x00000);
	REG_WRITE(vdma_base_address, 0x30, 0x00000);

	munmap((void *)vdma_base_address, map_len);
	close(fd);
}

void initSobel(unsigned long sobel_physical_base)
{
	unsigned long int PhysicalAddress = sobel_physical_base ;
	int map_len = 0x20;
	int fd = open( "/dev/mem", O_RDWR);
	unsigned char* sobel_base_address;

	sobel_base_address = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);
	//check if it worked
	if(sobel_base_address == MAP_FAILED)
	{
		perror("Sobel Init Mapping memory for absolute memory access failed.\n");
		return;
	}
	DEBUG_Printf ("Sobel mapping 0x%x to 0x%x, size = %d\n ", (int )PhysicalAddress, (int)sobel_base_address, map_len );
	REG_WRITE(sobel_base_address,XFILTER_REG_ROWS,FRAME_HEIGHT);
	REG_WRITE(sobel_base_address,XFILTER_REG_COLS,FRAME_WIDTH);
	munmap((void *)sobel_base_address, map_len);
	close(fd);

}

void startSobel(unsigned long sobel_physical_base)
{
	unsigned long int PhysicalAddress = sobel_physical_base ;
	int map_len = 0x20;
	int fd = open( "/dev/mem", O_RDWR);
	unsigned char* sobel_base_address;
	unsigned int done2;

	sobel_base_address = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)PhysicalAddress);
	//check if it worked
	if(sobel_base_address == MAP_FAILED)
	{
		printf("Sobel Start Mapping memory for absolute memory access failed.\n");
cvWaitKey(10);
		return;
	}
	printf ("Sobel mapping 0x%x to 0x%x, size = %d\n ", (int )PhysicalAddress, (int)sobel_base_address, map_len );
cvWaitKey(10);
	REG_WRITE(sobel_base_address,XFILTER_REG_GIE,1);
    REG_WRITE(sobel_base_address,XFILTER_REG_IER,1);
    REG_WRITE(sobel_base_address,XFILTER_REG_AP_CTRL,1);

	while (1)
	{
	  done2 = REG_READ(sobel_base_address,XFILTER_REG_AP_CTRL);
	//  printf("done value = %d\n\r",done2);
	  if (done2 >> 1 & 0x1)
		  break;
	};

    REG_WRITE(sobel_base_address,XFILTER_REG_GIE,0);
    REG_WRITE(sobel_base_address,XFILTER_REG_AP_CTRL,0);
	munmap((void *)sobel_base_address, map_len);
	close(fd);
}

void copy_mem2dev(Mat img, unsigned long in_buffer)
{
	int count=0;
	unsigned long int map_len = FRAME_WIDTH * FRAME_HEIGHT * 4;
//printf("opening memory device \n");	
//cvWaitKey(30);
int fd = open("/dev/mem", O_RDWR);
//printf("memory device opened\n");
//cvWaitKey(30);
	unsigned char* virtual_addr_in;

	virtual_addr_in = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)in_buffer);
	if(virtual_addr_in == MAP_FAILED)
	{
//		printf("virtual_addr_in mapping for absolute memory access failed.\n");
//cvWaitKey(30);
		return;
	}

  //  printf("copy_mem2dev allocation\n");
//cvWaitKey(10);
	for (int i=0; i<FRAME_HEIGHT;i++)
	{
		for (int j=0; j<FRAME_WIDTH;j++)
		{
			//Vec3b intensity = img.at<Vec3b>(i, j);
			//uchar red = intensity.val[0]; 		uchar green = intensity.val[1];         uchar blue = intensity.val[2];
			//unsigned int value = 0;
			//value = (red << 16) ||  (green << 8) || (blue);
			//value = value && 0xffffff;
			REG_WRITE(virtual_addr_in,count,(uchar)img.at<Vec3b>(i, j)[2]);
			REG_WRITE(virtual_addr_in,count+1,(uchar)img.at<Vec3b>(i, j)[1]);
			REG_WRITE(virtual_addr_in,count+2,(uchar)img.at<Vec3b>(i, j)[0]);
			//REG_WRITE(virtual_addr_in,count,img.at<uchar>(i, j));
			count+=4;
		}
	}
	munmap((void *)virtual_addr_in, map_len);
	close(fd);

}

void copy_dev2mem(Mat img, unsigned long in_buffer)
{
	int count=0;
	unsigned long int map_len = FRAME_WIDTH * FRAME_HEIGHT * 4;
	int fd = open("/dev/mem", O_RDWR);

	unsigned char* virtual_addr_out;

	virtual_addr_out = (unsigned char*)mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, fd, (off_t)in_buffer);
	if(virtual_addr_out == MAP_FAILED)
	{
		printf("virtual_addr_in mapping for absolute memory access failed.\n");
cvWaitKey(10);
		return;
	}

//	printf("copy_dev2mem allocation\n");
//cvWaitKey(10);
	for (int i=0; i<FRAME_HEIGHT;i++)
	{
		for (int j=0; j<FRAME_WIDTH;j++)
		{
			/*unsigned int value = 0;
			value = REG_READ(virtual_addr_out,count);
			img.at<Vec3b>(i, j)[0] = (uchar)((value >> 16 )&& 0xff);
			img.at<Vec3b>(i, j)[1] = (uchar)((value >> 8 )&& 0xff);
			img.at<Vec3b>(i, j)[2] = (uchar)( value && 0xff);*/
			img.at<Vec3b>(i, j)[2] = (uchar)REG_READ(virtual_addr_out,count);
			img.at<Vec3b>(i, j)[1] = (uchar)REG_READ(virtual_addr_out,count+1);
			img.at<Vec3b>(i, j)[0] = (uchar)REG_READ(virtual_addr_out,count+2);
			//img.at<uchar>(i, j) = REG_READ(virtual_addr_out,count);
			count+=4;
		}
	}
	munmap((void *)virtual_addr_out, map_len);
	close(fd);

}

 int main() {

   int sw_flag=0,hw_flag=0;
   int scale = 1;
   int delta = 0;
   int ddepth = CV_16S;
   clock_t sw_t, hw_t,hw_t2;
   clock_t sum_sw_t = 0, sum_hw_t = 0, sum_hw_t2 = 0;
   int swCount =0;
   int hwCount =0;

   initSobel(FILTER_BASEADDR);
   configureVDMA(FILTER_VDMA_BADDR);
printf("Sobel testing ..... \n");
    VideoCapture cap(0); // open the default camera
    if(!cap.isOpened())  // check if we succeeded
        {
printf("camera device is not opened \n");
return -1;
}
else
{printf("camera device is opened \n");
}

   //printf("%f, %f\n",cap.get(CV_CAP_PROP_FRAME_WIDTH),cap.get(CV_CAP_PROP_FRAME_HEIGHT));
   cap.set(CV_CAP_PROP_FRAME_WIDTH, FRAME_WIDTH);
   cap.set(CV_CAP_PROP_FRAME_HEIGHT, FRAME_HEIGHT);
   cap.set(CV_CAP_PROP_FPS, 15);
   //printf("%f, %f\n",cap.get(CV_CAP_PROP_FRAME_WIDTH),cap.get(CV_CAP_PROP_FRAME_HEIGHT));
   Mat src_gray;
   cvNamedWindow( "mywindow", CV_WINDOW_AUTOSIZE );

   while ( 1 ) {
     Mat frame;
     cap >> frame;
//frame = imread("lena.jpg", CV_LOAD_IMAGE_COLOR);
     if (sw_flag == 0 & hw_flag == 0)
     {
		 imshow("mywindow", frame);
	 }
	 else if(sw_flag == 1 )
	 {
		sw_t = clock();
		Mat grad_x, grad_y, sobelFrame;
   	    Mat abs_grad_x, abs_grad_y;
   	    cvtColor( frame, src_gray, CV_RGB2GRAY );
	  	Sobel( src_gray, grad_x, ddepth, 1, 0, 3, scale, delta, BORDER_DEFAULT );
	  	convertScaleAbs( grad_x, abs_grad_x );
	  	Sobel( src_gray, grad_y, ddepth, 0, 1, 3, scale, delta, BORDER_DEFAULT );
		convertScaleAbs( grad_y, abs_grad_y );
		addWeighted( abs_grad_x, 0.5, abs_grad_y, 0.5, 0, sobelFrame );
		sw_t = clock() - sw_t;
		imshow("mywindow", sobelFrame);
		sum_sw_t += sw_t;
		swCount++;
	 }
	 else if(hw_flag == 1 )
	 {
//printf("using hardware accelerator \n");
//cvWaitKey(30);
		hw_t = clock();
//printf("using hardware accelerator \n");
//cvWaitKey(30);
		Mat sobelFrame(frame.size(), CV_8UC3);
		//cvtColor( frame, src_gray, CV_RGB2GRAY );
//		printf("Staring hw\n");
//cvWaitKey(30);
		copy_mem2dev(frame, IMG_BASEADDR);
		printf("copy_mem2dev done\n");
        //cvWaitKey(10);
        //initSobel(FILTER_BASEADDR);
        //configureVDMA(FILTER_VDMA_BADDR);
        hw_t2 = clock();
        startSobel(FILTER_BASEADDR);
        hw_t2 = clock() - hw_t2;
        //stopVDMA(FILTER_VDMA_BADDR);
        //cvWaitKey(10);
		copy_dev2mem(sobelFrame,FILTER_OUT_BASEADDR);
		hw_t = clock() - hw_t;
//		printf("copy_dev2mem done\n");
//cvWaitKey(10);
	 	imshow("mywindow", sobelFrame);
	 	//cvWaitKey(10);
	 	sum_hw_t += hw_t;
	 	sum_hw_t2 += hw_t2;
	 	hwCount++;
	 }
     char c = cvWaitKey(10);
     if ( c == 27 ) break;
     if ( c == 's' )
     {
		 sw_flag = 1;
		 hw_flag = 0;
	 }
     if ( c == 'h' )
     {
		 sw_flag = 0;
		 hw_flag = 1;
	 }
     if ( c == 'o' )
     {
		 sw_flag = 0;
		 hw_flag = 0;
	 }

   }
   stopVDMA(FILTER_VDMA_BADDR);
   clock_t avg_sw_t = sum_sw_t / swCount;
   clock_t avg_hw_t = sum_hw_t / hwCount;
   clock_t avg_hw_t2 = sum_hw_t2 / hwCount;
   printf("Software Filtering latency with %d counts = %f seconds\n", swCount, ((float)avg_sw_t)/CLOCKS_PER_SEC);
   printf("Hardware Filtering latency with %d counts = %f seconds\n", hwCount, ((float)avg_hw_t)/CLOCKS_PER_SEC);
   printf("Hardware Filtering latency (w/o memcopy) with %d counts = %f seconds\n", hwCount, ((float)avg_hw_t2)/CLOCKS_PER_SEC);

   return 0;
 }
