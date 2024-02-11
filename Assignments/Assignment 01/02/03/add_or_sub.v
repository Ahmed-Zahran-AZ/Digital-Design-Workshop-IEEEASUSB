module add_or_sub(input [1:0] IN, input SEL, output SUM, CARRY);
wire ca,cs,sa,ss,c;
half_add add(IN[1],IN[0],sa,ca);
half_sub sub(IN[1],IN[0],ss,cs);
mux_2x1 mux_sum(ss,sa,!SEL,SUM);
mux_2x1 mux_carry(!cs,!ca,!SEL,c);
assign CARRY = !c;
endmodule 