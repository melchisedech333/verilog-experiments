
/**
 * Iesus Hominum Salvator.
 *
 * This is another NOT-Gate.
 */

module device (inp, out);

    supply0 gnd;
    supply1 vdd;

    input  inp;
    output out;

    // Transistor logic:
    //   output, input,   control
    
    // PNP
    //   drain   source   gate
    pmos(out,    vdd,     inp);

    // NPN
    //   source  drain    gate
    // nmos(gnd,    out,     inp);
    nmos(out,    gnd,     inp);

endmodule


