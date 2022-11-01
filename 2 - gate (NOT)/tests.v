
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
        inp <= 0;

        $monitor("GATE-NOT -> input: %0b, output: %0b\nDevice -> signal: %0b\n", 
            inp, out, signal);

        #10 inp <= 1;
    end

endmodule


