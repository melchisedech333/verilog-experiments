
/**
 * Iesus Hominum Salvator.
 */

module tests();
    
    reg  inp;
    wire out;
    wire signal;

    gate_not u0( .inp(inp), .out(out) );
    device   u1( .inp(out), .out(signal) );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tests);

        inp <= 0;

        $monitor("GATE-NOT -> input: %0b, output: %0b, signal: %0b", 
            inp, out, signal);

        #10 inp <= 1;
    end

endmodule


