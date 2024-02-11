module block1(input[2:0] D,input A,B, output OUT);
or(OUT,D[0]&D[1],!(D[2]^A^B));
endmodule 