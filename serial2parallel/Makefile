TB=tb.v

all: compile

compile: $(TB)
	iverilog $(TB)
	vvp a.out

view:
	gtkwave *.vcd

clean:
	rm -f *.vcd *.out
