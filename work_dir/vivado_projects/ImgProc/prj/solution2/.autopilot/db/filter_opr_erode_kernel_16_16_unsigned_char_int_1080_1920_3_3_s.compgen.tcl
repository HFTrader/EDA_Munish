# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name p_src_data_stream_0_V \
    reset_level 1 \
    sync_rst true \
    corename dc_p_src_data_stream_0_V \
    op interface \
    ports { p_src_data_stream_0_V_dout { I 8 vector } p_src_data_stream_0_V_empty_n { I 1 bit } p_src_data_stream_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name p_src_data_stream_1_V \
    reset_level 1 \
    sync_rst true \
    corename dc_p_src_data_stream_1_V \
    op interface \
    ports { p_src_data_stream_1_V_dout { I 8 vector } p_src_data_stream_1_V_empty_n { I 1 bit } p_src_data_stream_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name p_src_data_stream_2_V \
    reset_level 1 \
    sync_rst true \
    corename dc_p_src_data_stream_2_V \
    op interface \
    ports { p_src_data_stream_2_V_dout { I 8 vector } p_src_data_stream_2_V_empty_n { I 1 bit } p_src_data_stream_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name p_dst_data_stream_0_V \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst_data_stream_0_V \
    op interface \
    ports { p_dst_data_stream_0_V_din { O 8 vector } p_dst_data_stream_0_V_full_n { I 1 bit } p_dst_data_stream_0_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name p_dst_data_stream_1_V \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst_data_stream_1_V \
    op interface \
    ports { p_dst_data_stream_1_V_din { O 8 vector } p_dst_data_stream_1_V_full_n { I 1 bit } p_dst_data_stream_1_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name p_dst_data_stream_2_V \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst_data_stream_2_V \
    op interface \
    ports { p_dst_data_stream_2_V_din { O 8 vector } p_dst_data_stream_2_V_full_n { I 1 bit } p_dst_data_stream_2_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name kernel_val_0_0_read \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_val_0_0_read \
    op interface \
    ports { kernel_val_0_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name kernel_val_0_1_read \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_val_0_1_read \
    op interface \
    ports { kernel_val_0_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name kernel_val_0_2_read \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_val_0_2_read \
    op interface \
    ports { kernel_val_0_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name kernel_val_1_0_read \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_val_1_0_read \
    op interface \
    ports { kernel_val_1_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name kernel_val_1_1_read \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_val_1_1_read \
    op interface \
    ports { kernel_val_1_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name kernel_val_1_2_read \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_val_1_2_read \
    op interface \
    ports { kernel_val_1_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name kernel_val_2_0_read \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_val_2_0_read \
    op interface \
    ports { kernel_val_2_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name kernel_val_2_1_read \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_val_2_1_read \
    op interface \
    ports { kernel_val_2_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name kernel_val_2_2_read \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_val_2_2_read \
    op interface \
    ports { kernel_val_2_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name rows \
    reset_level 1 \
    sync_rst true \
    corename dc_rows \
    op interface \
    ports { rows { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name cols \
    reset_level 1 \
    sync_rst true \
    corename dc_cols \
    op interface \
    ports { cols { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
}


