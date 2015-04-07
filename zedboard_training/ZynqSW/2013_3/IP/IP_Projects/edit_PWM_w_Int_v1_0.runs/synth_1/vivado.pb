
[
 Attempting to get a license: %s
78*common2"
Implementation2default:defaultZ17-78
Q
Feature available: %s
81*common2"
Implementation2default:defaultZ17-81
É
+Loading parts and site information from %s
36*device2?
+C:/Xilinx/Vivado/2013.3/data/parts/arch.xml2default:defaultZ21-36
ê
!Parsing RTL primitives file [%s]
14*netlist2U
AC:/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-14
ô
*Finished parsing RTL primitives file [%s]
11*netlist2U
AC:/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-11
r
Command: %s
53*	vivadotcl2J
6synth_design -top PWM_w_Int_v1_0 -part xc7z020clg484-12default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
ï
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347
Ö
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349
˛
,redeclaration of ansi port %s is not allowed2611*oasys2
count2default:default2~
hC:/Speedway/ZynqHW/2013_3/ZynqDesign/edit_PWM_w_Int_v1_0.srcs/sources_1/imports/hdl/PWM_Controller_Int.v2default:default2
382default:default8@Z8-2611
Ä
,redeclaration of ansi port %s is not allowed2611*oasys2
PWM_out2default:default2~
hC:/Speedway/ZynqHW/2013_3/ZynqDesign/edit_PWM_w_Int_v1_0.srcs/sources_1/imports/hdl/PWM_Controller_Int.v2default:default2
392default:default8@Z8-2611
·
,redeclaration of ansi port %s is not allowed2611*oasys2
slv_reg02default:default2]
Gc:/Speedway/ZynqHW/2013_3/IP/PWM_w_Int_1.0/hdl/PWM_w_Int_v1_0_S00_AXI.v2default:default2
1042default:default8@Z8-2611
ñ
%s*synth2Ü
rStarting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 239.375 ; gain = 90.676
2default:default
«
synthesizing module '%s'638*oasys2"
PWM_w_Int_v1_02default:default2U
?c:/Speedway/ZynqHW/2013_3/IP/PWM_w_Int_1.0/hdl/PWM_w_Int_v1_0.v2default:default2
12default:default8@Z8-638
W
%s*synth2H
4	Parameter PWM_PERIOD bound to: 20 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_S00_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S00_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:default
◊
synthesizing module '%s'638*oasys2*
PWM_w_Int_v1_0_S00_AXI2default:default2]
Gc:/Speedway/ZynqHW/2013_3/IP/PWM_w_Int_1.0/hdl/PWM_w_Int_v1_0_S00_AXI.v2default:default2
12default:default8@Z8-638
_
%s*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:default
T
%s*synth2E
1	Parameter ADDR_LSB bound to: 2 - type: integer 
2default:default
]
%s*synth2N
:	Parameter OPT_MEM_ADDR_BITS bound to: 1 - type: integer 
2default:default
∞
default block is never used226*oasys2]
Gc:/Speedway/ZynqHW/2013_3/IP/PWM_w_Int_1.0/hdl/PWM_w_Int_v1_0_S00_AXI.v2default:default2
2202default:default8@Z8-226
∞
default block is never used226*oasys2]
Gc:/Speedway/ZynqHW/2013_3/IP/PWM_w_Int_1.0/hdl/PWM_w_Int_v1_0_S00_AXI.v2default:default2
3672default:default8@Z8-226
í
%done synthesizing module '%s' (%s#%s)256*oasys2*
PWM_w_Int_v1_0_S00_AXI2default:default2
12default:default2
12default:default2]
Gc:/Speedway/ZynqHW/2013_3/IP/PWM_w_Int_1.0/hdl/PWM_w_Int_v1_0_S00_AXI.v2default:default2
12default:default8@Z8-256
ı
synthesizing module '%s'638*oasys2&
PWM_Controller_Int2default:default2~
hC:/Speedway/ZynqHW/2013_3/ZynqDesign/edit_PWM_w_Int_v1_0.srcs/sources_1/imports/hdl/PWM_Controller_Int.v2default:default2
242default:default8@Z8-638
S
%s*synth2D
0	Parameter period bound to: 20 - type: integer 
2default:default
∞
%done synthesizing module '%s' (%s#%s)256*oasys2&
PWM_Controller_Int2default:default2
22default:default2
12default:default2~
hC:/Speedway/ZynqHW/2013_3/ZynqDesign/edit_PWM_w_Int_v1_0.srcs/sources_1/imports/hdl/PWM_Controller_Int.v2default:default2
242default:default8@Z8-256
Ç
%done synthesizing module '%s' (%s#%s)256*oasys2"
PWM_w_Int_v1_02default:default2
32default:default2
12default:default2U
?c:/Speedway/ZynqHW/2013_3/IP/PWM_w_Int_1.0/hdl/PWM_w_Int_v1_0.v2default:default2
12default:default8@Z8-256
ó
%s*synth2á
sFinished Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 255.926 ; gain = 107.227
2default:default
ö
%s*synth2ä
vStart RTL Optimization : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 255.926 ; gain = 107.227
2default:default
ù
%s*synth2ç
yFinished RTL Optimization : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 255.926 ; gain = 107.227
2default:default
<
%s*synth2-

Report RTL Partitions: 
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
ñ
Loading clock regions from %s
13*device2_
KC:/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/zynq/xc7z020/ClockRegion.xml2default:defaultZ21-13
ó
Loading clock buffers from %s
11*device2`
LC:/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/zynq/xc7z020/ClockBuffers.xml2default:defaultZ21-11
ó
&Loading clock placement rules from %s
318*place2W
CC:/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/ClockPlacerRules.xml2default:defaultZ30-318
ï
)Loading package pin functions from %s...
17*device2S
?C:/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/PinFunctions.xml2default:defaultZ21-17
ì
Loading package from %s
16*device2b
NC:/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/zynq/xc7z020/clg484/Package.xml2default:defaultZ21-16
ä
Loading io standards from %s
15*device2T
@C:/Xilinx/Vivado/2013.3/data\./parts/xilinx/zynq/IOStandards.xml2default:defaultZ21-15
ã
%s*synth2|
hPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB8 0 RAMB16 0 RAMB18 60 RAMB36 30)
2default:default
±
%s*synth2°
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 554.035 ; gain = 405.336
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 5     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 7     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input     32 Bit        Muxes := 5     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 6     
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
:
%s*synth2+
Module PWM_w_Int_v1_0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
B
%s*synth23
Module PWM_w_Int_v1_0_S00_AXI 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 5     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 5     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input     32 Bit        Muxes := 5     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 6     
2default:default
>
%s*synth2/
Module PWM_Controller_Int 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
«
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/\PWM_w_Int_v1_0_S00_AXI_inst/axi_awaddr_reg[1] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
«
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/\PWM_w_Int_v1_0_S00_AXI_inst/axi_awaddr_reg[0] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
«
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/\PWM_w_Int_v1_0_S00_AXI_inst/axi_araddr_reg[1] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
«
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/\PWM_w_Int_v1_0_S00_AXI_inst/axi_araddr_reg[0] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
«
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/\PWM_w_Int_v1_0_S00_AXI_inst/axi_awaddr_reg[1] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
«
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/\PWM_w_Int_v1_0_S00_AXI_inst/axi_awaddr_reg[0] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
«
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/\PWM_w_Int_v1_0_S00_AXI_inst/axi_araddr_reg[1] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
«
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2C
/\PWM_w_Int_v1_0_S00_AXI_inst/axi_araddr_reg[0] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
Ö
!design %s has unconnected port %s3331*oasys2"
PWM_w_Int_v1_02default:default2%
s00_axi_awaddr[1]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2"
PWM_w_Int_v1_02default:default2%
s00_axi_awaddr[0]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2"
PWM_w_Int_v1_02default:default2%
s00_axi_awprot[2]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2"
PWM_w_Int_v1_02default:default2%
s00_axi_awprot[1]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2"
PWM_w_Int_v1_02default:default2%
s00_axi_awprot[0]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2"
PWM_w_Int_v1_02default:default2%
s00_axi_araddr[1]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2"
PWM_w_Int_v1_02default:default2%
s00_axi_araddr[0]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2"
PWM_w_Int_v1_02default:default2%
s00_axi_arprot[2]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2"
PWM_w_Int_v1_02default:default2%
s00_axi_arprot[1]2default:defaultZ8-3331
Ö
!design %s has unconnected port %s3331*oasys2"
PWM_w_Int_v1_02default:default2%
s00_axi_arprot[0]2default:defaultZ8-3331
©
%s*synth2ô
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 554.121 ; gain = 405.422
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
∆
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\PWM_w_Int_v1_0_S00_AXI_inst/axi_bresp_reg[1] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
∆
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\PWM_w_Int_v1_0_S00_AXI_inst/axi_bresp_reg[0] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
∆
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\PWM_w_Int_v1_0_S00_AXI_inst/axi_rresp_reg[1] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
∆
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2B
.\PWM_w_Int_v1_0_S00_AXI_inst/axi_rresp_reg[0] 2default:default2"
PWM_w_Int_v1_02default:defaultZ8-3332
û
%s*synth2é
zFinished Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 589.398 ; gain = 440.699
2default:default
†
%s*synth2ê
|Finished Timing Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 589.398 ; gain = 440.699
2default:default
ü
%s*synth2è
{Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 589.398 ; gain = 440.699
2default:default
ô
%s*synth2â
uFinished IO Insertion : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 589.398 ; gain = 440.699
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
™
%s*synth2ö
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 589.398 ; gain = 440.699
2default:default
ß
%s*synth2ó
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 589.398 ; gain = 440.699
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
8
%s*synth2)

Report BlackBoxes: 
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
| |BlackBox name |Instances |
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|      |Cell   |Count |
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|1     |BUFG   |     1|
2default:default
;
%s*synth2,
|2     |CARRY4 |     9|
2default:default
;
%s*synth2,
|3     |LUT1   |    22|
2default:default
;
%s*synth2,
|4     |LUT2   |     1|
2default:default
;
%s*synth2,
|5     |LUT3   |     5|
2default:default
;
%s*synth2,
|6     |LUT4   |   167|
2default:default
;
%s*synth2,
|7     |LUT5   |    13|
2default:default
;
%s*synth2,
|8     |LUT6   |    35|
2default:default
;
%s*synth2,
|9     |FDRE   |   191|
2default:default
;
%s*synth2,
|10    |IBUF   |    47|
2default:default
;
%s*synth2,
|11    |OBUF   |   102|
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
j
%s*synth2[
G+------+------------------------------+-----------------------+------+
2default:default
j
%s*synth2[
G|      |Instance                      |Module                 |Cells |
2default:default
j
%s*synth2[
G+------+------------------------------+-----------------------+------+
2default:default
j
%s*synth2[
G|1     |top                           |                       |   593|
2default:default
j
%s*synth2[
G|2     |  PWM_w_Int_v1_0_S00_AXI_inst |PWM_w_Int_v1_0_S00_AXI |   396|
2default:default
j
%s*synth2[
G|3     |  PWM_inst                    |PWM_Controller_Int     |    47|
2default:default
j
%s*synth2[
G+------+------------------------------+-----------------------+------+
2default:default
¶
%s*synth2ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 589.398 ; gain = 440.699
2default:default
j
%s*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 25 warnings.
2default:default
£
%s*synth2ì
Synthesis Optimization Complete : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 589.398 ; gain = 440.699
2default:default
]
-Analyzing %s Unisim elements for replacement
17*netlist2
472default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
_
 Attempting to get a license: %s
78*common2&
Internal_bitstream2default:defaultZ17-78
]
Failed to get a license: %s
295*common2&
Internal_bitstream2default:defaultZ17-301
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-143
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
æ
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
192default:default2
262default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
¸
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:332default:default2
00:00:342default:default2
877.5162default:default2
690.8912default:defaultZ17-268
<
%Done setting XDC timing constraints.
35*timingZ38-35

sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.048 . Memory (MB): peak = 877.516 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Nov 19 17:47:06 20132default:defaultZ17-206