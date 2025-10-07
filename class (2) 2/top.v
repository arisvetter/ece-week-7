


wire carryout_in;
ones_complement ones_complement_inst_1 (
    .A(sw[4]),
    .B(sw[6]),
    .carry(0),
    .Y(led[3]),
    .Cout(carryout_in)
);

ones_complement ones_complement_inst_2 (
    .A(sw[5]),
    .B(sw[7]),
    .Cin(carryout_in),
    .Y(led[4]),
    .Cout(led[5])
);

ones_complement ones_complement_inst_3 (
    .A(sw[4]),
    .B(sw[6]),
    .carry(0),
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