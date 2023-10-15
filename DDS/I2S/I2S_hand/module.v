module piso_shift_reg (//load 高电平加载,load低电平en高电平开始传输
    clk,
    rst,
    load,
    para_in,
    serial_out
  );
  input clk,rst,load;
  input [31:0] para_in;
  output serial_out;

  reg [31:0] shift_reg;
  reg serial_out;

  always @(posedge clk or posedge rst or posedge load)
  begin
    if(rst)
    begin
      shift_reg[31:0]<=0;
    end
    else
      if(load)
      begin
        shift_reg[31:0]<=para_in[31:0];
      end
      else
      begin
          shift_reg[31:1]<=shift_reg[30:0];
          shift_reg[0]<=0;
          serial_out<=shift_reg[31];
      end

  end

endmodule
