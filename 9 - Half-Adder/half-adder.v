
/*
 * Santa Maria s2
 */

module half_adder (inp1, inp2, out, carry);

    input  inp1;
    input  inp2;
    output out;
    output carry;

    gate_xor x1(
        .inp1(inp1),
        .inp2(inp2),
        .out(out)
    );
    
    gate_and a1(
        .inp1(inp1),
        .inp2(inp2),
        .out(carry)
    );

endmodule


