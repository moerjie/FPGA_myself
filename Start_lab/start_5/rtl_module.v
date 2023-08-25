//////////////////// 串入并出移位寄存器  /////////////////////////
module shift_reg_SIPO(
  RST   ,   // 异步复位， 高有效
  CLK   ,   // 时钟，上升沿有效
  EN    ,   // 输入数据串行移位使能
  IN    ,   // 输入串行数据
  
  OUT   );  // 并行输出数据
parameter SHLEN = 6;
input RST, CLK, EN;
input IN;
output[SHLEN-1:0] OUT;
reg [SHLEN-1:0] shift_R;

assign OUT[SHLEN-1:0] = shift_R[SHLEN-1:0];
// 时序逻辑 根据输入使能进行串行移位
// shift_R 会被编译为D触发器
always @ (posedge CLK or posedge RST) begin
  if(RST) 
    shift_R[SHLEN-1:0] <= 0;
  else
    if(EN) begin // 串行移位的使能有效
      shift_R[SHLEN-1:1] <= shift_R[SHLEN-2:0];
      shift_R[0]   <= IN;
    end
    else begin // 使能无效保持不动
      shift_R[SHLEN-1:0] <= shift_R[SHLEN-1:0];
    end
end // always
endmodule

///////带方向移位寄存器
//////////////////// 串入并出移位寄存器  /////////////////////////
//SW1 = 1：左移 ||| SW1 = 0：右移
module shift_reg_SIPO_dir(
  RST   ,   // 异步复位， 高有效
  CLK   ,   // 时钟，上升沿有效
  EN    ,   // 输入数据串行移位使能
  IN    ,   // 输入串行数据
  DIR	  ,
  OUT   );  // 并行输出数据
parameter SHLEN = 6;
input RST, CLK, EN;
input IN;
input DIR;
output[SHLEN-1:0] OUT;
reg [SHLEN-1:0] shift_R;

assign OUT[SHLEN-1:0] = shift_R[SHLEN-1:0];
// 时序逻辑 根据输入使能进行串行移位
// shift_R 会被编译为D触发器
always @ (posedge CLK or posedge RST) begin
  if(RST) 
    shift_R[SHLEN-1:0] <= 0;
  else
	  if(DIR) begin
		 if(EN) begin // 串行移位的使能有效
			shift_R[SHLEN-1:1] <= shift_R[SHLEN-2:0];
			shift_R[0]   <= IN;
		 end
		 else begin // 使能无效保持不动
			shift_R[SHLEN-1:0] <= shift_R[SHLEN-1:0];
		 end
		 end
		else begin
			if(EN) begin
				shift_R[SHLEN-2:0] <= shift_R[SHLEN-1:1];
				shift_R[SHLEN-1] <= IN;
			end
			else begin
				shift_R[SHLEN-1:0] <= shift_R[SHLEN-1:0];
			end
		end
end // always
endmodule


//////////////////// 时间基准计数器  /////////////////////////
module cnt_sync(
  CLK   ,   // clock
  CNTVAL,   // counter value
  OV    );  // overflow
input CLK;
output [32-1:0] CNTVAL;
output OV;
parameter MAX_VAL = 25000000;
reg [32-1:0] CNTVAL;
reg OV;

always @ (posedge CLK) begin
  if(CNTVAL >= MAX_VAL)
    CNTVAL <= 0;
  else
    CNTVAL <= CNTVAL + 1'b1;
end

always @ (CNTVAL) begin
  if(CNTVAL == MAX_VAL)
    OV = 1'b1;
  else
    OV = 1'b0;
end

endmodule   // module cnt_en_0to9
////////////////////////////////////////////////////////////////////////////////

module cnt_en_0to9(
  CLK   ,   // clock
  CNTVAL,   // counter value
  EN    ,
  OV    );  // overflow
input CLK;
input EN;
output [4-1:0] CNTVAL;
output OV;

reg [4-1:0] CNTVAL;
reg OV;

always @ (posedge CLK) begin
  if(EN) begin  // work enable
    if(CNTVAL >= 9)
      CNTVAL <= 0;
    else
      CNTVAL <= CNTVAL + 1'b1;
  end
  else
    CNTVAL <= CNTVAL ;  // hold same value
end

always @ (CNTVAL) begin
  if(CNTVAL == 9)
    OV = 1'b1;
  else
    OV = 1'b0;
end

endmodule   // module cnt_en_0to9
////////////////////////////////////////////////////////////////////////////////
module cnt_0to9(
  CLK   ,   // clock
  CNTVAL,   // counter value
  OV    );  // overflow
input CLK;
output [4-1:0] CNTVAL;
output OV;

reg [4-1:0] CNTVAL;
reg OV;

always @ (posedge CLK) begin
  if(CNTVAL >= 9)
    CNTVAL <= 0;
  else
    CNTVAL <= CNTVAL + 1'b1;
end

always @ (CNTVAL) begin
  if(CNTVAL == 9)
    OV = 1'b1;
  else
    OV = 1'b0;
end

endmodule   // module cnt_0to9
////////////////////////////////////////////////////////////////////////////////
module dec_2to4(
IN  ,
OUT);
input  [2-1:0] IN  ;
output [4-1:0] OUT ;

reg [4-1:0] OUT ;

always @ (IN) begin
  case(IN)
    2'b00: OUT = 4'b 0001;
    2'b01: OUT = 4'b 0010;
    2'b10: OUT = 4'b 0100;
    2'b11: OUT = 4'b 1000;
  endcase
end

endmodule // module dec_2to4;
