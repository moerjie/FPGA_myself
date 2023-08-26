module list_test(
    CLK,
    RET,
    DATA_IN,
    OUT
);

input CLK;
input RET;
input DATA_IN;
output OUT;

parameter s0=0;
parameter s1=1;
parameter s2=2;
parameter s3=3;

reg [1:0]stateR;
reg [1:0]next_state;
reg OUT;

