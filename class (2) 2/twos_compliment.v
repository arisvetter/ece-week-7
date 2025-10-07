module two_compliment(
    input bit0, bit1, bit2, bit3, bit4, bit5, bit6, bit7,
    output out0, out1, out2, out3, out4, out5, out6, out7
);

assign out0 = bit7 ^ bit0;
assign out1 = bit7 ^ bit1;
assign out2 = bit7 ^ bit2;
assign out3 = bit7 ^ bit3;
assign out4 = bit7 ^ bit4;
assign out5 = bit7 ^ bit5;
assign out6 = bit7 ^ bit6;
assign out7 = bit7;