module top(
    input [9:0] sw,
    output [13:0] led
);

halfsub a_inst(
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .Borrow(led[1])
);

wire [3:0] APlusB;
wire carry_00;
wire carry_01;
wire carry_02;
wire carry_03;
wire around;
wire carry_10;
wire carry_11;
wire carry_12;
wire carry_13;


ones_complement ones_complement_inst_1 (
    .A(sw[2]),
    .B(sw[6]),
    .Cin(0),
    .Y(APlusB[0]),
    .Cout(carry_00)
);

ones_complement ones_complement_inst_2 (
    .A(sw[3]),
    .B(sw[7]),
    .Cin(carry_00),
    .Y(APlusB[1]),
    .Cout(carry_01)
);

ones_complement ones_complement_inst_3 (
    .A(sw[4]),
    .B(sw[8]),
    .Cin(carry_01),
    .Y(APlusB[2]),
    .Cout(carry_02)
);

ones_complement ones_complement_inst_4 (
    .A(sw[5]),
    .B(sw[9]),
    .Cin(carry_02),
    .Y(APlusB[3]),
    .Cout(around) 
);


ones_complement ones_complement_inst_5 (
    .A(APlusB[0]),
    .B(0),
    .Cin(around),
    .Y(led[2]),
    .Cout(carry_10)
);

ones_complement ones_complement_inst_6 (
    .A(APlusB[1]),
    .B(0),
    .Cin(carry_10),
    .Y(led[3]),
    .Cout(carry_11)
);

ones_complement ones_complement_inst_7 (
    .A(APlusB[2]),
    .B(0),
    .Cin(carry_11),
    .Y(led[4]),
    .Cout(carry_12)
);

ones_complement ones_complement_inst_8 (
    .A(APlusB[3]),
    .B(0),
    .Cin(carry_12),
    .Y(led[5])
);


wire intermediate[6:0];
wire bit8carry;

twos_compliment twos_compliment_inst_1 (
   .bit0(sw[2]),
   .bit1(sw[3]),
   .bit2(sw[4]),
   .bit3(sw[5]),
   .bit4(sw[6]),
   .bit5(sw[7]),
   .bit6(sw[8]),
   .bit7(sw[9]),
   .out0(intermediate[0]),
   .out1(intermediate[1]),
   .out2(intermediate[2]),
   .out3(intermediate[3]),
   .out4(intermediate[4]),
   .out5(intermediate[5]),
   .out6(intermediate[6]),
   .out7(bit8carry)
);
ones_complement adder_bit0 (
    .A(intermediate[0]),
    .B(0),
    .Cin(bit8carry),
    .Y(led[6]),
    .Cout(two_carry_0)
);
ones_complement adder_bit1 (
    .A(intermediate[1]),
    .B(0),
    .Cin(two_carry_0),
    .Y(led[7]),
    .Cout(two_carry_1)
);
ones_complement adder_bit2 (
    .A(intermediate[2]),
    .B(0),
    .Cin(two_carry_1),
    .Y(led[8]),
    .Cout(two_carry_2)
);
ones_complement adder_bit3 (
    .A(intermediate[3]),
    .B(0),
    .Cin(two_carry_2),
    .Y(led[9]),
    .Cout(two_carry_3)
);
ones_complement adder_bit4 (
    .A(intermediate[4]),
    .B(0),
    .Cin(two_carry_3),
    .Y(led[10]),
    .Cout(two_carry_4)
);
ones_complement adder_bit5 (
    .A(intermediate[5]),
    .B(0),
    .Cin(two_carry_4),
    .Y(led[11]),
    .Cout(two_carry_5)
);
ones_complement adder_bit6 (
    .A(intermediate[6]),
    .B(0),
    .Cin(two_carry_5),
    .Y(led[12]),
    .Cout(two_carry_6)
);
ones_complement adder_bit7 (
    .A(bit8carry),
    .B(0),
    .Cin(two_carry_6),
    .Y(led[13])
);
endmodule
