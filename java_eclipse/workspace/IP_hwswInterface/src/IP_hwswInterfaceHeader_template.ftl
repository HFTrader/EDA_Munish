// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware ${ip_name} filtering on captured video

#ifndef __${ip_name?upper_case}_FUNC_H__
#define __${ip_name?upper_case}_FUNC_H__

<#list 1..ip_NumGripRules as i>
#include "${driver_path}Rule${i}/${ip_name}_Rule${i}Driver.h"
</#list>

#include "${config_path}${ip_name}_config.h"
#include "${SW_path}${ip_name}_SW.h"
#include "${interruptcontroller_path}"

#define bool unsigned char

// API
<#-- TODO: make following code nested/indented to make it more readable!!-->
void ${ip_name}_func_init(${interruptcontroller} *InterruptController<#if ip_sw_param_types?size != 0>, <#if ip_sw_param_types?size &gt; 1><#list 0..ip_sw_param_types?size-2 as i>${ip_sw_param_types[i]} ${ip_sw_param_names[i]}, </#list></#if>${ip_sw_param_types[ip_sw_param_types?size-1]} ${ip_sw_param_names[ip_sw_param_names?size-1]}</#if>);
void ${ip_sw_name}_func(<#if ip_sw_param_types?size != 0><#if ip_sw_param_types?size &gt; 1><#list 0..ip_sw_param_types?size-2 as i>${ip_sw_param_types[i]} ${ip_sw_param_names[i]}, </#list></#if>${ip_sw_param_types[ip_sw_param_types?size-1]} ${ip_sw_param_names[ip_sw_param_names?size-1]}</#if>);

#endif

