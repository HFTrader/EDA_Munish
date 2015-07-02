<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="8">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>convert_to_gray</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>16</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>input_V_data_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input.V.data.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>input_V_keep_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input.V.keep.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>4</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>input_V_strb_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input.V.strb.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>4</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>input_V_user_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input.V.user.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>input_V_last_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input.V.last.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_6">
				<Value>
					<Obj>
						<type>1</type>
						<id>6</id>
						<name>input_V_id_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input.V.id.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_7">
				<Value>
					<Obj>
						<type>1</type>
						<id>7</id>
						<name>input_V_dest_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input.V.dest.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_8">
				<Value>
					<Obj>
						<type>1</type>
						<id>8</id>
						<name>output_V_data_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>output.V.data.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_9">
				<Value>
					<Obj>
						<type>1</type>
						<id>9</id>
						<name>output_V_keep_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>output.V.keep.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>4</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_10">
				<Value>
					<Obj>
						<type>1</type>
						<id>10</id>
						<name>output_V_strb_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>output.V.strb.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>4</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_11">
				<Value>
					<Obj>
						<type>1</type>
						<id>11</id>
						<name>output_V_user_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>output.V.user.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_12">
				<Value>
					<Obj>
						<type>1</type>
						<id>12</id>
						<name>output_V_last_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>output.V.last.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_13">
				<Value>
					<Obj>
						<type>1</type>
						<id>13</id>
						<name>output_V_id_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>output.V.id.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_14">
				<Value>
					<Obj>
						<type>1</type>
						<id>14</id>
						<name>output_V_dest_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>output.V.dest.V</originalName>
						<rtlName></rtlName>
						<coreName>AXI4Stream</coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_15">
				<Value>
					<Obj>
						<type>1</type>
						<id>15</id>
						<name>rows</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>rows</originalName>
						<rtlName></rtlName>
						<coreName>AXI4LiteS</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_16">
				<Value>
					<Obj>
						<type>1</type>
						<id>16</id>
						<name>cols</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>cols</originalName>
						<rtlName></rtlName>
						<coreName>AXI4LiteS</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>20</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>32</id>
						<name>cols_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>cols</originalName>
						<rtlName></rtlName>
						<coreName>AXI4LiteS</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>73</item>
					<item>74</item>
				</oprand_edges>
				<opcode>wireread</opcode>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>33</id>
						<name>rows_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>rows</originalName>
						<rtlName></rtlName>
						<coreName>AXI4LiteS</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>75</item>
					<item>76</item>
				</oprand_edges>
				<opcode>wireread</opcode>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>34</id>
						<name>img_0_data_stream_0_V</name>
						<fileName>top.cpp</fileName>
						<fileDirectory>/ise_local2/umair_temp/vivado_projects/cvtColor/</fileDirectory>
						<lineNumber>65</lineNumber>
						<contextFuncName>convert_to_gray</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>65</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>img_0.data_stream[0].V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>78</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>37</id>
						<name>img_0_data_stream_1_V</name>
						<fileName>top.cpp</fileName>
						<fileDirectory>/ise_local2/umair_temp/vivado_projects/cvtColor/</fileDirectory>
						<lineNumber>65</lineNumber>
						<contextFuncName>convert_to_gray</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>65</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>img_0.data_stream[1].V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>79</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>40</id>
						<name>img_0_data_stream_2_V</name>
						<fileName>top.cpp</fileName>
						<fileDirectory>/ise_local2/umair_temp/vivado_projects/cvtColor/</fileDirectory>
						<lineNumber>65</lineNumber>
						<contextFuncName>convert_to_gray</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>65</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>img_0.data_stream[2].V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>80</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>43</id>
						<name>img_1_data_stream_0_V</name>
						<fileName>top.cpp</fileName>
						<fileDirectory>/ise_local2/umair_temp/vivado_projects/cvtColor/</fileDirectory>
						<lineNumber>65</lineNumber>
						<contextFuncName>convert_to_gray</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>65</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>img_1.data_stream[0].V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>81</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>46</id>
						<name>img_1_data_stream_1_V</name>
						<fileName>top.cpp</fileName>
						<fileDirectory>/ise_local2/umair_temp/vivado_projects/cvtColor/</fileDirectory>
						<lineNumber>65</lineNumber>
						<contextFuncName>convert_to_gray</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>65</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>img_1.data_stream[1].V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>82</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_24">
				<Value>
					<Obj>
						<type>0</type>
						<id>49</id>
						<name>img_1_data_stream_2_V</name>
						<fileName>top.cpp</fileName>
						<fileDirectory>/ise_local2/umair_temp/vivado_projects/cvtColor/</fileDirectory>
						<lineNumber>65</lineNumber>
						<contextFuncName>convert_to_gray</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>65</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>img_1.data_stream[2].V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>83</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_25">
				<Value>
					<Obj>
						<type>0</type>
						<id>59</id>
						<name>call_ret</name>
						<fileName>hls_video_core.h</fileName>
						<fileDirectory>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</fileDirectory>
						<lineNumber>478</lineNumber>
						<contextFuncName>Mat</contextFuncName>
						<inlineStackInfo>
							<count>2</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>478</second>
									</item>
								</second>
							</item>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>77</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>48</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>85</item>
					<item>86</item>
					<item>87</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_26">
				<Value>
					<Obj>
						<type>0</type>
						<id>60</id>
						<name>img_0_rows_V</name>
						<fileName>hls_video_core.h</fileName>
						<fileDirectory>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</fileDirectory>
						<lineNumber>478</lineNumber>
						<contextFuncName>Mat</contextFuncName>
						<inlineStackInfo>
							<count>2</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>478</second>
									</item>
								</second>
							</item>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>77</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>img_0.rows.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>12</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>88</item>
				</oprand_edges>
				<opcode>extractvalue</opcode>
			</item>
			<item class_id_reference="9" object_id="_27">
				<Value>
					<Obj>
						<type>0</type>
						<id>61</id>
						<name>img_0_rows_V_channel</name>
						<fileName>hls_video_core.h</fileName>
						<fileDirectory>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</fileDirectory>
						<lineNumber>478</lineNumber>
						<contextFuncName>Mat</contextFuncName>
						<inlineStackInfo>
							<count>2</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>478</second>
									</item>
								</second>
							</item>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>77</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>12</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>89</item>
				</oprand_edges>
				<opcode>extractvalue</opcode>
			</item>
			<item class_id_reference="9" object_id="_28">
				<Value>
					<Obj>
						<type>0</type>
						<id>62</id>
						<name>img_0_cols_V</name>
						<fileName>hls_video_core.h</fileName>
						<fileDirectory>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</fileDirectory>
						<lineNumber>478</lineNumber>
						<contextFuncName>Mat</contextFuncName>
						<inlineStackInfo>
							<count>2</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>478</second>
									</item>
								</second>
							</item>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>77</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>img_0.cols.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>12</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>90</item>
				</oprand_edges>
				<opcode>extractvalue</opcode>
			</item>
			<item class_id_reference="9" object_id="_29">
				<Value>
					<Obj>
						<type>0</type>
						<id>63</id>
						<name>img_0_cols_V_channel</name>
						<fileName>hls_video_core.h</fileName>
						<fileDirectory>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</fileDirectory>
						<lineNumber>478</lineNumber>
						<contextFuncName>Mat</contextFuncName>
						<inlineStackInfo>
							<count>2</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>478</second>
									</item>
								</second>
							</item>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>77</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>12</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>91</item>
				</oprand_edges>
				<opcode>extractvalue</opcode>
			</item>
			<item class_id_reference="9" object_id="_30">
				<Value>
					<Obj>
						<type>0</type>
						<id>64</id>
						<name>call_ret1</name>
						<fileName>hls_video_core.h</fileName>
						<fileDirectory>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</fileDirectory>
						<lineNumber>478</lineNumber>
						<contextFuncName>Mat</contextFuncName>
						<inlineStackInfo>
							<count>2</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>478</second>
									</item>
								</second>
							</item>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>78</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>24</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>93</item>
					<item>94</item>
					<item>95</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_31">
				<Value>
					<Obj>
						<type>0</type>
						<id>65</id>
						<name>img_1_rows_V</name>
						<fileName>hls_video_core.h</fileName>
						<fileDirectory>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</fileDirectory>
						<lineNumber>478</lineNumber>
						<contextFuncName>Mat</contextFuncName>
						<inlineStackInfo>
							<count>2</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>478</second>
									</item>
								</second>
							</item>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>78</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>img_1.rows.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>12</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>96</item>
				</oprand_edges>
				<opcode>extractvalue</opcode>
			</item>
			<item class_id_reference="9" object_id="_32">
				<Value>
					<Obj>
						<type>0</type>
						<id>66</id>
						<name>img_1_cols_V</name>
						<fileName>hls_video_core.h</fileName>
						<fileDirectory>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</fileDirectory>
						<lineNumber>478</lineNumber>
						<contextFuncName>Mat</contextFuncName>
						<inlineStackInfo>
							<count>2</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/Vivado_HLS/2013.1/common/technology/autopilot/hls</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_video_core.h</first>
											<second>Mat</second>
										</first>
										<second>478</second>
									</item>
								</second>
							</item>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>78</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>img_1.cols.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>12</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>97</item>
				</oprand_edges>
				<opcode>extractvalue</opcode>
			</item>
			<item class_id_reference="9" object_id="_33">
				<Value>
					<Obj>
						<type>0</type>
						<id>67</id>
						<name></name>
						<fileName>top.cpp</fileName>
						<fileDirectory>/ise_local2/umair_temp/vivado_projects/cvtColor/</fileDirectory>
						<lineNumber>81</lineNumber>
						<contextFuncName>convert_to_gray</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>81</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>13</count>
					<item_version>0</item_version>
					<item>99</item>
					<item>100</item>
					<item>101</item>
					<item>102</item>
					<item>103</item>
					<item>104</item>
					<item>105</item>
					<item>106</item>
					<item>107</item>
					<item>108</item>
					<item>109</item>
					<item>110</item>
					<item>111</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_34">
				<Value>
					<Obj>
						<type>0</type>
						<id>68</id>
						<name></name>
						<fileName>top.cpp</fileName>
						<fileDirectory>/ise_local2/umair_temp/vivado_projects/cvtColor/</fileDirectory>
						<lineNumber>83</lineNumber>
						<contextFuncName>convert_to_gray</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>83</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>10</count>
					<item_version>0</item_version>
					<item>113</item>
					<item>114</item>
					<item>115</item>
					<item>116</item>
					<item>117</item>
					<item>118</item>
					<item>119</item>
					<item>120</item>
					<item>121</item>
					<item>424</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_35">
				<Value>
					<Obj>
						<type>0</type>
						<id>69</id>
						<name></name>
						<fileName>top.cpp</fileName>
						<fileDirectory>/ise_local2/umair_temp/vivado_projects/cvtColor/</fileDirectory>
						<lineNumber>84</lineNumber>
						<contextFuncName>convert_to_gray</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>84</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>14</count>
					<item_version>0</item_version>
					<item>123</item>
					<item>124</item>
					<item>125</item>
					<item>126</item>
					<item>127</item>
					<item>128</item>
					<item>129</item>
					<item>130</item>
					<item>131</item>
					<item>132</item>
					<item>133</item>
					<item>134</item>
					<item>135</item>
					<item>423</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_36">
				<Value>
					<Obj>
						<type>0</type>
						<id>70</id>
						<name></name>
						<fileName>top.cpp</fileName>
						<fileDirectory>/ise_local2/umair_temp/vivado_projects/cvtColor/</fileDirectory>
						<lineNumber>87</lineNumber>
						<contextFuncName>convert_to_gray</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/ise_local2/umair_temp/vivado_projects/cvtColor/</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>top.cpp</first>
											<second>convert_to_gray</second>
										</first>
										<second>87</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_37">
				<Value>
					<Obj>
						<type>2</type>
						<id>77</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_38">
				<Value>
					<Obj>
						<type>2</type>
						<id>84</id>
						<name>init</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>48</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:init&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_39">
				<Value>
					<Obj>
						<type>2</type>
						<id>92</id>
						<name>init_1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>24</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:init.1&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_40">
				<Value>
					<Obj>
						<type>2</type>
						<id>98</id>
						<name>AXIvideo2Mat_32_1080_1920_16_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:AXIvideo2Mat&lt;32,1080,1920,16&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_41">
				<Value>
					<Obj>
						<type>2</type>
						<id>112</id>
						<name>CvtColor_0_16_16_1080_1920_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:CvtColor&lt;0,16,16,1080,1920&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_42">
				<Value>
					<Obj>
						<type>2</type>
						<id>122</id>
						<name>Mat2AXIvideo_32_1080_1920_16_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Mat2AXIvideo&lt;32,1080,1920,16&gt;&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_43">
				<Obj>
					<type>3</type>
					<id>71</id>
					<name>convert_to_gray</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>20</count>
					<item_version>0</item_version>
					<item>32</item>
					<item>33</item>
					<item>34</item>
					<item>37</item>
					<item>40</item>
					<item>43</item>
					<item>46</item>
					<item>49</item>
					<item>59</item>
					<item>60</item>
					<item>61</item>
					<item>62</item>
					<item>63</item>
					<item>64</item>
					<item>65</item>
					<item>66</item>
					<item>67</item>
					<item>68</item>
					<item>69</item>
					<item>70</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>57</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_44">
				<id>74</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>32</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>33</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>34</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>79</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>80</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>40</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>43</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>46</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>83</id>
				<edge_type>1</edge_type>
				<source_obj>77</source_obj>
				<sink_obj>49</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>85</id>
				<edge_type>1</edge_type>
				<source_obj>84</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>87</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>59</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>88</id>
				<edge_type>1</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>89</id>
				<edge_type>1</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>61</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>90</id>
				<edge_type>1</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>62</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>91</id>
				<edge_type>1</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>63</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>93</id>
				<edge_type>1</edge_type>
				<source_obj>92</source_obj>
				<sink_obj>64</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>94</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>64</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>95</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>64</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>96</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>65</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>97</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>66</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>99</id>
				<edge_type>1</edge_type>
				<source_obj>98</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>100</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>101</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>102</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>103</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>104</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>105</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>106</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>107</id>
				<edge_type>1</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>108</id>
				<edge_type>1</edge_type>
				<source_obj>62</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>109</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>110</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>111</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>67</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>113</id>
				<edge_type>1</edge_type>
				<source_obj>112</source_obj>
				<sink_obj>68</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>114</id>
				<edge_type>1</edge_type>
				<source_obj>61</source_obj>
				<sink_obj>68</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>115</id>
				<edge_type>1</edge_type>
				<source_obj>63</source_obj>
				<sink_obj>68</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>116</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>68</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>117</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>68</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>118</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>68</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>68</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>120</id>
				<edge_type>1</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>68</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>121</id>
				<edge_type>1</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>68</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>123</id>
				<edge_type>1</edge_type>
				<source_obj>122</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>124</id>
				<edge_type>1</edge_type>
				<source_obj>65</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>125</id>
				<edge_type>1</edge_type>
				<source_obj>66</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>126</id>
				<edge_type>1</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>127</id>
				<edge_type>1</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>128</id>
				<edge_type>1</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>129</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>130</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_94">
				<id>131</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_95">
				<id>132</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_96">
				<id>133</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_97">
				<id>134</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_98">
				<id>135</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_99">
				<id>423</id>
				<edge_type>4</edge_type>
				<source_obj>68</source_obj>
				<sink_obj>69</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_100">
				<id>424</id>
				<edge_type>4</edge_type>
				<source_obj>67</source_obj>
				<sink_obj>68</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_101">
			<mId>1</mId>
			<mTag>convert_to_gray</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>71</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>-1</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_102">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>5</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_103">
						<type>0</type>
						<name>init_U0</name>
						<ssdmobj_id>59</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>6</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_104">
								<port class_id="29" tracking_level="1" version="0" object_id="_105">
									<name>p_rows</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_106">
									<type>0</type>
									<name>init_U0</name>
									<ssdmobj_id>59</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_107">
								<port class_id_reference="29" object_id="_108">
									<name>p_cols</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_106"></inst>
							</item>
							<item class_id_reference="28" object_id="_109">
								<port class_id_reference="29" object_id="_110">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_106"></inst>
							</item>
							<item class_id_reference="28" object_id="_111">
								<port class_id_reference="29" object_id="_112">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_106"></inst>
							</item>
							<item class_id_reference="28" object_id="_113">
								<port class_id_reference="29" object_id="_114">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_106"></inst>
							</item>
							<item class_id_reference="28" object_id="_115">
								<port class_id_reference="29" object_id="_116">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_106"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_117">
						<type>0</type>
						<name>init_1_U0</name>
						<ssdmobj_id>64</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_118">
								<port class_id_reference="29" object_id="_119">
									<name>p_rows</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_120">
									<type>0</type>
									<name>init_1_U0</name>
									<ssdmobj_id>64</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_121">
								<port class_id_reference="29" object_id="_122">
									<name>p_cols</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_120"></inst>
							</item>
							<item class_id_reference="28" object_id="_123">
								<port class_id_reference="29" object_id="_124">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_120"></inst>
							</item>
							<item class_id_reference="28" object_id="_125">
								<port class_id_reference="29" object_id="_126">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_120"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_127">
						<type>0</type>
						<name>AXIvideo2Mat_32_1080_1920_16_U0</name>
						<ssdmobj_id>67</ssdmobj_id>
						<pins>
							<count>12</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_128">
								<port class_id_reference="29" object_id="_129">
									<name>AXI_video_strm_V_data_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_130">
									<type>0</type>
									<name>AXIvideo2Mat_32_1080_1920_16_U0</name>
									<ssdmobj_id>67</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_131">
								<port class_id_reference="29" object_id="_132">
									<name>AXI_video_strm_V_keep_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_130"></inst>
							</item>
							<item class_id_reference="28" object_id="_133">
								<port class_id_reference="29" object_id="_134">
									<name>AXI_video_strm_V_strb_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_130"></inst>
							</item>
							<item class_id_reference="28" object_id="_135">
								<port class_id_reference="29" object_id="_136">
									<name>AXI_video_strm_V_user_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_130"></inst>
							</item>
							<item class_id_reference="28" object_id="_137">
								<port class_id_reference="29" object_id="_138">
									<name>AXI_video_strm_V_last_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_130"></inst>
							</item>
							<item class_id_reference="28" object_id="_139">
								<port class_id_reference="29" object_id="_140">
									<name>AXI_video_strm_V_id_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_130"></inst>
							</item>
							<item class_id_reference="28" object_id="_141">
								<port class_id_reference="29" object_id="_142">
									<name>AXI_video_strm_V_dest_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_130"></inst>
							</item>
							<item class_id_reference="28" object_id="_143">
								<port class_id_reference="29" object_id="_144">
									<name>img_rows_V_read</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_130"></inst>
							</item>
							<item class_id_reference="28" object_id="_145">
								<port class_id_reference="29" object_id="_146">
									<name>img_cols_V_read</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_130"></inst>
							</item>
							<item class_id_reference="28" object_id="_147">
								<port class_id_reference="29" object_id="_148">
									<name>img_data_stream_0_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_130"></inst>
							</item>
							<item class_id_reference="28" object_id="_149">
								<port class_id_reference="29" object_id="_150">
									<name>img_data_stream_1_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_130"></inst>
							</item>
							<item class_id_reference="28" object_id="_151">
								<port class_id_reference="29" object_id="_152">
									<name>img_data_stream_2_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_130"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_153">
						<type>0</type>
						<name>CvtColor_0_16_16_1080_1920_U0</name>
						<ssdmobj_id>68</ssdmobj_id>
						<pins>
							<count>8</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_154">
								<port class_id_reference="29" object_id="_155">
									<name>p_src_rows_V_read</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_156">
									<type>0</type>
									<name>CvtColor_0_16_16_1080_1920_U0</name>
									<ssdmobj_id>68</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_157">
								<port class_id_reference="29" object_id="_158">
									<name>p_src_cols_V_read</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_156"></inst>
							</item>
							<item class_id_reference="28" object_id="_159">
								<port class_id_reference="29" object_id="_160">
									<name>p_src_data_stream_0_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_156"></inst>
							</item>
							<item class_id_reference="28" object_id="_161">
								<port class_id_reference="29" object_id="_162">
									<name>p_src_data_stream_1_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_156"></inst>
							</item>
							<item class_id_reference="28" object_id="_163">
								<port class_id_reference="29" object_id="_164">
									<name>p_src_data_stream_2_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_156"></inst>
							</item>
							<item class_id_reference="28" object_id="_165">
								<port class_id_reference="29" object_id="_166">
									<name>p_dst_data_stream_0_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_156"></inst>
							</item>
							<item class_id_reference="28" object_id="_167">
								<port class_id_reference="29" object_id="_168">
									<name>p_dst_data_stream_1_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_156"></inst>
							</item>
							<item class_id_reference="28" object_id="_169">
								<port class_id_reference="29" object_id="_170">
									<name>p_dst_data_stream_2_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_156"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_171">
						<type>0</type>
						<name>Mat2AXIvideo_32_1080_1920_16_U0</name>
						<ssdmobj_id>69</ssdmobj_id>
						<pins>
							<count>12</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_172">
								<port class_id_reference="29" object_id="_173">
									<name>img_rows_V_read</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_174">
									<type>0</type>
									<name>Mat2AXIvideo_32_1080_1920_16_U0</name>
									<ssdmobj_id>69</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_175">
								<port class_id_reference="29" object_id="_176">
									<name>img_cols_V_read</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_174"></inst>
							</item>
							<item class_id_reference="28" object_id="_177">
								<port class_id_reference="29" object_id="_178">
									<name>img_data_stream_0_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_174"></inst>
							</item>
							<item class_id_reference="28" object_id="_179">
								<port class_id_reference="29" object_id="_180">
									<name>img_data_stream_1_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_174"></inst>
							</item>
							<item class_id_reference="28" object_id="_181">
								<port class_id_reference="29" object_id="_182">
									<name>img_data_stream_2_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_174"></inst>
							</item>
							<item class_id_reference="28" object_id="_183">
								<port class_id_reference="29" object_id="_184">
									<name>AXI_video_strm_V_data_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_174"></inst>
							</item>
							<item class_id_reference="28" object_id="_185">
								<port class_id_reference="29" object_id="_186">
									<name>AXI_video_strm_V_keep_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_174"></inst>
							</item>
							<item class_id_reference="28" object_id="_187">
								<port class_id_reference="29" object_id="_188">
									<name>AXI_video_strm_V_strb_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_174"></inst>
							</item>
							<item class_id_reference="28" object_id="_189">
								<port class_id_reference="29" object_id="_190">
									<name>AXI_video_strm_V_user_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_174"></inst>
							</item>
							<item class_id_reference="28" object_id="_191">
								<port class_id_reference="29" object_id="_192">
									<name>AXI_video_strm_V_last_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_174"></inst>
							</item>
							<item class_id_reference="28" object_id="_193">
								<port class_id_reference="29" object_id="_194">
									<name>AXI_video_strm_V_id_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_174"></inst>
							</item>
							<item class_id_reference="28" object_id="_195">
								<port class_id_reference="29" object_id="_196">
									<name>AXI_video_strm_V_dest_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_174"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>12</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_197">
						<type>1</type>
						<name>img_0_rows_V</name>
						<ssdmobj_id>60</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>12</bitwidth>
						<source class_id_reference="28" object_id="_198">
							<port class_id_reference="29" object_id="_199">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_106"></inst>
						</source>
						<sink class_id_reference="28" object_id="_200">
							<port class_id_reference="29" object_id="_201">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_130"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_202">
						<type>1</type>
						<name>img_0_rows_V_channel</name>
						<ssdmobj_id>61</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>12</bitwidth>
						<source class_id_reference="28" object_id="_203">
							<port class_id_reference="29" object_id="_204">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_106"></inst>
						</source>
						<sink class_id_reference="28" object_id="_205">
							<port class_id_reference="29" object_id="_206">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_156"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_207">
						<type>1</type>
						<name>img_0_cols_V</name>
						<ssdmobj_id>62</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>12</bitwidth>
						<source class_id_reference="28" object_id="_208">
							<port class_id_reference="29" object_id="_209">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_106"></inst>
						</source>
						<sink class_id_reference="28" object_id="_210">
							<port class_id_reference="29" object_id="_211">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_130"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_212">
						<type>1</type>
						<name>img_0_cols_V_channel</name>
						<ssdmobj_id>63</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>12</bitwidth>
						<source class_id_reference="28" object_id="_213">
							<port class_id_reference="29" object_id="_214">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_106"></inst>
						</source>
						<sink class_id_reference="28" object_id="_215">
							<port class_id_reference="29" object_id="_216">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_156"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_217">
						<type>1</type>
						<name>img_1_rows_V</name>
						<ssdmobj_id>65</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>12</bitwidth>
						<source class_id_reference="28" object_id="_218">
							<port class_id_reference="29" object_id="_219">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_120"></inst>
						</source>
						<sink class_id_reference="28" object_id="_220">
							<port class_id_reference="29" object_id="_221">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_174"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_222">
						<type>1</type>
						<name>img_1_cols_V</name>
						<ssdmobj_id>66</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>12</bitwidth>
						<source class_id_reference="28" object_id="_223">
							<port class_id_reference="29" object_id="_224">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_120"></inst>
						</source>
						<sink class_id_reference="28" object_id="_225">
							<port class_id_reference="29" object_id="_226">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_174"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_227">
						<type>1</type>
						<name>img_0_data_stream_0_V</name>
						<ssdmobj_id>34</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_228">
							<port class_id_reference="29" object_id="_229">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_130"></inst>
						</source>
						<sink class_id_reference="28" object_id="_230">
							<port class_id_reference="29" object_id="_231">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_156"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_232">
						<type>1</type>
						<name>img_0_data_stream_1_V</name>
						<ssdmobj_id>37</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_233">
							<port class_id_reference="29" object_id="_234">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_130"></inst>
						</source>
						<sink class_id_reference="28" object_id="_235">
							<port class_id_reference="29" object_id="_236">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_156"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_237">
						<type>1</type>
						<name>img_0_data_stream_2_V</name>
						<ssdmobj_id>40</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_238">
							<port class_id_reference="29" object_id="_239">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_130"></inst>
						</source>
						<sink class_id_reference="28" object_id="_240">
							<port class_id_reference="29" object_id="_241">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_156"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_242">
						<type>1</type>
						<name>img_1_data_stream_0_V</name>
						<ssdmobj_id>43</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_243">
							<port class_id_reference="29" object_id="_244">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_156"></inst>
						</source>
						<sink class_id_reference="28" object_id="_245">
							<port class_id_reference="29" object_id="_246">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_174"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_247">
						<type>1</type>
						<name>img_1_data_stream_1_V</name>
						<ssdmobj_id>46</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_248">
							<port class_id_reference="29" object_id="_249">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_156"></inst>
						</source>
						<sink class_id_reference="28" object_id="_250">
							<port class_id_reference="29" object_id="_251">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_174"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_252">
						<type>1</type>
						<name>img_1_data_stream_2_V</name>
						<ssdmobj_id>49</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_253">
							<port class_id_reference="29" object_id="_254">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_156"></inst>
						</source>
						<sink class_id_reference="28" object_id="_255">
							<port class_id_reference="29" object_id="_256">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_174"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="34" tracking_level="1" version="0" object_id="_257">
		<states class_id="35" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="36" tracking_level="1" version="0" object_id="_258">
				<id>1</id>
				<operations class_id="37" tracking_level="0" version="0">
					<count>17</count>
					<item_version>0</item_version>
					<item class_id="38" tracking_level="1" version="0" object_id="_259">
						<id>32</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_260">
						<id>33</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_261">
						<id>34</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_262">
						<id>37</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_263">
						<id>40</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_264">
						<id>43</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_265">
						<id>46</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_266">
						<id>49</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_267">
						<id>59</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_268">
						<id>60</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_269">
						<id>61</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_270">
						<id>62</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_271">
						<id>63</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_272">
						<id>64</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_273">
						<id>65</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_274">
						<id>66</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_275">
						<id>67</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_276">
				<id>2</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_277">
						<id>67</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_278">
				<id>3</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_279">
						<id>68</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_280">
				<id>4</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_281">
						<id>68</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_282">
				<id>5</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_283">
						<id>69</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_284">
				<id>6</id>
				<operations>
					<count>36</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_285">
						<id>17</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_286">
						<id>18</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_287">
						<id>19</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_288">
						<id>20</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_289">
						<id>21</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_290">
						<id>22</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_291">
						<id>23</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_292">
						<id>24</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_293">
						<id>25</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_294">
						<id>26</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_295">
						<id>27</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_296">
						<id>28</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_297">
						<id>29</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_298">
						<id>30</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_299">
						<id>31</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_300">
						<id>35</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_301">
						<id>36</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_302">
						<id>38</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_303">
						<id>39</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_304">
						<id>41</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_305">
						<id>42</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_306">
						<id>44</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_307">
						<id>45</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_308">
						<id>47</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_309">
						<id>48</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_310">
						<id>50</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_311">
						<id>51</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_312">
						<id>52</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_313">
						<id>53</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_314">
						<id>54</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_315">
						<id>55</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_316">
						<id>56</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_317">
						<id>57</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_318">
						<id>58</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_319">
						<id>69</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_320">
						<id>70</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="39" tracking_level="0" version="0">
			<count>5</count>
			<item_version>0</item_version>
			<item class_id="40" tracking_level="1" version="0" object_id="_321">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="41" tracking_level="0" version="0">
					<id>0</id>
					<sop class_id="42" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="43" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_322">
				<inState>2</inState>
				<outState>3</outState>
				<condition>
					<id>1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_323">
				<inState>3</inState>
				<outState>4</outState>
				<condition>
					<id>2</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_324">
				<inState>4</inState>
				<outState>5</outState>
				<condition>
					<id>3</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_325">
				<inState>5</inState>
				<outState>6</outState>
				<condition>
					<id>4</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="44" tracking_level="1" version="0" object_id="_326">
		<dp_component_resource class_id="45" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</dp_component_resource>
		<dp_expression_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_expression_resource>
		<dp_fifo_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_fifo_resource>
		<dp_memory_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_memory_resource>
		<dp_multiplexer_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_multiplexer_resource>
		<dp_register_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_register_resource>
		<dp_component_map class_id="46" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</dp_component_map>
		<dp_expression_map>
			<count>0</count>
			<item_version>0</item_version>
		</dp_expression_map>
		<dp_fifo_map>
			<count>0</count>
			<item_version>0</item_version>
		</dp_fifo_map>
		<dp_memory_map>
			<count>0</count>
			<item_version>0</item_version>
		</dp_memory_map>
	</res>
	<node_label_latency class_id="47" tracking_level="0" version="0">
		<count>20</count>
		<item_version>0</item_version>
		<item class_id="48" tracking_level="0" version="0">
			<first>32</first>
			<second class_id="49" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>33</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>34</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>37</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>40</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>43</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>46</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>49</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>59</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>60</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>61</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>62</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>63</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>64</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>65</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>66</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>67</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>68</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>69</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>70</first>
			<second>
				<first>5</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="50" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="51" tracking_level="0" version="0">
			<first>71</first>
			<second class_id="52" tracking_level="0" version="0">
				<first>0</first>
				<second>5</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="53" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="54" tracking_level="1" version="0" object_id="_327">
			<region_name>convert_to_gray</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>71</item>
			</basic_blocks>
			<nodes>
				<count>54</count>
				<item_version>0</item_version>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
				<item>60</item>
				<item>61</item>
				<item>62</item>
				<item>63</item>
				<item>64</item>
				<item>65</item>
				<item>66</item>
				<item>67</item>
				<item>68</item>
				<item>69</item>
				<item>70</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="55" tracking_level="0" version="0">
		<count>19</count>
		<item_version>0</item_version>
		<item class_id="56" tracking_level="0" version="0">
			<first>138</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>34</item>
			</second>
		</item>
		<item>
			<first>142</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>37</item>
			</second>
		</item>
		<item>
			<first>146</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>40</item>
			</second>
		</item>
		<item>
			<first>150</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>43</item>
			</second>
		</item>
		<item>
			<first>154</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>46</item>
			</second>
		</item>
		<item>
			<first>158</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>49</item>
			</second>
		</item>
		<item>
			<first>162</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
		<item>
			<first>168</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>33</item>
			</second>
		</item>
		<item>
			<first>175</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>68</item>
				<item>68</item>
			</second>
		</item>
		<item>
			<first>187</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>67</item>
				<item>67</item>
			</second>
		</item>
		<item>
			<first>210</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>69</item>
				<item>69</item>
			</second>
		</item>
		<item>
			<first>233</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>59</item>
			</second>
		</item>
		<item>
			<first>241</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>64</item>
			</second>
		</item>
		<item>
			<first>249</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>60</item>
			</second>
		</item>
		<item>
			<first>254</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>61</item>
			</second>
		</item>
		<item>
			<first>258</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>62</item>
			</second>
		</item>
		<item>
			<first>263</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>63</item>
			</second>
		</item>
		<item>
			<first>267</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>65</item>
			</second>
		</item>
		<item>
			<first>271</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>66</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="58" tracking_level="0" version="0">
		<count>12</count>
		<item_version>0</item_version>
		<item class_id="59" tracking_level="0" version="0">
			<first>img_0_cols_V_channel_fu_263</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>63</item>
			</second>
		</item>
		<item>
			<first>img_0_cols_V_fu_258</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>62</item>
			</second>
		</item>
		<item>
			<first>img_0_data_stream_0_V_fu_138</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>34</item>
			</second>
		</item>
		<item>
			<first>img_0_data_stream_1_V_fu_142</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>37</item>
			</second>
		</item>
		<item>
			<first>img_0_data_stream_2_V_fu_146</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>40</item>
			</second>
		</item>
		<item>
			<first>img_0_rows_V_channel_fu_254</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>61</item>
			</second>
		</item>
		<item>
			<first>img_0_rows_V_fu_249</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>60</item>
			</second>
		</item>
		<item>
			<first>img_1_cols_V_fu_271</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>66</item>
			</second>
		</item>
		<item>
			<first>img_1_data_stream_0_V_fu_150</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>43</item>
			</second>
		</item>
		<item>
			<first>img_1_data_stream_1_V_fu_154</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>46</item>
			</second>
		</item>
		<item>
			<first>img_1_data_stream_2_V_fu_158</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>49</item>
			</second>
		</item>
		<item>
			<first>img_1_rows_V_fu_267</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>65</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>5</count>
		<item_version>0</item_version>
		<item>
			<first>call_ret1_init_1_fu_241</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>64</item>
			</second>
		</item>
		<item>
			<first>call_ret_init_fu_233</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>59</item>
			</second>
		</item>
		<item>
			<first>grp_AXIvideo2Mat_32_1080_1920_16_s_fu_187</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>67</item>
				<item>67</item>
			</second>
		</item>
		<item>
			<first>grp_CvtColor_0_16_16_1080_1920_s_fu_175</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>68</item>
				<item>68</item>
			</second>
		</item>
		<item>
			<first>grp_Mat2AXIvideo_32_1080_1920_16_s_fu_210</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>69</item>
				<item>69</item>
			</second>
		</item>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>2</count>
		<item_version>0</item_version>
		<item>
			<first>cols_read_wireread_fu_162</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
		<item>
			<first>rows_read_wireread_fu_168</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>33</item>
			</second>
		</item>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="60" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>12</count>
		<item_version>0</item_version>
		<item>
			<first>275</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>34</item>
			</second>
		</item>
		<item>
			<first>281</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>37</item>
			</second>
		</item>
		<item>
			<first>287</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>40</item>
			</second>
		</item>
		<item>
			<first>293</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>43</item>
			</second>
		</item>
		<item>
			<first>299</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>46</item>
			</second>
		</item>
		<item>
			<first>305</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>49</item>
			</second>
		</item>
		<item>
			<first>311</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>60</item>
			</second>
		</item>
		<item>
			<first>316</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>61</item>
			</second>
		</item>
		<item>
			<first>321</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>62</item>
			</second>
		</item>
		<item>
			<first>326</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>63</item>
			</second>
		</item>
		<item>
			<first>331</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>65</item>
			</second>
		</item>
		<item>
			<first>336</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>66</item>
			</second>
		</item>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>12</count>
		<item_version>0</item_version>
		<item>
			<first>img_0_cols_V_channel_reg_326</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>63</item>
			</second>
		</item>
		<item>
			<first>img_0_cols_V_reg_321</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>62</item>
			</second>
		</item>
		<item>
			<first>img_0_data_stream_0_V_reg_275</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>34</item>
			</second>
		</item>
		<item>
			<first>img_0_data_stream_1_V_reg_281</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>37</item>
			</second>
		</item>
		<item>
			<first>img_0_data_stream_2_V_reg_287</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>40</item>
			</second>
		</item>
		<item>
			<first>img_0_rows_V_channel_reg_316</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>61</item>
			</second>
		</item>
		<item>
			<first>img_0_rows_V_reg_311</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>60</item>
			</second>
		</item>
		<item>
			<first>img_1_cols_V_reg_336</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>66</item>
			</second>
		</item>
		<item>
			<first>img_1_data_stream_0_V_reg_293</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>43</item>
			</second>
		</item>
		<item>
			<first>img_1_data_stream_1_V_reg_299</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>46</item>
			</second>
		</item>
		<item>
			<first>img_1_data_stream_2_V_reg_305</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>49</item>
			</second>
		</item>
		<item>
			<first>img_1_rows_V_reg_331</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>65</item>
			</second>
		</item>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="61" tracking_level="0" version="0">
		<count>16</count>
		<item_version>0</item_version>
		<item class_id="62" tracking_level="0" version="0">
			<first>cols</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>wireread</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>32</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>input_V_data_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>67</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>input_V_dest_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>67</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>input_V_id_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>67</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>input_V_keep_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>67</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>input_V_last_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>67</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>input_V_strb_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>67</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>input_V_user_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>67</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>output_V_data_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>69</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>output_V_dest_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>69</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>output_V_id_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>69</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>output_V_keep_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>69</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>output_V_last_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>69</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>output_V_strb_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>69</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>output_V_user_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>69</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>rows</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>wireread</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>33</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="63" tracking_level="0" version="0">
		<count>16</count>
		<item_version>0</item_version>
		<item class_id="64" tracking_level="0" version="0">
			<first>1</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>2</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>3</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>4</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>5</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>6</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>7</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>8</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>9</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>10</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>11</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>12</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>13</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>14</first>
			<second>AXI4Stream</second>
		</item>
		<item>
			<first>15</first>
			<second>AXI4LiteS</second>
		</item>
		<item>
			<first>16</first>
			<second>AXI4LiteS</second>
		</item>
	</port2core>
	<node2core>
		<count>14</count>
		<item_version>0</item_version>
		<item>
			<first>32</first>
			<second>AXI4LiteS</second>
		</item>
		<item>
			<first>33</first>
			<second>AXI4LiteS</second>
		</item>
		<item>
			<first>34</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>37</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>40</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>43</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>46</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>49</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>60</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>61</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>62</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>63</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>65</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>66</first>
			<second>FIFO</second>
		</item>
	</node2core>
</syndb>
</boost_serialization>

