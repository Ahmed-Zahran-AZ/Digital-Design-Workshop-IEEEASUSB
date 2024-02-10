module four_b_add(input [3:0] a,b, input cin, output[3:0] S, output cout);
wire c1,c2,c3;
full_adder add1(.A(a[0]),.B(b[0]),.Sum(S[0]),.Cout(c1),.Cin(cin));
full_adder add2(.A(a[1]),.B(b[1]),.Sum(S[1]),.Cout(c2),.Cin(c1));
full_adder add3(.A(a[2]),.B(b[2]),.Sum(S[2]),.Cout(c3),.Cin(c2));
full_adder add4(.A(a[3]),.B(b[3]),.Sum(S[3]),.Cout(cout),.Cin(c3));
endmodule 