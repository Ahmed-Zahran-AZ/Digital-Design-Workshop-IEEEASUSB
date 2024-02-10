module four_bit_adder(input[3:0] a,b, input cin, output[3:0] S, output cout);
wire c1,c2,c3;
full_adder add1(a[0],b[0],cin,c1,S[0]);
full_adder add2(a[1],b[1],c1,c2,S[1]);
full_adder add3(a[2],b[2],c2,c3,S[2]);
full_adder add4(a[3],b[3],c3,cout,S[3]);
endmodule 