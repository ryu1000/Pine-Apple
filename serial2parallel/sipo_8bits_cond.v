//----------------------------------------------------------------------
//
// Modelo conductual del 74AHC164
// SIPO 8 bits
//
//----------------------------------------------------------------------

module sipo_8bits_cond ( din ,clk ,reset ,dout );

output [7:0] dout ;
wire [7:0] dout ;

input din ;
wire din ;
input clk ;
wire clk ;
input reset ;
wire reset ;

reg [7:0]s;

always @ (posedge (clk)) begin 
 if (reset)
  s <= 0;
 else begin
  s[7] <= din;
  s[6] <= s[7];
  s[5] <= s[6];
  s[4] <= s[5];
  s[3] <= s[4];
  s[2] <= s[3];
  s[1] <= s[2];
  s[0] <= s[1];
 end
end

assign dout = s;
 
endmodule
