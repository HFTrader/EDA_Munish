`timescale 1ns / 1ps

// LED controller module to control the intensity of 
// ZedBoard LEDs LD[0-7]

module LED_Controller(
    input Clk,
    input [31:0] DutyCycle,
    output [7:0] LED_out
    );
    
    // Sets LED Period.  Must be calculated vs. input clk period.
    // For example, setting this to 20 will divide the input clock by 2^20, or 1 Million.
    // So a 50 MHz input clock will be divided by 1e6, thus this will have a period of 1/50
    parameter period = 20;  
    
    reg [period-1:0] count;  
    reg [7:0] LED_out;
    
    always @(posedge Clk)
       count <= count + 1; 
    
    // DutyCycle controls the dutycycle and hence intensity 
    // LED_out, each bit represents the on/off state for LD[0-7]
    //
     always @(Clk)
       if (count < DutyCycle)
           LED_out <= 8'hFF;
       else
           LED_out <= 8'h00; 
        
endmodule
