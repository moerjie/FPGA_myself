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
parameter s4=4;

reg [1:0]stateR;
reg [1:0]next_state;
reg OUT;

always @ (DATA_IN or stateR) begin
    case(stateR)
        s0:begin
            if(DATA_IN) next_state=s1;
            else next_state = s0;     
        end

        s1: begin
            if(DATA_IN) next_state=s0;
            else next_state=s2; 
        end

        s2: begin
            if(DATA_IN) next_state=s3;
            else next_state=s0;  
        end

        s3: begin
            if(DATA_IN) next_state=s4;
            else next_state=s2;  
        end

        s4: begin
            if(DATA_IN) next_state=s0;
        end

always @(stateR) begin
    if(stateR==s4)
        OUT=1'b1;
    else
        OUT=1'b0;
end

always @(posedge clk or posedge RET) begin
    if(RET)
        stateR<=s0;
    else
        stateR<=next_state;
end

endmodule 