
// IHS <3

`timescale 1ns / 1ps
module stimulus;

	// Inputs
	reg x;
	reg y;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.x(x), 
		.y(y), 
		.z(z)
	);
 
	initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,stimulus);

        // Initialize Inputs
        x = 0;
        y = 0;

        #20 x = 1;
        #20 y = 1;
        #20 y = 0;	
        #20 x = 1;	  
        #40 ;
	end
 
    initial begin
        $monitor("t=%3d x=%d,y=%d,z=%d \n", $time, x, y, z);
    end
endmodule


