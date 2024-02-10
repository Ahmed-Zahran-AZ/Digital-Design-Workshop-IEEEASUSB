//Module name is the same as the name of the file -> Quartus tool needs this

module full_adder(A,B,Cin,Sum,Cout);

input A,B,Cin;
output Sum,Cout;
wire S1,S2,S3;
xor(S1,A,B);
and(S2,S1,Cin);
and(S3,A,B);
xor(Sum,Cin,S1);
or(Cout,S2,S3);

endmodule  