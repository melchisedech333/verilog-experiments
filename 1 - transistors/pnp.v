
/**
 * Iesus Hominum Salvator.
 */

module mosfet_pnp ( input gate, input vdd, output out );

    // Logic:
    //   output, input,   control
    
    // PNP
    //   drain   source   gate
    pmos(out,    vdd,     gate);

endmodule


