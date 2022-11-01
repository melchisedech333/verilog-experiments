
/*
 * Transistor logic: output, input, control
 * PNP: drain, source, gate
 * NPN: source, drain, gate
 */

module switch (inp, out);

    supply0 gnd;
    supply1 vdd;

    input  inp;
    output out;

    wire con;

    // Not-gate.
    pmos(con,    vdd,     inp);
    nmos(con,    gnd,     inp);

    // Not-gate.
    pmos(out,    vdd,     con);
    nmos(out,    gnd,     con);

endmodule


