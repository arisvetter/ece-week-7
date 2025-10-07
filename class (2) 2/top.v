




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
    .A(sw[4]),
    .B(sw[6]),
    .carry(0),
    .Y(APlusB[0]),
    .Cout(carry_0)
);

ones_complement ones_complement_inst_2 (
    .A(sw[5]),
    .B(sw[7]),
    .Cin(carry_0),
    .Y(led[4]),
    .Cout(carry_1)
);

ones_complement ones_complement_inst_3 (
    .A(sw[4]),
    .B(sw[6]),
    .carry(carry_1),
    .Y(led[3]),
    .Cout(carryout_in)
);

ones_complement ones_complement_inst_4 (
    .A(sw[5]),
    .B(sw[7]),
    .Cin(carryout_in),
    .Y(led[4]),
    .Cout(led[5]) 
);


ones_complement ones_complement_inst_1 (
    .A(APlusB[0]),
    .B(0),
    .carry(around),
    .Y(led[2]),
    .Cout(carry_10)
);

ones_complement ones_complement_inst_2 (
    .A(APlusB[1]),
    .B(0),
    .Cin(carry_0),
    .Y(led[3]),
    .Cout(carry_11)
);

ones_complement ones_complement_inst_3 (
    .A(APlusB[2]),
    .B(0),
    .carry(carry_1),
    .Y(led[4]),
    .Cout(carry_12)
);

ones_complement ones_complement_inst_4 (
    .A(APlusB[3]),
    .B(0),
    .Cin(carryout_in)
);


wire intermediate[6:0];
wire bit8carry;

twos_compliment twos_compliment (
   .bit0(sw[2]),
   .bit1(sw[3]),
   .bit2(sw[4]),
   .bit3(sw[5]),
   .bit4(sw[6]),
   .bit5(sw[7]),
   .bit6(sw[8]),
   .bit7(sw[9]),
   .out1(intermediate[0]),
   .out1(intermediate[1]),
   .out2(intermediate[2]),
   .out3(intermediate[3]),
   .out4(intermediate[4]),
   .out5(intermediate[5]),
   .out6(intermediate[6]),
   .out7(bit8carry),
);