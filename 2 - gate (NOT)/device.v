
/**
 * Iesus Hominum Salvator.
 */

module device (vdd, gnd, inp, out);

    input  vdd;
    input  inp;
    output out;
    output gnd;

    // Logic:
    //   output, input,   control
    
    // NPN
    //   source  drain    gate
    nmos(out,    vdd,     inp);

    nmos(gnd);

endmodule


