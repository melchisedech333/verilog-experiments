
module tests();
    
    reg  input1;
    reg  input2;
    wire out;
    wire carry;

    half_adder u0( 
        .inp1(input1), .inp2(input2), 
        .out(out), .carry(carry)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tests);

        input1 <= 0;
        input2 <= 0;

        $display("-----------------------------");
        $display("         A | B | SUM | CARRY");
        $display("-----------------------------");
        $monitor(" HF   -> %0b | %0b |  %0b  | %0b", 
            input1, input2, out, carry);

        #10 input2 <= 1;
        #10 input1 <= 1;
        #10 input2 <= 0;
    end

endmodule


