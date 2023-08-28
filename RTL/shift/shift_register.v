module shift_register(
  RST   ,   // 异步复位， 高有效
  CLK   ,   // 时钟，上升沿有效
  EN    ,   // 输入数据串行移位使能
  LOAD  ,   //输入数据加载使能
  IN    ,   // 输入串行数据
  OUT   );  // 并行输出数据

input RST, CLK, EN, LOAD;
input [3:0]IN;
output OUT;
reg [3:0] shift_R;
reg OUT;

// shift_R 会被编译为D触发器
always @ (posedge CLK or posedge RST or posedge LOAD) begin
  if(RST) 				//如果复位信号有效
    shift_R[3:0] <= 0;  //4个D触发器数据全部清零
  else begin
	  if(LOAD) begin   //如果复位信号无效，加载使能有效
		shift_R[3:0] <= IN[3:0]; //4位输入信号全部送到D触发器中
	  end
	  else begin
		if(EN) begin   //如果复位信号无效，加载使能无效，移位使能有效
				shift_R[3:1] <= shift_R[2:0];
				shift_R[0]   <= 0;
				OUT =  shift_R[3];
		
		end
		else begin // 使能无效保持不动
		  shift_R[3:0] <= shift_R[3:0];
		end
    end
  end
end // end always
endmodule