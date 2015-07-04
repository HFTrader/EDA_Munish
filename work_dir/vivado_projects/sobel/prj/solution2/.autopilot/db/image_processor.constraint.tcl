set clock_constraint { \
    name clk \
    module image_processor \
    port ap_clk \
    period 125 \
    uncertainty 15.625 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module image_processor \
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
            module image_processor \
            instance cols \
            bitWidth 32 \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_1

