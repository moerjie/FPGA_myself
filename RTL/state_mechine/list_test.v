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

parameter s0=3'd0;
parameter s1=3'd1;
parameter s2=3'd2;
parameter s3=3'd3;
parameter s4=3'd4;

reg [2:0]stateR;
reg [2:0]next_state;
reg OUT;

always @ (DATA_IN or stateR) begin
    case(stateR)
        s0: next_state<=DATA_IN?s1 : s0;

        s1: next_state<=DATA_IN?s1:s2;

        s2: next_state<=DATA_IN?s3:s0;

        s3: next_state<=DATA_IN?s4:s1;

        s4: next_state<=DATA_IN?s1:s2;

        default: next_state=s1;
    endcase
end

always @(stateR) begin
    if(stateR==s4)
        OUT=1'b1;
    else
        OUT=1'b0;
end

always @(posedge CLK or posedge RET) begin
    if(RET)
        stateR<=s0;
    else
        stateR<=next_state;
end

endmodule 