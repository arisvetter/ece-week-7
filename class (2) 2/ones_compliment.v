module ones_complement (
    input A, B, Cin
    output Y, Cout
);

assign Y = ((~A ^ ~B) ^ Cin);
assign Cout = (~A & ~B) | (~A & Cin) | (~B & Cin);