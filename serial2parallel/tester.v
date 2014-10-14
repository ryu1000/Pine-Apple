// Tester para el "Serial to Parallel Converter"

module tester(
	output clk,
	output reset,
	output dout 
	);
	
	reg clk,reset;
	reg dout;

	initial
	begin
		$dumpfile("sim.vcd");
		$dumpvars;
		clk=0; reset=0; dout=0;
		#3 reset=1;
		#15 reset=0;
		#2000 $finish;
	end

	//Señal de reloj 
	always
	begin
		#2 clk=!clk;
	end
    
    //Generador de datos aleatorios
    always @ (negedge clk) begin
        dout = $random;
    end
	
endmodule
