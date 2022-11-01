
/**
 * Iesus Hominum Salvator.
 */

module mosfet_npn ( input gate, input vdd, output out );

    // Logic:
    //   output, input,   control
    
    // NPN
    //   source  drain    gate
    nmos(out,    vdd,     gate);

endmodule


