// module top, a dual port RAM 
// instancing and define parameter of dpram module
module RAM(
  WE      ,   // write enable
  WCLK    ,   // write clock
  RCLK    ,   // read clock   
  WA      ,   // write address
  RA      ,   // read address
  WD      ,   // write data
  RD      );  // read data

parameter DATAWL    = 8;
parameter ADDRWL    = 8;
parameter C2Q       = 2;

input                    WE, WCLK, RCLK;
input   [ADDRWL -1:0]    WA, RA; 
input   [DATAWL -1:0]    WD;
output  [DATAWL -1:0]    RD;

dpram U0_dpram(
  .WE      (WE      ),   // write enable
  .WCLK    (WCLK    ),   // write clock
  .RCLK    (RCLK    ),   // read clock   
  .WA      (WA      ),   // write address
  .RA      (RA      ),   // read address
  .WD      (WD      ),   // write data
  .RD      (RD      ));  // read data

defparam U0_dpram.DATAWL    = DATAWL;
defparam U0_dpram.ADDRWL    = ADDRWL;
defparam U0_dpram.C2Q       = C2Q   ;

endmodule
// endmodule top

module dpram(
  WE      ,   // write enable
  WCLK    ,   // write clock
  RCLK    ,   // read clock   
  WA      ,   // write address
  RA      ,   // read address
  WD      ,   // write data
  RD      );  // read data
// external set param
parameter DATAWL    = 0;
parameter ADDRWL    = 0;
parameter C2Q       = 0;
  input                    WE, WCLK, RCLK;
  input   [ADDRWL -1:0]    WA, RA; 
  input   [DATAWL -1:0]    WD;
  output  [DATAWL -1:0]    RD;

  reg[DATAWL-1:0] RD;
  reg[DATAWL-1:0] mem [(1 << ADDRWL)-1:0];

  always @ (posedge WCLK) begin
    if(WE)
      mem[WA] <= #C2Q WD;
  end
  always @ (posedge RCLK) begin
    RD  <= #C2Q mem[RA];
  end
// ######################################  
// synopsys translate_off                  
// ######################################  
// the code below this line will NOT take part into synthesis
// they are only needed by RTL simulation

  // task DumpDpRAM, get the content of RAM[addr]
  task DumpDpRAM; 
  input     [ADDRWL-1  :0] addr    ;
  output    [DATAWL-1 :0]  content ;
  begin
    content = mem[addr];
  end       // task begin
  endtask   // task DumpDpRAM

  // task RAMInit, initialize the RAM content
  task RAMInit;
    integer i;
    reg[DATAWL-1:0] initData;
  begin
    initData = 'hAAAA;
    // initData = (1 << DATAWL) - 1;
    for( i = 0; i < (1 << ADDRWL); i = i + 1)
      mem[i] = initData;
  end
  endtask
  initial begin
    RAMInit();
    $display("module dpram().RAMInit()called @ %0d", $time);
  end
// ###################################### 
// synopsys translate_on                  
// ###################################### 
// the code below this line will take part in synthesis
endmodule   // module dptbram() 
