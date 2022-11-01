
/*
 * Transistor logic: output, input, control
 * PNP: drain, source, gate
 * NPN: source, drain, gate
 *
 * IHS <3
 */

module gate_nand (inp1, inp2, out);

    supply0 gnd;
    supply1 vdd;

    input  inp1;
    input  inp2;
    output out ;

    wire ncon;

    pmos p1(out, vdd, inp1);
    pmos p2(out, vdd, inp2);

    nmos n1(out, ncon, inp1);
    nmos n2(ncon, gnd, inp2);
    
endmodule


