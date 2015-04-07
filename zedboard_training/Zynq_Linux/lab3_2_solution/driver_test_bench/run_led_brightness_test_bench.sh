#!/bin/sh

# The first argument is the number of times the test
# bench gets looped through before exiting.
tests_requested=$1
tests_counted=1

# Check to see if the driver modules folder exists.
# If it does not exist, create it.
if [ ! -d /lib/modules/ ]; then
	mkdir /lib/modules/;
fi;

# Check to see if the extended driver modules folder 
# exists.  If it does not exist, create it.
if [ ! -d /lib/modules/`uname -r`/ ]; then
	mkdir /lib/modules/`uname -r`/;
fi;


if [ ! -c /dev/led-brightness ]; then
	insmod ../led-brightness.ko
fi;

if [ -c /dev/led-brightness ]; then

	while [ $tests_counted -le $tests_requested ]
	do 
		echo "Starting test pass:  $tests_counted"
		echo "Setting LED brightness level to 0"
        	cat zero > /dev/led-brightness
        	sleep 1
        	
        	echo "Setting LED brightness level to 1"
        	cat one > /dev/led-brightness
        	sleep 1
        	
		echo "Setting LED brightness level to 2"
		cat two > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 3"
		cat three > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 4"
		cat four > /dev/led-brightness
		sleep 1
	
		echo "Setting LED brightness level to 5"
		cat five > /dev/led-brightness
		sleep 1

		echo "Setting LED brightness level to 6"
		cat six > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 7"
		cat seven > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 8"
		cat eight > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 9"
		cat nine > /dev/led-brightness
		sleep 1

		echo "Setting LED brightness level to 10"
		cat ten > /dev/led-brightness
		sleep 1

		echo "Setting LED brightness level to 15"
		cat fifteen > /dev/led-brightness
		sleep 1

		echo "Setting LED brightness level to 20"
		cat twenty > /dev/led-brightness
		sleep 1

		echo "Setting LED brightness level to 25"
		cat twenty-five > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 30"
		cat thirty > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 35"
		cat thirty-five > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 40"
		cat fourty > /dev/led-brightness
		sleep 1

		echo "Setting LED brightness level to 45"
		cat fourty-five > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 50"
		cat fifty > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 60"
		cat sixty > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 70"
		cat seventy > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 80"
		cat eighty > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 90"
		cat ninety > /dev/led-brightness
		sleep 1
		
		echo "Setting LED brightness level to 100"
		cat one-hundred > /dev/led-brightness
		sleep 1
		
		echo "Completed test pass $tests_counted"
		echo " "
		
		tests_counted=$(( $tests_counted + 1 ))
	done
fi;


