module FA(s, c_out, x, y, c_in);
input x, y, c_in;
output s, c_out;
wire s1, c1, c2;

HA ha1(	.s(s1),
		.c(c1),
		.x(x),
		.y(y)
);
HA ha2(	.s(s),
		.c(c2),
		.x(c_in),
		.y(s1)
);

or or1(c_out,c1,c2);

  
endmodule

