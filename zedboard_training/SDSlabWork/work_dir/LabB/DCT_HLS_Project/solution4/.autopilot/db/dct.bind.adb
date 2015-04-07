<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="10">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>dct</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>input_r</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>64</array_size>
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
						<name>output_r</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>output</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>1</if_type>
				<array_size>64</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_3">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>buf_2d_in</name>
						<fileName>../../project_documents/LabB/dct.cpp</fileName>
						<fileDirectory>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</fileDirectory>
						<lineNumber>85</lineNumber>
						<contextFuncName>dct</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>../../project_documents/LabB/dct.cpp</first>
											<second>dct</second>
										</first>
										<second>85</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>buf_2d_in</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>23</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>buf_2d_out</name>
						<fileName>../../project_documents/LabB/dct.cpp</fileName>
						<fileDirectory>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</fileDirectory>
						<lineNumber>86</lineNumber>
						<contextFuncName>dct</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../project_documents/LabB/dct.cpp</first>
											<second>dct</second>
										</first>
										<second>86</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>buf_2d_out</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>24</item>
				</oprand_edges>
				<opcode>alloca</opcode>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>17</id>
						<name></name>
						<fileName>../../project_documents/LabB/dct.cpp</fileName>
						<fileDirectory>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</fileDirectory>
						<lineNumber>89</lineNumber>
						<contextFuncName>dct</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../project_documents/LabB/dct.cpp</first>
											<second>dct</second>
										</first>
										<second>89</second>
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
					<count>3</count>
					<item_version>0</item_version>
					<item>26</item>
					<item>27</item>
					<item>28</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>18</id>
						<name></name>
						<fileName>../../project_documents/LabB/dct.cpp</fileName>
						<fileDirectory>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</fileDirectory>
						<lineNumber>91</lineNumber>
						<contextFuncName>dct</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../project_documents/LabB/dct.cpp</first>
											<second>dct</second>
										</first>
										<second>91</second>
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
					<item>30</item>
					<item>31</item>
					<item>32</item>
					<item>37</item>
					<item>38</item>
					<item>39</item>
					<item>40</item>
					<item>41</item>
					<item>42</item>
					<item>43</item>
					<item>44</item>
					<item>61</item>
					<item>62</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>19</id>
						<name></name>
						<fileName>../../project_documents/LabB/dct.cpp</fileName>
						<fileDirectory>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</fileDirectory>
						<lineNumber>94</lineNumber>
						<contextFuncName>dct</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../project_documents/LabB/dct.cpp</first>
											<second>dct</second>
										</first>
										<second>94</second>
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
					<count>5</count>
					<item_version>0</item_version>
					<item>34</item>
					<item>35</item>
					<item>36</item>
					<item>60</item>
					<item>63</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>20</id>
						<name></name>
						<fileName>../../project_documents/LabB/dct.cpp</fileName>
						<fileDirectory>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</fileDirectory>
						<lineNumber>95</lineNumber>
						<contextFuncName>dct</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ga38qoh/EDA_Munish/SDSlabWork/work_dir/LabB</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>../../project_documents/LabB/dct.cpp</first>
											<second>dct</second>
										</first>
										<second>95</second>
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
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_9">
				<Value>
					<Obj>
						<type>2</type>
						<id>22</id>
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
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_10">
				<Value>
					<Obj>
						<type>2</type>
						<id>25</id>
						<name>read_data</name>
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
				<content>&lt;constant:read_data&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_11">
				<Value>
					<Obj>
						<type>2</type>
						<id>29</id>
						<name>dct_2d</name>
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
				<content>&lt;constant:dct_2d&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_12">
				<Value>
					<Obj>
						<type>2</type>
						<id>33</id>
						<name>write_data</name>
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
				<content>&lt;constant:write_data&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_13">
				<Obj>
					<type>3</type>
					<id>21</id>
					<name>dct</name>
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
					<count>6</count>
					<item_version>0</item_version>
					<item>15</item>
					<item>16</item>
					<item>17</item>
					<item>18</item>
					<item>19</item>
					<item>20</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>23</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_14">
				<id>23</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>15</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_15">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>16</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_16">
				<id>26</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>17</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_17">
				<id>27</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>17</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_18">
				<id>28</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>17</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_19">
				<id>30</id>
				<edge_type>1</edge_type>
				<source_obj>29</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_20">
				<id>31</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_21">
				<id>32</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_22">
				<id>34</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>19</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_23">
				<id>35</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>19</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>36</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>19</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>37</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>38</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>39</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>40</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>41</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>42</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>43</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>44</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>60</id>
				<edge_type>4</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>19</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>61</id>
				<edge_type>4</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>62</id>
				<edge_type>4</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>18</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>63</id>
				<edge_type>4</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>19</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_37">
			<mId>1</mId>
			<mTag>dct</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>21</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>895</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_38">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>3</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_39">
						<type>0</type>
						<name>read_data_U0</name>
						<ssdmobj_id>17</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>2</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_40">
								<port class_id="29" tracking_level="1" version="0" object_id="_41">
									<name>input</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_42">
									<type>0</type>
									<name>read_data_U0</name>
									<ssdmobj_id>17</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_43">
								<port class_id_reference="29" object_id="_44">
									<name>buf</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_42"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_45">
						<type>0</type>
						<name>dct_2d_U0</name>
						<ssdmobj_id>18</ssdmobj_id>
						<pins>
							<count>10</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_46">
								<port class_id_reference="29" object_id="_47">
									<name>in_block</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_48">
									<type>0</type>
									<name>dct_2d_U0</name>
									<ssdmobj_id>18</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_49">
								<port class_id_reference="29" object_id="_50">
									<name>out_block</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
							<item class_id_reference="28" object_id="_51">
								<port class_id_reference="29" object_id="_52">
									<name>dct_coeff_table_0</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
							<item class_id_reference="28" object_id="_53">
								<port class_id_reference="29" object_id="_54">
									<name>dct_coeff_table_1</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
							<item class_id_reference="28" object_id="_55">
								<port class_id_reference="29" object_id="_56">
									<name>dct_coeff_table_2</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
							<item class_id_reference="28" object_id="_57">
								<port class_id_reference="29" object_id="_58">
									<name>dct_coeff_table_3</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
							<item class_id_reference="28" object_id="_59">
								<port class_id_reference="29" object_id="_60">
									<name>dct_coeff_table_4</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
							<item class_id_reference="28" object_id="_61">
								<port class_id_reference="29" object_id="_62">
									<name>dct_coeff_table_5</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
							<item class_id_reference="28" object_id="_63">
								<port class_id_reference="29" object_id="_64">
									<name>dct_coeff_table_6</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
							<item class_id_reference="28" object_id="_65">
								<port class_id_reference="29" object_id="_66">
									<name>dct_coeff_table_7</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_67">
						<type>0</type>
						<name>write_data_U0</name>
						<ssdmobj_id>19</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_68">
								<port class_id_reference="29" object_id="_69">
									<name>buf</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_70">
									<type>0</type>
									<name>write_data_U0</name>
									<ssdmobj_id>19</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_71">
								<port class_id_reference="29" object_id="_72">
									<name>output</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_70"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>2</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_73">
						<type>1</type>
						<name>buf_2d_in</name>
						<ssdmobj_id>15</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_74">
							<port class_id_reference="29" object_id="_75">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_42"></inst>
						</source>
						<sink class_id_reference="28" object_id="_76">
							<port class_id_reference="29" object_id="_77">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_48"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_78">
						<type>1</type>
						<name>buf_2d_out</name>
						<ssdmobj_id>16</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_79">
							<port class_id_reference="29" object_id="_80">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_48"></inst>
						</source>
						<sink class_id_reference="28" object_id="_81">
							<port class_id_reference="29" object_id="_82">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_70"></inst>
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
	<fsm class_id="34" tracking_level="1" version="0" object_id="_83">
		<states class_id="35" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="36" tracking_level="1" version="0" object_id="_84">
				<id>1</id>
				<operations class_id="37" tracking_level="0" version="0">
					<count>3</count>
					<item_version>0</item_version>
					<item class_id="38" tracking_level="1" version="0" object_id="_85">
						<id>15</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_86">
						<id>16</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_87">
						<id>17</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_88">
				<id>2</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_89">
						<id>17</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_90">
				<id>3</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_91">
						<id>18</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_92">
				<id>4</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_93">
						<id>18</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_94">
				<id>5</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_95">
						<id>19</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_96">
				<id>6</id>
				<operations>
					<count>6</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_97">
						<id>11</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_98">
						<id>12</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_99">
						<id>13</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_100">
						<id>14</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_101">
						<id>19</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_102">
						<id>20</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="39" tracking_level="0" version="0">
			<count>5</count>
			<item_version>0</item_version>
			<item class_id="40" tracking_level="1" version="0" object_id="_103">
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
			<item class_id_reference="40" object_id="_104">
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
			<item class_id_reference="40" object_id="_105">
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
			<item class_id_reference="40" object_id="_106">
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
			<item class_id_reference="40" object_id="_107">
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
	<res class_id="44" tracking_level="1" version="0" object_id="_108">
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
		<count>6</count>
		<item_version>0</item_version>
		<item class_id="48" tracking_level="0" version="0">
			<first>15</first>
			<second class_id="49" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>17</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>18</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>20</first>
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
			<first>21</first>
			<second class_id="52" tracking_level="0" version="0">
				<first>0</first>
				<second>5</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="53" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="54" tracking_level="1" version="0" object_id="_109">
			<region_name>dct</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>21</item>
			</basic_blocks>
			<nodes>
				<count>10</count>
				<item_version>0</item_version>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="55" tracking_level="0" version="0">
		<count>5</count>
		<item_version>0</item_version>
		<item class_id="56" tracking_level="0" version="0">
			<first>40</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>44</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>49</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>18</item>
				<item>18</item>
			</second>
		</item>
		<item>
			<first>71</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>19</item>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>78</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>17</item>
				<item>17</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="58" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="59" tracking_level="0" version="0">
			<first>buf_2d_in_alloca_fu_40</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>buf_2d_out_alloca_fu_44</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>3</count>
		<item_version>0</item_version>
		<item>
			<first>grp_dct_2d_fu_49</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>18</item>
				<item>18</item>
			</second>
		</item>
		<item>
			<first>grp_read_data_fu_78</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>17</item>
				<item>17</item>
			</second>
		</item>
		<item>
			<first>grp_write_data_fu_71</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>19</item>
				<item>19</item>
			</second>
		</item>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="60" tracking_level="0" version="0">
		<count>8</count>
		<item_version>0</item_version>
		<item class_id="61" tracking_level="0" version="0">
			<first class_id="62" tracking_level="0" version="0">
				<first>dct_coeff_table_0</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
		<item>
			<first>
				<first>dct_coeff_table_1</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
		<item>
			<first>
				<first>dct_coeff_table_2</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
		<item>
			<first>
				<first>dct_coeff_table_3</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
		<item>
			<first>
				<first>dct_coeff_table_4</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
		<item>
			<first>
				<first>dct_coeff_table_5</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
		<item>
			<first>
				<first>dct_coeff_table_6</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
		<item>
			<first>
				<first>dct_coeff_table_7</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="63" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="64" tracking_level="0" version="0">
			<first>input_r</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>17</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>output_r</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>19</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="65" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="66" tracking_level="0" version="0">
			<first>1</first>
			<second>RAM</second>
		</item>
		<item>
			<first>2</first>
			<second>RAM</second>
		</item>
	</port2core>
	<node2core>
		<count>2</count>
		<item_version>0</item_version>
		<item>
			<first>15</first>
			<second>RAM</second>
		</item>
		<item>
			<first>16</first>
			<second>RAM</second>
		</item>
	</node2core>
</syndb>
</boost_serialization>

