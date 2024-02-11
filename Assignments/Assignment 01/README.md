# Q1
```verilog 
module block1(input[2:0] D,input A,B, output OUT);
or(OUT,D[0]&D[1],!(D[2]^A^B));
endmodule 
```
![quartus11February202411215739](https://github.com/Ahmed-Zahran-AZ/Digital-Design-Workshop-IEEEASUSB/assets/103266615/e28d8b2c-0277-4b04-8718-d294942c2155)

# Q2
## 1

```verilog
module half_sub(input X,Y,output D,B);
wire S1;
assign D = X^Y;
assign S1 = !X;
assign B = S1 & Y;
endmodule 
```
![quartus11February202411220303](https://github.com/Ahmed-Zahran-AZ/Digital-Design-Workshop-IEEEASUSB/assets/103266615/d92d9202-0c05-49a9-9bf6-08ccb01e8bef)


## 2
```verilog
module half_add(input A,B, output S,C);
assign S = A^B;
assign C = A&B;
endmodule 
```
![quartus11February202411220536](https://github.com/Ahmed-Zahran-AZ/Digital-Design-Workshop-IEEEASUSB/assets/103266615/7a8dc2f3-60a2-49c6-a160-5586c3ca6157)


## 3
Top module
```verilog
module add_or_sub(input [1:0] IN, input SEL, output SUM, CARRY);
wire ca,cs,sa,ss,c;
half_add add(IN[1],IN[0],sa,ca);
half_sub sub(IN[1],IN[0],ss,cs);
mux_2x1 mux_sum(ss,sa,!SEL,SUM);
mux_2x1 mux_carry(!cs,!ca,!SEL,c);
assign CARRY = !c;
endmodule 
```
2x1 mux:
```verilog
module mux_2x1(input a,b,sel,  output out);
assign out = (sel)?b:a;
endmodule 
```
half adder and half subtractor are above
![quartus11February202411223201](https://github.com/Ahmed-Zahran-AZ/Digital-Design-Workshop-IEEEASUSB/assets/103266615/a4f0099c-de3d-4935-8329-2b5f3470ee58)
![quartus11February202411223652](https://github.com/Ahmed-Zahran-AZ/Digital-Design-Workshop-IEEEASUSB/assets/103266615/4af6015d-9cfd-4762-91be-6cee47a230e0)

