
/**
 * Iesus Hominum Salvator.
 */

module device (inp, out);

    supply0 gnd;
    supply1 vdd;

    input  inp;
    output out;

    // Logic:
    //   output, input,   control
    
    // NPN
    //   source  drain    gate
    nmos(out,    vdd,     inp);

endmodule


