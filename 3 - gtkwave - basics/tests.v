
/**
 * Iesus Hominum Salvator.
 */

`timescale 1ns / 1ps
module tests();
    
    reg  inp;
    wire out;

    gate_not u0(.inp(inp), .out(out) );

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, tests);

        inp <= 0;

        $monitor("GATE-NOT -> input: %0b, output: %0b", inp, out);

        #10 inp <= 1;
    end

endmodule


