
/*
 * Transistor logic: output, input, control
 * PNP: drain, source, gate
 * NPN: source, drain, gate
 *
 * IHS <3
 */

module gate_and (inp1, inp2, out);

    supply0 gnd;
    supply1 vdd;

    input  inp1;
    input  inp2;
    output out ;
    
    // NAND gate.
    wire ncon;
    wire nout;

    pmos q1(nout, vdd, inp1);
    pmos q2(nout, vdd, inp2);

    nmos q3(nout, ncon, inp1);
    nmos q4(ncon, gnd, inp2);
    
    // NOT gate (inverter).
    pmos q5(out, vdd, nout);
    nmos q6(out, gnd, nout);
    
endmodule


