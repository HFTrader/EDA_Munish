/*
 * Copyright (c) 2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
	int exit_requested = 0;
	char gpio_setting[5];
	char led_brightness_buffer[8];
	int fd_led_brightness;
	int read_gpio_value;
	int led_brightness_value = 0;
	int pb1_new_value = 0;
	int pb2_new_value = 0;
	int pb1_old_value = 0;
	int pb2_old_value = 0;
	FILE  *fp;
	FILE  *fp_pb1;
	FILE  *fp_pb2;

	// Display the lab name in the application banner.
	printf("*********************************************************\n");
	printf("*                                                       *\n");
	printf("*   Linux on Zynq: Lab 4 - LED Dimmer Application       *\n");
	printf("*                                                       *\n");
	printf("*                                                       *\n");
	printf("* Press PB1 to decrease LED brightness                  *\n");
	printf("*                                                       *\n");
	printf("* Press PB2 to increase LED brightness                  *\n");
	printf("*                                                       *\n");
	printf("* Press PB1 and PB2 simultaneously to exit              *\n");
	printf("*                                                       *\n");
	printf("*********************************************************\n");

	// Open the export file and write the PSGPIO number for PB1 and PB2
	// to the export property, then close the file
	fp = fopen("/sys/class/gpio/export", "w");
	if (fp == NULL)
	{
		printf("Error opening /sys/class/gpio/export node\n");
	}
	else
	{
		// Set the export property for GPIO50.
		strcpy(gpio_setting, "50");
		fwrite(&gpio_setting, sizeof(char), 2, fp);
		fflush(fp);

		// Set the export property for GPIO51.
		strcpy(gpio_setting, "51");
		fwrite(&gpio_setting, sizeof(char), 2, fp);
		fflush(fp);

		fclose(fp);
	}

	// Check the direction property of the PSGPIO number for PB1.
	fp = fopen("/sys/class/gpio/gpio50/direction", "r");
	if (fp == NULL)
	{
		printf("Error opening /sys/class/gpio/gpio50/direction node\n");
	}
	else
	{
		fscanf(fp, "%s", gpio_setting);

		// Display whether the PB1 GPIO is set as input or output.
		if (!strcmp(gpio_setting, "in"))
		{
			printf("GPIO 50 set as INPUT\n");
		}
		else
		{
			printf("GPIO 50 set as OUTPUT\n");

			// Set the direction property to "in".
			strcpy(gpio_setting, "in");
			fwrite(&gpio_setting, sizeof(char), 2, fp);
			fflush(fp);
		}
		fclose(fp);
	}

	// Check the direction property of the PSGPIO number for PB2.
	fp = fopen("/sys/class/gpio/gpio51/direction", "r");
	if (fp == NULL)
	{
		printf("Error opening /sys/class/gpio/gpio51/direction node\n");
	}
	else
	{
		fscanf(fp, "%s", gpio_setting);

		// Display whether the PB2 GPIO is set as input or output.
		if (!strcmp(gpio_setting, "in"))
		{
			printf("GPIO 51 set as INPUT\n");
		}
		else
		{
			printf("GPIO 51 set as OUTPUT\n");

			// Set the direction property to "in".
			strcpy(gpio_setting, "in");
			fwrite(&gpio_setting, sizeof(char), 2, fp);
			fflush(fp);
		}
		fclose(fp);
	}

	// Open the push button value properties so that they can be read.
	fp_pb1 = fopen("/sys/class/gpio/gpio50/value", "r");
	fp_pb2 = fopen("/sys/class/gpio/gpio51/value", "r");

	// Read the initial PB1 switch values.
	fscanf(fp_pb1, "%d", &read_gpio_value);
	pb1_new_value = read_gpio_value;
	pb1_old_value = read_gpio_value;

	// Read the initial PB2 switch values.
	fscanf(fp_pb2, "%d", &read_gpio_value);
	pb1_new_value = read_gpio_value;
	pb1_old_value = read_gpio_value;

	// Reset the file pointer positions to the properties so that they
	// can be read again.
	rewind(fp_pb1);
	rewind(fp_pb2);

	// Close the gpio value property files.
	fclose(fp_pb1);
	fclose(fp_pb2);

	// Open the LED brightness device and write the initial
	// brightness value to it.
	fd_led_brightness = open("/dev/led-brightness", O_RDWR);
	if (fd_led_brightness == -1)
	{
		printf("Error opening /dev/led-brightness device, did you remember to insmod the driver module?\n");
		return -1;
	}
	else
	{
		led_brightness_buffer[0] = led_brightness_value;
		write(fd_led_brightness, &led_brightness_buffer, 1);
		close(fd_led_brightness);
	}

	// Continue to read the Push Buttons PB1 and PB2 and update the values
	// only there is a change in the state of the Push Buttons.
	while (!(exit_requested = 0))
	{
		// Write a code to open the necessary file to read the Push Button value
		fp_pb1 = fopen("/sys/class/gpio/gpio50/value", "r");
		fp_pb2 = fopen("/sys/class/gpio/gpio51/value", "r");

		// Read the push button switch values.
		fscanf(fp_pb1, "%d", &read_gpio_value);
		pb1_new_value = read_gpio_value;
		fscanf(fp_pb2, "%d", &read_gpio_value);
		pb2_new_value = read_gpio_value;

		// Determine if the new PB states are the same as the old one.  If
		// not, then a transition is occurring on the GPIO line.
		if (pb1_new_value != pb1_old_value)
		{
			if (pb1_new_value == 1)
			{
				// Decrement the LED-brightness controller brightness level.
				led_brightness_value = led_brightness_value - 5;

				// But do not allow the brightness value to drop below 0.
				if (led_brightness_value < 0)
				{
					led_brightness_value = 0;
				}

				// Open the LED brightness device and write the updated
				// brightness value to it.
				fd_led_brightness = open("/dev/led-brightness", O_RDWR);
				if (fd_led_brightness == -1)
				{
					printf("Error opening /dev/led-brightness device, did you remember to insmod the driver module?\n");
				}
				else
				{
					led_brightness_buffer[0] = led_brightness_value;
					write(fd_led_brightness, &led_brightness_buffer, 1);
					close(fd_led_brightness);
				}
			}

			printf("Push Button PB1 transitioned to %d, LED brightness %d\n", pb1_new_value, led_brightness_value);
			pb1_old_value = pb1_new_value;
		}
		if (pb2_new_value != pb2_old_value)
		{
			if (pb2_new_value == 1)
			{
				// Increment the LED-brightness controller brightness level.
				led_brightness_value = led_brightness_value + 5;

				// But do not allow the brightness value to drop below 0.
				if (led_brightness_value > 100)
				{
					led_brightness_value = 100;
				}

				// Open the LED brightness device and write the updated
				// brightness value to it.
				fd_led_brightness = open("/dev/led-brightness", O_RDWR);
				if (fd_led_brightness == -1)
				{
					printf("Error opening /dev/led-brightness device, did you remember to insmod the driver module?\n");
				}
				else
				{
					led_brightness_buffer[0] = led_brightness_value;
					write(fd_led_brightness, &led_brightness_buffer, 1);
					close(fd_led_brightness);
				}
			}

			printf("Push Button PB2 transitioned to %d, LED brightness %d\n", pb2_new_value, led_brightness_value);
			pb2_old_value = pb2_new_value;
		}

		// Check to see if PB1 and PB2 are pressed at the same time, if so
		// the application should be exited.
		if ((pb1_new_value == 1) && (pb2_new_value == 1))
		{
			exit_requested = 1;
		}

		// Close the gpio value property files.
		fclose(fp_pb1);
		fclose(fp_pb2);
	}

	printf("Push Button PB1 and PB2 pressed simultaneously, exiting...\n");

    return 0;
}
