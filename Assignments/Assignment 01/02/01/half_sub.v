module half_sub(input X,Y,output D,B);
wire S1;
assign D = X^Y;
assign S1 = !X;
assign B = S1 & Y;
endmodule 
