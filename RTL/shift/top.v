module top(
  RST   ,   // 异步复位， 高有效
  CLK   ,   // 时钟，上升沿有效
  EN    ,   // 输入数据串行移位使能
  IN    ,   // 输入串行数据
  OUT   );  // 并行输出数据

input RST, CLK, EN;
input IN;
output[3:0] OUT;
reg [3:0] shift_R;

assign OUT[3:0] = shift_R[3:0];
// 时序逻辑 根据输入使能进行串行移位
// shift_R 会被编译为D触发器
always @ (posedge CLK or posedge RST) begin
  if(RST) 
    shift_R[3:0] <= 0;
  else
    if(EN) begin // 串行移位的使能有效
      shift_R[3:1] <= shift_R[2:0];
      shift_R[0]   <= IN;
    end
    else begin // 使能无效保持不动
      shift_R[3:0] <= shift_R[3:0];
    end
end // always
endmodule