function filter_generatehdl(filtobj)
%  FILTER_GENERATEHDL   Function to generate HDL for filter object.
%  Generated by MATLAB(R) 9.10 and Filter Design HDL Coder 3.1.9.
%  Generated on: 2023-09-11 20:45:50
%  -------------------------------------------------------------
%  HDL Code Generation Options:
%  TargetDirectory: F:\Git_Repository\FPGA_myself\Matlab\filter\src
%  TargetLanguage: Verilog
%  TestBenchStimulus: impulse step ramp chirp noise 
%  GenerateHDLTestbench: on
% 
%  Filter Settings:
%  离散时间 FIR 滤波器(实数)
%  ----------------
%  滤波器结构  : 直接型 FIR
%  滤波器长度  : 31
%  稳定     : 是
%  线性相位   : 是 (Type 1)

%  -------------------------------------------------------------

% Generating HDL code
generatehdl(filtobj, 'TargetDirectory', 'F:\Git_Repository\FPGA_myself\Matlab\filter\src',... 
               'TargetLanguage', 'Verilog',... 
               'TestBenchStimulus',  {'impulse', 'step', 'ramp', 'chirp', 'noise'},... 
               'GenerateHDLTestbench', 'on');

% [EOF]
