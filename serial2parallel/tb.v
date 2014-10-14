`timescale 1 ns/100 ps
`include "sipo_8bits_cond.v"
`include "sipo_10bits_cond.v"
`include "tester.v"

module testbench;
    wire data,clk,reset;
    wire [9:0] out;
    
    sipo_10bits_cond model(
                        .Sdata(data),
                        .clk(clk),
                        .reset(reset),
                        .Pdata(out)
                        );
                        
    tester tst1(
            .dout(data),
            .clk(clk),
            .reset(reset)
            );
            
endmodule
