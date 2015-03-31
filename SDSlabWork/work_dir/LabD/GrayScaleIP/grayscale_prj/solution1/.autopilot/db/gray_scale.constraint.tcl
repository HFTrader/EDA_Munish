set clock_constraint { \
    name clk \
    module gray_scale \
    port ap_clk \
    period 6.66667 \
    uncertainty 0.833333 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module gray_scale \
            instance rows \
            bitWidth 32 \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

set one_path { \
    name conx_path_1 \
    type single_source \
    source { \
            module gray_scale \
            instance cols \
            bitWidth 32 \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_1
