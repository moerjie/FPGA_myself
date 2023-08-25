// Copyright (C) 1991-2009 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "05/05/2013 17:14:05"
                                                                                
// Verilog Test Bench template for design : DDS_top
// 
// Simulation tool : ModelSim (Verilog)
// 

`timescale 1 ns/ 1 ps
module DDS_top_vlg_tst();
// constants                                           
// general purpose registers
// test vector input registers
reg clk;
reg reset;
reg set_a_key_in;
reg set_f_key_in;
reg set_p_key_in;
reg set_waveform_key_in;
// wires                                               
wire cs;
wire din;
wire sclk;
wire [9:0] sin_data;

// assign statements (if any)                          
DDS_top i1 (
// port map - connection between master ports and signals/registers   
	.clk(clk),
	.cs(cs),
	.din(din),
	.reset(reset),
	.sclk(sclk),
	.set_a_key_in(set_a_key_in),
	.set_f_key_in(set_f_key_in),
	.set_p_key_in(set_p_key_in),
	.set_waveform_key_in(set_waveform_key_in),
	.sin_data(sin_data)
);
initial                                                
begin                                                  
// code that executes only once                        
// insert code here --> begin                          
     clk<=1'b0;
	 reset<=1'b0;
	 set_a_key_in<=1'b0;
	 set_f_key_in<=1'b0;
	 set_p_key_in<=1'b0;
	 set_waveform_key_in<=1'b0;                                                  
// --> end                                             
$display("Running testbench");                       
end                                                    
always                                                 
// optional sensitivity list                           
// @(event1 or event2 or .... eventn)                  
begin                                                  
// code executes for every event on sensitivity list   
// insert code here --> begin                          
   
   #1  clk<=~clk;
	 reset<=1'b1;
	 set_a_key_in<=1'b1;
	 set_f_key_in<=1'b1;
	 set_p_key_in<=1'b1;
	 set_waveform_key_in<=1'b1;                                                     
// --> end                                             
end                                                    
endmodule

