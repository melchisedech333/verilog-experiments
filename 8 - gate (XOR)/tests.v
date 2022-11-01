
module tests();
    
    reg  input1;
    reg  input2;
    wire out;

    gate_xor u0( .inp1(input1), .inp2(input2), .out(out) );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tests);

        input1 <= 0;
        input2 <= 0;

        $display("---------------------");
        $display("INPUT -> 1 | 2 = OUT");
        $display("---------------------");
        $monitor("XOR   -> %0b | %0b = %0b", input1, input2, out);

        #10 input2 <= 1;
        #10 input1 <= 1;
        #10 input2 <= 0;
    end

endmodule


