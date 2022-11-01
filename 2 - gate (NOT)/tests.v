
/**
 * Iesus Hominum Salvator.
 */

module tests();
    
    supply0 gnd;
    supply1 vdd;

    reg  inp;
    wire out;
    wire signal;

    gate_not u0( .vdd(vdd), .gnd(gnd), .inp(inp), .out(out) );
    devide   u1( .vdd(vdd), .gnd(gnd), .inp(out), .out(signal) );

    initial begin
        inp <= 0;

        $monitor("GATE-NOT -> vdd: %0b, gnd: %0b, input: %0b, output: %0b, signal: %0b", 
            vdd, gnd, inp, out, signal);

        #10 inp <= 1;
    end

endmodule


