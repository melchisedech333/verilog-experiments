
/**
 * Iesus Hominum Salvator.
 */

module tests();
    
    supply0 gnd;
    supply1 vdd;

    reg  gate;
    wire out;

    mosfet_npn u0( .vdd(vdd), .gate(gate), .out(out) );

    initial begin
        gate <= 0;

        $monitor("NMOS, NPN -> gate: %0b, out: %0b (vdd: %0b)", gate, out, vdd);

        #10 gate <= 1;
    end

endmodule


