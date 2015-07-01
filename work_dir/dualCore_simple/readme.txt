-- base project to use both ARM cores in zynq
-- hw platform is generated using xps like in labc of sds....but avoided adding in camera interface and hdmi interface as they aren't needed for this simple project
-- on top of platform BSPs for each core are generated like in ZynqSW Lab09 training
-- on top of BSPs simple hello world applications are developed 

-- design done :)
-- for running both applications simply run the two applications individually or first make a boot image also consisting of a FSBL; then program it onto the flash
   and then make jumper settings to boot from flash...reset the PS to execute both applications on respective cores
   
   
