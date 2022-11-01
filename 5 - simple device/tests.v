
module tests();
    
    reg  inp;
    wire out;

    switch u0( .inp(inp), .out(out) );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tests);

        inp <= 0;

        $monitor("SWITCH DEVICE -> input: %0b, output: %0b", inp, out);

        #10 inp <= 1;
        #10 inp <= 0;
        #10 inp <= 1;
        #10 inp <= 0;
    end

endmodule


