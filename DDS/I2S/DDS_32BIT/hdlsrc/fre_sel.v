module fre_sel (
    clk,
    sel,
    inc
);
  input clk;
  input [2:0] sel;
  output [15:0] inc;

  reg [15:0] inc;

  always @(posedge clk) begin
    case (sel)
      3'b000: begin
        inc <= 16'b0001_1001_1001_1001;  //5MHz
      end
      3'b001: begin
        inc <= 16'b0000_0101_0001_1111;  //1MHz
      end
      3'b010: begin
        inc <= 16'b0000_0010_1000_1111;  //500khZ;
      end
      3'b011: begin
        inc <= 16'b0000_0000_1000_0011;  //100khZ;
      end
      3'b100: begin
        inc <= 16'b0000_0000_0100_0010;  //50k
      end
      default: begin
        inc <= 16'b0000_0000_0000_0000;  //0MHz
      end
      //加几分频就除以几
    endcase

  end
endmodule


module fre_sel_32b (
    clk,
    sel,
    inc
);
  input clk;
  input [2:0] sel;
  output [31:0] inc;

  reg [31:0] inc;

  always @(posedge clk) begin
    case (sel)
      3'b000: begin
        inc <= 32'b00000000_00000010_10011111_00010111;  //1kHz
      end
      3'b001: begin
        inc <= 32'b00000000_00000010_10011111_00010111;  //1kHz
      end
      3'b010: begin
        inc <= 32'b00000000_00000101_00111110_00101101;  //2khZ;
      end
      default: begin
        inc <= 32'b00000000_00000000_00000000_00000000;  //0MHz
      end
      //加几分频就除以几
    endcase

  end
endmodule

module fre_sel_audio (
    clk,
    sel,
    inc_32
);
    input clk;
    input [2:0] sel;
    output [31:0] inc_32;
    reg [31:0] inc_32;

    always @(posedge clk) begin
        case (sel)
            3'b000: begin
              inc_32<=32'b00000010_10101010_10101010_10101011;//500
            end
             
            3'b001: begin
              inc_32<=32'b00000101_01010101_01010101_01010101;//1k
            end 
            3'b100: begin
              inc_32<=32'b00001010_10101010_10101010_10101011;//500 
            end 
            default: begin
              inc_32<=32'b00000000_00000000_00000000_00000000;
            end 
        endcase
    end
endmodule