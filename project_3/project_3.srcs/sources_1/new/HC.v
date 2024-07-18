module hamming_encoder (
    input [3:0] data_in,
    output [6:0] code_out
);
    // Intermediate signals for parity bits
    wire p0, p1, p2;

    // Calculate parity bits
    assign p0 = data_in[3] ^ data_in[1] ^ data_in[0];
    assign p1 = data_in[3] ^ data_in[2] ^ data_in[0];
    assign p2 = data_in[2] ^ data_in[1] ^ data_in[0];

    // Construct the Hamming code
    assign code_out = {data_in[3], data_in[2], data_in[1],data_in[0],p0, p1, p2};
endmodule
