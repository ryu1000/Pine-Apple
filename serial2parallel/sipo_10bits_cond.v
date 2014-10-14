//----------------------------------------------------------------------
//
// Modelo conductual-estructural de un 
// "Serial Input Parallel Output Shift Register" de 10 bits. 
// Hecho con dos 74AHC164 en serie
//
//----------------------------------------------------------------------

module sipo_10bits_cond(
            input Sdata,
            input clk,
            input reset,
            output [9:0] Pdata
            );

wire aux_in;
wire unused1;
wire [4:0] unused2;

sipo_8bits_cond sipo1(
                    .din(Sdata),
                    .clk(clk),
                    .reset(reset),
                    .dout({Pdata[9:3],unused1})
                    );

sipo_8bits_cond sipo2(
                    .din(Pdata[3]),
                    .clk(clk),
                    .reset(reset),
                    .dout({Pdata[2:0],unused2})
                    );
                        
endmodule
