// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video

#include "${ip_name}_func.h"

// driver instances for Grayscale_HA
<#list 1..num_grip_rules as i>
#if ${ip_name?upper_case}_NUM_GRIPRULE${i}_INSTANCES != 0
    ${ip_name}Rule${i}DriverInstance ${ip_name}Rule${i}Driver[${ip_name?upper_case}_NUM_GRIPRULE${i}_INSTANCES];
#endif
</#list>

void ${ip_name}_func_init(${interruptcontroller} *InterruptController<#if ip_sw_param_types?size != 0>, <#if ip_sw_param_types?size &gt; 1><#list 0..ip_sw_param_types?size-2 as i>${ip_sw_param_types[i]} ${ip_sw_param_names[i]}, </#list></#if>${ip_sw_param_types[ip_sw_param_types?size-1]} ${ip_sw_param_names[ip_sw_param_names?size-1]}</#if>) {

#if ${ip_name?upper_case}_NUM_INSTANCES != 0
    int ip_instance_idx = 0;
    <#list 1..num_grip_rules as i>
    int rule${i}_driver_idx = 0;
    </#list>
    
    for (ip_instance_idx=0; ip_instance_idx<${ip_name?upper_case}_NUM_INSTANCES; ip_instance_idx++) {
#if ${ip_name?upper_case}_NUM_GRIPRULE1_INSTANCES != 0    
		if (${ip_name?upper_case}_INFO[ip_instance_idx].grip_rule == 1) {
			${ip_name}Rule1Driver[rule1_driver_idx].baseaddr = ${ip_name?upper_case}_INFO[ip_instance_idx].baseaddr;
			${ip_name}Rule1Driver[rule1_driver_idx].vdmaDriver.baseaddr = ${ip_name?upper_case}_INFO[ip_instance_idx].vdma_baseaddr;
			${ip_name}Rule1Driver[rule1_driver_idx].vdmaDriver.intr_id = ${ip_name?upper_case}_INFO[ip_instance_idx].intr_id;
			${ip_name}Rule1Driver[rule1_driver_idx].vdmaDriver.busy = 0;

			${ip_name}_Rule1Driver_initialize(&${ip_name}Rule1Driver[rule1_driver_idx], InterruptController<#if ip_sw_param_names?size != 0>, <#if ip_sw_param_names?size &gt; 1><#list 0..ip_sw_param_names?size-2 as i>${ip_sw_param_names[i]}, </#list></#if>${ip_sw_param_names[ip_sw_param_names?size-1]}</#if>);
			rule1_driver_idx++;
		}
#endif		
		
#if ${ip_name?upper_case}_NUM_GRIPRULE2_INSTANCES != 0
		if (${ip_name?upper_case}_INFO[ip_instance_idx].grip_rule == 2) {
			${ip_name}Rule2Driver[rule2_driver_idx].baseaddr = ${ip_name?upper_case}_INFO[ip_instance_idx].baseaddr;
			${ip_name}Rule2Driver[rule2_driver_idx].intr_id = ${ip_name?upper_case}_INFO[ip_instance_idx].intr_id;
			${ip_name}Rule2Driver[rule2_driver_idx].busy = 0;

			${ip_name}_Rule2Driver_initialize(&${ip_name}Rule2Driver[rule2_driver_idx], InterruptController<#if ip_sw_param_names?size != 0>, <#if ip_sw_param_names?size &gt; 1><#list 0..ip_sw_param_names?size-2 as i>${ip_sw_param_names[i]}, </#list></#if>${ip_sw_param_names[ip_sw_param_names?size-1]}</#if>);
			rule2_driver_idx++;
		}
#endif
    }
    
    ip_instance_idx = 0;
    <#list 1..num_grip_rules as i>
    rule${i}_driver_idx = 0;
    </#list>

#endif    
}


void ${ip_sw_name}_func(<#if ip_sw_param_types?size != 0><#if ip_sw_param_types?size &gt; 1><#list 0..ip_sw_param_types?size-2 as i>${ip_sw_param_types[i]} ${ip_sw_param_names[i]}, </#list></#if>${ip_sw_param_types[ip_sw_param_types?size-1]} ${ip_sw_param_names[ip_sw_param_names?size-1]}</#if>) {

#if ${ip_name?upper_case}_NUM_INSTANCES == 0
    ${ip_sw_name}(<#if ip_sw_param_names?size != 0><#if ip_sw_param_names?size &gt; 1><#list 0..ip_sw_param_names?size-2 as i>${ip_sw_param_names[i]}, </#list></#if>${ip_sw_param_names[ip_sw_param_names?size-1]}</#if>);
#else
    int ip_instance_idx = 0;
    <#list 1..num_grip_rules as i>
    int rule${i}_driver_idx = 0;
    </#list>    
    
    for (ip_instance_idx=0; ip_instance_idx<${ip_name?upper_case}_NUM_INSTANCES; ip_instance_idx++) {
        <#list 1..num_grip_rules as i>
#if ${ip_name?upper_case}_NUM_GRIPRULE${i}_INSTANCES != 0
        if (${ip_name?upper_case}_INFO[ip_instance_idx].grip_rule == ${i}) {
            if (${ip_name}_Rule${i}Driver_isBusy(&${ip_name}Rule${i}Driver[rule${i}_driver_idx]) == 0) {               // a free IP instance found
                ${ip_name}_Rule${i}Driver_start(&${ip_name}Rule${i}Driver[rule${i}_driver_idx]<#if ip_sw_param_names?size != 0>, <#if ip_sw_param_names?size &gt; 1><#list 0..ip_sw_param_names?size-2 as i>${ip_sw_param_names[i]}, </#list></#if>${ip_sw_param_names[ip_sw_param_names?size-1]}</#if>);
                while(${ip_name}_Rule${i}Driver_isBusy(&${ip_name}Rule${i}Driver[rule${i}_driver_idx]) == 1);
                return;            
            } 
            rule${i}_driver_idx++;
        }
#endif        
        </#list>    
    }
    
    ${ip_sw_name}(<#if ip_sw_param_names?size != 0><#if ip_sw_param_names?size &gt; 1><#list 0..ip_sw_param_names?size-2 as i>${ip_sw_param_names[i]}, </#list></#if>${ip_sw_param_names[ip_sw_param_names?size-1]}</#if>);    
#endif    
}









