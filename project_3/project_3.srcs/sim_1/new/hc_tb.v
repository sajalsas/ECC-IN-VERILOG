`timescale 1ns / 1ps

module tb_hamming_encoder;
    // Inputs
    reg [3:0] data_in;
    
    // Outputs
    wire [6:0] code_out;
    
    // Instantiate the Unit Under Test (UUT)
    hamming_encoder uut (
        .data_in(data_in),
        .code_out(code_out)
    );

    initial begin
        // Initialize inputs
        data_in = 4'b0000;
        #10;

        // Apply various test cases
        data_in = 4'b0001;
        #10;
        data_in = 4'b0010;
        #10;
        data_in = 4'b0011;
        #10;
        data_in = 4'b0100;
        #10;
        data_in = 4'b0101;
        #10;
        data_in = 4'b0110;
        #10;
        data_in = 4'b0111;
        #10;
        data_in = 4'b1000;
        #10;
        data_in = 4'b1001;
        #10;
        data_in = 4'b1010;
        #10;
        data_in = 4'b1011;
        #10;
        data_in = 4'b1100;
        #10;
        data_in = 4'b1101;
        #10;
        data_in = 4'b1110;
        #10;
        data_in = 4'b1111;
        #10;

        // End simulation
        $finish;
    end
endmodule
