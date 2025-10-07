




wire [3:0] APlusB;
wire carry_0;
wire carry_1;
wire carry_2;
wire carry_3;
wire around;



ones_complement ones_complement_inst_1 (
    .A(sw[4]),
    .B(sw[6]),
    .carry(0),
    .Y(led[3]),
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