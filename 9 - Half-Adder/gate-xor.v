
/*
 * Transistor logic: output, input, control
 * PNP: drain, source, gate
 * NPN: source, drain, gate
 *
 * IHS <3
 */

module gate_xor (inp1, inp2, out);

    supply0 gnd;
    supply1 vdd;

    input  inp1;
    input  inp2;
    output out ;

    wire a;
    wire b;
    wire c;

    gate_nand n1( .inp1(inp1), .inp2(inp2), .out(a));
    gate_nand n2( .inp1(inp1), .inp2(a),    .out(b));
    gate_nand n3( .inp1(a),    .inp2(inp2), .out(c));
    gate_nand n4( .inp1(b),    .inp2(c),    .out(out));

endmodule


