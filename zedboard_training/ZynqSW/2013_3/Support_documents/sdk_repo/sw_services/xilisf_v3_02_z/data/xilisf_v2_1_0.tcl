##############################################################################
#
# (c) Copyright 2012 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information of Xilinx, Inc.
# and is protected under U.S. and international copyright and other
# intellectual property laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any rights to the
# materials distributed herewith. Except as otherwise provided in a valid
# license issued to you by Xilinx, and to the maximum extent permitted by
# applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
# FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
# IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
# MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
# and (2) Xilinx shall not be liable (whether in contract or tort, including
# negligence, or under any other theory of liability) for any loss or damage
# of any kind or nature related to, arising under or in connection with these
# materials, including for any direct, or any indirect, special, incidental,
# or consequential loss or damage (including loss of data, profits, goodwill,
# or any type of loss or damage suffered as a result of any action brought by
# a third party) even if such damage or loss was reasonably foreseeable or
# Xilinx had been advised of the possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-safe, or for use in
# any application requiring fail-safe performance, such as life-support or
# safety devices or systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any other applications
# that could lead to death, personal injury, or severe property or
# environmental damage (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and liability of any use of
# Xilinx products in Critical Applications, subject only to applicable laws
# and regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
# AT ALL TIMES.
#
##############################################################################
#
# Modification History
#
# Ver   Who  Date     Changes
# ----- ---- -------- -----------------------------------------------
# 2.01a sdm  06/17/10 Updated to support axi_spi
# 2.02a sdm  09/24/10 updated to use Tcl commands instead of unix commands
# 2.03a sdm  04/17/11 Updated to support axi_quad_spi
# 2.04a sdm  08/01/11 Added new parameter for Numonyx quad flash devices.
# 3.00a srt  06/20/12 Updated to support interfaces SPI PS and QSPI PS.
#		      Added support to SST flash.
# 3.02a srt  05/13/13 Removed compiler errors when not selecting proper
#		      interface for Zynq. (CR 716451)
# 3.02z ktk  11/07/13 Hacked up to provide unofficial support for ZedBoard
#             Spansion QSPI Flash
#
##############################################################################

#---------------------------------------------
# ISF_drc - check system configuration and make sure 
# all components to run ISF are available. 
#---------------------------------------------

proc isf_drc {libhandle} {
	puts "Running DRC for XilIsf library... \n"

	# find the list of xps or opb spi cores
	set sw_processor [xget_libgen_proc_handle]
	set processor [xget_handle $sw_processor "IPINST"]

	set spi_periphs_list [get_spi_periphs $processor]

	if { [llength $spi_periphs_list] == 0 } {
		set cpuname [xget_hw_name $processor]
		error "No SPI core is addressable from processor $cpuname. \
			XilIsf library requires a SPI Core \n"
		return
	}
}

proc get_spi_periphs {processor} {
	set periphs_list [xget_hw_proc_slave_periphs $processor]
	set spi_periphs_list {}

	global spi_periphs_name_list
	set spi_periphs_name_list {}

	foreach periph $periphs_list {
		set periphname [xget_hw_value $periph]
		if {$periphname == "xps_spi"
			|| $periphname == "opb_spi"
			|| $periphname == "xps_insystem_flash"
			|| $periphname == "axi_spi"
			|| $periphname == "axi_quad_spi"
			|| $periphname == "ps7_spi"
			|| $periphname == "ps7_qspi"} {
			lappend spi_periphs_list $periph
			lappend spi_periphs_name_list $periphname
		}
	}

	return $spi_periphs_list
}

#--------
# Check the following h/w requirements for XilIsf:
#--------
proc isf_hw_drc {libhandle spi_list} {
}


# SPI hw requirements 
proc isf_spi_hw_drc {libhandle spi} {

}


proc generate {libhandle} {

}


#-------
# post_generate: called after generate called on all libraries
#-------
proc post_generate {libhandle} {
	xgen_opts_file $libhandle

}

#-------
# execs_generate: called after BSP's, libraries and drivers have been compiled
#	This procedure builds the libisf.a library
#-------
proc execs_generate {libhandle} {

}


proc xgen_opts_file {libhandle} {

	# Open xparameters.h file
	set file_handle [xopen_include_file "xparameters.h"]

	# -----------------------------
	# Generate Flash options
	# -----------------------------
	puts $file_handle "/* Xilinx EDK In-system and Serial Flash Library (XilIsf) User Settings */"	
	set serial_flash_family [xget_value $libhandle "PARAMETER" "serial_flash_family"]
	puts $file_handle "\#define XPAR_XISF_FLASH_FAMILY	$serial_flash_family"

	set serial_flash_interface [xget_value $libhandle "PARAMETER" "serial_flash_interface"]
	set ifaceselect 0
	set ps7qspi 0
	global spi_periphs_name_list
	foreach periph $spi_periphs_name_list {
		if {$periph == "axi_spi" || $periph == "axi_quad_spi" 
			|| $periph == "opb_spi"
			|| $periph == "xps_insystem_flash"
			|| $periph == "xps_spi"} {
			if {$serial_flash_interface == 1} {
				puts $file_handle "\#define XPAR_XISF_INTERFACE_AXISPI	1"
				set ifaceselect 1
			}
		} elseif {$periph == "ps7_spi" &&
			$serial_flash_interface == 2} {
			puts $file_handle "\#define XPAR_XISF_INTERFACE_PSSPI	1"
			set ifaceselect 1
		} elseif {$periph == "ps7_qspi" &&
			$serial_flash_interface == 3} {
			puts $file_handle "\#define XPAR_XISF_INTERFACE_PSQSPI	1"
			set ifaceselect 1
		} elseif {$periph == "ps7_qspi"} {
			set ps7qspi 1
		}
	}

	if {$ps7qspi == 1 && $ifaceselect == 0} {
		puts "WARN: Improper Flash Interface from BSP Settings!!!! Defaulting on 'ps7_qspi' interface"
		puts $file_handle "\#define XPAR_XISF_INTERFACE_PSQSPI	1"
	}
	
	puts $file_handle ""
	close $file_handle

	# Copy the include files to the include directory
	set srcdir [file join src include]
	set dstdir [file join .. .. include]

	# Create dstdir if it does not exist
	if { ! [file exists $dstdir] } {
		file mkdir $dstdir
	}

	# Get list of files in the srcdir
	set sources [glob -join $srcdir *.h]
	
	# Copy each of the files in the list to dstdir
	foreach source $sources {
		file copy -force $source $dstdir
	}
}
