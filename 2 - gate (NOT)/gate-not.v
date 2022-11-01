
/**
 * Iesus Hominum Salvator.
 */

module gate_not ( vdd, gnd, inp, out );
    
    input  vdd;
    input  inp;
    output out;
    output gnd;

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


