
/**
 * Iesus Hominum Salvator.
 */

module gate_not ( inp, out );
    
    supply0 gnd;
    supply1 vdd;

    input  inp;
    output out;    
    
    // Logic:
    //   output, input,   control
    
    // PNP
    //   drain   source   gate
    pmos(out,    vdd,     inp);

    // NPN
    //   source  drain    gate
    // nmos(gnd,    out,     inp);
    nmos(out,    gnd,     inp);

endmodule


