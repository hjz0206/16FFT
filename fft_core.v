/*
*date:3.22 2020
*/

module fft_core(
	input wire			clk,
	input wire			rst_n,
	input wire[16:0]	data_i0_R,
	input wire[16:0]	data_i0_I,
	input wire[16:0]	data_i1_R,
	input wire[16:0]	data_i1_I,
	input wire[16:0]	data_i2_R,
	input wire[16:0]	data_i2_I,
	input wire[16:0]	data_i3_R,
	input wire[16:0]	data_i3_I,
	input wire[16:0]	data_i4_R,
	input wire[16:0]	data_i4_I,
	input wire[16:0]	data_i5_R,
	input wire[16:0]	data_i5_I,
	input wire[16:0]	data_i6_R,
	input wire[16:0]	data_i6_I,
	input wire[16:0]	data_i7_R,
	input wire[16:0]	data_i7_I,
	input wire[16:0]	data_i8_R,
	input wire[16:0]	data_i8_I,
	input wire[16:0]	data_i9_R,
	input wire[16:0]	data_i9_I,
	input wire[16:0]	data_i10_R,
	input wire[16:0]	data_i10_I,
	input wire[16:0]	data_i11_R,
	input wire[16:0]	data_i11_I,
	input wire[16:0]	data_i12_R,
	input wire[16:0]	data_i12_I,
	input wire[16:0]	data_i13_R,
	input wire[16:0]	data_i13_I,
	input wire[16:0]	data_i14_R,
	input wire[16:0]	data_i14_I,
	input wire[16:0]	data_i15_R,
	input wire[16:0]	data_i15_I,
	
	output wire[16:0]	data_o0_R,
	output wire[16:0]	data_o0_I,
	output wire[16:0]	data_o1_R,
	output wire[16:0]	data_o1_I,
	output wire[16:0]	data_o2_R,
	output wire[16:0]	data_o2_I,
	output wire[16:0]	data_o3_R,
	output wire[16:0]	data_o3_I,
	output wire[16:0]	data_o4_R,
	output wire[16:0]	data_o4_I,
	output wire[16:0]	data_o5_R,
	output wire[16:0]	data_o5_I,
	output wire[16:0]	data_o6_R,
	output wire[16:0]	data_o6_I,
	output wire[16:0]	data_o7_R,
	output wire[16:0]	data_o7_I,
	output wire[16:0]	data_o8_R,
	output wire[16:0]	data_o8_I,
	output wire[16:0]	data_o9_R,
	output wire[16:0]	data_o9_I,
	output wire[16:0]	data_o10_R,
	output wire[16:0]	data_o10_I,
	output wire[16:0]	data_o11_R,
	output wire[16:0]	data_o11_I,
	output wire[16:0]	data_o12_R,
	output wire[16:0]	data_o12_I,
	output wire[16:0]	data_o13_R,
	output wire[16:0]	data_o13_I,
	output wire[16:0]	data_o14_R,
	output wire[16:0]	data_o14_I,
	output wire[16:0]	data_o15_R,
	output wire[16:0]	data_o15_I
);

	
	wire [16:0]    butterfly1o0_R;
	wire [16:0]    butterfly1o0_I;
	wire [16:0]    butterfly1o1_R;
	wire [16:0]    butterfly1o1_I;
	wire [16:0]    butterfly1o2_R;
	wire [16:0]    butterfly1o2_I;
	wire [16:0]    butterfly1o3_R;
	wire [16:0]    butterfly1o3_I;
	wire [16:0]    butterfly1o4_R;
	wire [16:0]    butterfly1o4_I;
	wire [16:0]    butterfly1o5_R;
	wire [16:0]    butterfly1o5_I;
	wire [16:0]    butterfly1o6_R;
	wire [16:0]    butterfly1o6_I;
	wire [16:0]    butterfly1o7_R;
	wire [16:0]    butterfly1o7_I;
	wire [16:0]    butterfly1o8_R;
	wire [16:0]    butterfly1o8_I;
	wire [16:0]    butterfly1o9_R;
	wire [16:0]    butterfly1o9_I;
	wire [16:0]    butterfly1o10_R;
	wire [16:0]    butterfly1o10_I;
	wire [16:0]    butterfly1o11_R;
	wire [16:0]    butterfly1o11_I;
	wire [16:0]    butterfly1o12_R;
	wire [16:0]    butterfly1o12_I;
	wire [16:0]    butterfly1o13_R;
	wire [16:0]    butterfly1o13_I;
	wire [16:0]    butterfly1o14_R;
	wire [16:0]    butterfly1o14_I;
	wire [16:0]    butterfly1o15_R;
	wire [16:0]    butterfly1o15_I;
	wire [16:0]    dick1_re0;
	wire [16:0]    dick1_im0;
	wire [16:0]    dick1_re1;
	wire [16:0]    dick1_im1;
	wire [16:0]    dick1_re2;
	wire [16:0]    dick1_im2;
	wire [16:0]    dick1_re3;
	wire [16:0]    dick1_im3;
		
	wire [16:0]    butterfly2o0_R;
	wire [16:0]    butterfly2o0_I;
	wire [16:0]    butterfly2o1_R;
	wire [16:0]    butterfly2o1_I;
	wire [16:0]    butterfly2o2_R;
	wire [16:0]    butterfly2o2_I;
	wire [16:0]    butterfly2o3_R;
	wire [16:0]    butterfly2o3_I;	
	wire [16:0]    butterfly2o4_R;
	wire [16:0]    butterfly2o4_I;
	wire [16:0]    butterfly2o5_R;
	wire [16:0]    butterfly2o5_I;
	wire [16:0]    butterfly2o6_R;
	wire [16:0]    butterfly2o6_I;
	wire [16:0]    butterfly2o7_R;
	wire [16:0]    butterfly2o7_I;
	wire [16:0]    butterfly2o8_R;
	wire [16:0]    butterfly2o8_I;
	wire [16:0]    butterfly2o9_R;
	wire [16:0]    butterfly2o9_I;
	wire [16:0]    butterfly2o10_R;
	wire [16:0]    butterfly2o10_I;
	wire [16:0]    butterfly2o11_R;
	wire [16:0]    butterfly2o11_I;
	wire [16:0]    butterfly2o12_R;
	wire [16:0]    butterfly2o12_I;
	wire [16:0]    butterfly2o13_R;
	wire [16:0]    butterfly2o13_I;	
	wire [16:0]    butterfly2o14_R;
	wire [16:0]    butterfly2o14_I;
	wire [16:0]    butterfly2o15_R;
	wire [16:0]    butterfly2o15_I;
	wire [16:0]    dick2_re0;
	wire [16:0]    dick2_im0;
	wire [16:0]    dick2_re1;
	wire [16:0]    dick2_im1;
	wire [16:0]    dick2_re2;
	wire [16:0]    dick2_im2;
	wire [16:0]    dick2_re3;
	wire [16:0]    dick2_im3;
	wire [16:0]    dick2_re4;
	wire [16:0]    dick2_im4;
	wire [16:0]    dick2_re5;
	wire [16:0]    dick2_im5;
	wire [16:0]    dick2_re6;
	wire [16:0]    dick2_im6;
	wire [16:0]    dick2_re7;
	wire [16:0]    dick2_im7;
	wire [16:0]    dick2_re8;
	wire [16:0]    dick2_im8;
	wire [16:0]    dick2_re9;
	wire [16:0]    dick2_im9;
	
	wire [7:0]     sin2;
	wire [7:0]     cos2;
		
	wire [16:0]    butterfly3o0_R;
	wire [16:0]    butterfly3o0_I;
	wire [16:0]    butterfly3o1_R;
	wire [16:0]    butterfly3o1_I;
	wire [16:0]    butterfly3o2_R;
	wire [16:0]    butterfly3o2_I;
	wire [16:0]    butterfly3o3_R;
	wire [16:0]    butterfly3o3_I;
	wire [16:0]    butterfly3o4_R;
	wire [16:0]    butterfly3o4_I;
	wire [16:0]    butterfly3o5_R;
	wire [16:0]    butterfly3o5_I;
	wire [16:0]    butterfly3o6_R;
	wire [16:0]    butterfly3o6_I;
	wire [16:0]    butterfly3o7_R;
	wire [16:0]    butterfly3o7_I;
	wire [16:0]    butterfly3o8_R;
	wire [16:0]    butterfly3o8_I;
	wire [16:0]    butterfly3o9_R;
	wire [16:0]    butterfly3o9_I;
	wire [16:0]    butterfly3o10_R;
	wire [16:0]    butterfly3o10_I;
	wire [16:0]    butterfly3o11_R;
	wire [16:0]    butterfly3o11_I;
	wire [16:0]    butterfly3o12_R;
	wire [16:0]    butterfly3o12_I;
	wire [16:0]    butterfly3o13_R;
	wire [16:0]    butterfly3o13_I;
	wire [16:0]    butterfly3o14_R;
	wire [16:0]    butterfly3o14_I;
	wire [16:0]    butterfly3o15_R;
	wire [16:0]    butterfly3o15_I;
	wire [16:0]    dick3_re0;
	wire [16:0]    dick3_im0;
	wire [16:0]    dick3_re1;
	wire [16:0]    dick3_im1;
	wire [16:0]    dick3_re2;
	wire [16:0]    dick3_im2;
	wire [16:0]    dick3_re3;
	wire [16:0]    dick3_im3;
	wire [16:0]    dick3_re4;
	wire [16:0]    dick3_im4;
	wire [16:0]    dick3_re5;
	wire [16:0]    dick3_im5;
	wire [16:0]    dick3_re6;
	wire [16:0]    dick3_im6;
	wire [16:0]    dick3_re7;
	wire [16:0]    dick3_im7;
	wire [16:0]    dick3_re8;
	wire [16:0]    dick3_im8;
	wire [16:0]    dick3_re9;
	wire [16:0]    dick3_im9;
	wire [16:0]    dick3_re10;
	wire [16:0]    dick3_im10;
	wire [16:0]    dick3_re11;
	wire [16:0]    dick3_im11;
	wire [16:0]    dick3_re12;
	wire [16:0]    dick3_im12;
		
	wire [7:0]     sin31;
	wire [7:0]     cos31;
	wire [7:0]     sin32;
	wire [7:0]     cos32;
	wire [7:0]     sin33;
	wire [7:0]     cos33;

	wire [7:0]     sin41;
	wire [7:0]     cos41;
	wire [7:0]     sin42;
	wire [7:0]     cos42;
	wire [7:0]     sin43;
	wire [7:0]     cos43;
	wire [7:0]     sin44;
	wire [7:0]     cos44;
	wire [7:0]     sin45;
	wire [7:0]     cos45;
	wire [7:0]     sin46;
	wire [7:0]     cos46;
	wire [7:0]     sin47;
	wire [7:0]     cos47;
	

	butterfly1 butterfly1(
		.clk(clk),
		.rst_n(rst_n),
		.data_i0_R(data_i0_R),
		.data_i0_I(data_i0_I),
		.data_i1_R(data_i1_R),
		.data_i1_I(data_i1_I),
		.data_i2_R(data_i2_R),
		.data_i2_I(data_i2_I),
		.data_i3_R(data_i3_R),
		.data_i3_I(data_i3_I),
		.data_i4_R(data_i4_R),
		.data_i4_I(data_i4_I),
		.data_i5_R(data_i5_R),
		.data_i5_I(data_i5_I),
		.data_i6_R(data_i6_R),
		.data_i6_I(data_i6_I),
		.data_i7_R(data_i7_R),
		.data_i7_I(data_i7_I),
		.data_i8_R(data_i8_R),
		.data_i8_I(data_i8_I),
		.data_i9_R(data_i9_R),
		.data_i9_I(data_i9_I),
		.data_i10_R(data_i10_R),
		.data_i10_I(data_i10_I),
		.data_i11_R(data_i11_R),
		.data_i11_I(data_i11_I),
		.data_i12_R(data_i12_R),
		.data_i12_I(data_i12_I),
		.data_i13_R(data_i13_R),
		.data_i13_I(data_i13_I),
		.data_i14_R(data_i14_R),
		.data_i14_I(data_i14_I),
		.data_i15_R(data_i15_R),
		.data_i15_I(data_i15_I),
		
		.data_o0_R(butterfly1o0_R),
		.data_o0_I(butterfly1o0_I),
		.data_o1_R(butterfly1o1_R),
		.data_o1_I(butterfly1o1_I),
		.data_o2_R(butterfly1o2_R),
		.data_o2_I(butterfly1o2_I),
		.data_o3_R(butterfly1o3_R),
		.data_o3_I(butterfly1o3_I),	
		.data_o4_R(butterfly1o4_R),
		.data_o4_I(butterfly1o4_I),
		.data_o5_R(butterfly1o5_R),
		.data_o5_I(butterfly1o5_I),
		.data_o6_R(butterfly1o6_R),
		.data_o6_I(butterfly1o6_I),
		.data_o7_R(butterfly1o7_R),
		.data_o7_I(butterfly1o7_I),
		.data_o8_R(butterfly1o8_R),
		.data_o8_I(butterfly1o8_I),
		.data_o9_R(butterfly1o9_R),
		.data_o9_I(butterfly1o9_I),
		.data_o10_R(butterfly1o10_R),
		.data_o10_I(butterfly1o10_I),
		.data_o11_R(butterfly1o11_R),
		.data_o11_I(butterfly1o11_I),
		.data_o12_R(butterfly1o12_R),
		.data_o12_I(butterfly1o12_I),
		.data_o13_R(butterfly1o13_R),
		.data_o13_I(butterfly1o13_I),	
		.data_o14_R(butterfly1o14_R),
		.data_o14_I(butterfly1o14_I),
		.data_o15_R(butterfly1o15_R),
		.data_o15_I(butterfly1o15_I)
	);
	

		
	butterfly2 butterfly2(
		.clk(clk),
		.rst_n(rst_n),
		.data_i0_R(butterfly1o0_R),
		.data_i0_I(butterfly1o0_I),
		.data_i1_R(butterfly1o1_R),
		.data_i1_I(butterfly1o1_I),
		.data_i2_R(butterfly1o2_R),
		.data_i2_I(butterfly1o2_I),
		.data_i3_R(butterfly1o3_R),
		.data_i3_I(butterfly1o3_I),
		.data_i4_R(butterfly1o4_R),
		.data_i4_I(butterfly1o4_I),
		.data_i5_R(butterfly1o5_R),
		.data_i5_I(butterfly1o5_I),
		.data_i6_R(butterfly1o6_R),
		.data_i6_I(butterfly1o6_I),
		.data_i7_R(butterfly1o7_R),
		.data_i7_I(butterfly1o7_I),
		.data_i8_R(butterfly1o8_R),
		.data_i8_I(butterfly1o8_I),
		.data_i9_R(butterfly1o9_R),
		.data_i9_I(butterfly1o9_I),
		.data_i10_R(butterfly1o10_R),
		.data_i10_I(butterfly1o10_I),
		.data_i11_R(butterfly1o11_R),
		.data_i11_I(butterfly1o11_I),
		.data_i12_R(butterfly1o12_R),
		.data_i12_I(butterfly1o12_I),
		.data_i13_R(butterfly1o13_R),
		.data_i13_I(butterfly1o13_I),
		.data_i14_R(butterfly1o14_R),
		.data_i14_I(butterfly1o14_I),
		.data_i15_R(butterfly1o15_R),
		.data_i15_I(butterfly1o15_I),
		.dick_re0(dick1_re0),
		.dick_im0(dick1_im0),
		.dick_re1(dick1_re1),
		.dick_im1(dick1_im1),
		.dick_re2(dick1_re2),
		.dick_im2(dick1_im2),
		.dick_re3(dick1_re3),
		.dick_im3(dick1_im3),
		
		.sin(sin2),
		.cos(cos2),
		
		.data_o0_R(butterfly2o0_R),
		.data_o0_I(butterfly2o0_I),
		.data_o1_R(butterfly2o1_R),
		.data_o1_I(butterfly2o1_I),
		.data_o2_R(butterfly2o2_R),
		.data_o2_I(butterfly2o2_I),
		.data_o3_R(butterfly2o3_R),
		.data_o3_I(butterfly2o3_I),	
		.data_o4_R(butterfly2o4_R),
		.data_o4_I(butterfly2o4_I),
		.data_o5_R(butterfly2o5_R),
		.data_o5_I(butterfly2o5_I),
		.data_o6_R(butterfly2o6_R),
		.data_o6_I(butterfly2o6_I),
		.data_o7_R(butterfly2o7_R),
		.data_o7_I(butterfly2o7_I),
		.data_o8_R(butterfly2o8_R),
		.data_o8_I(butterfly2o8_I),
		.data_o9_R(butterfly2o9_R),
		.data_o9_I(butterfly2o9_I),
		.data_o10_R(butterfly2o10_R),
		.data_o10_I(butterfly2o10_I),
		.data_o11_R(butterfly2o11_R),
		.data_o11_I(butterfly2o11_I),
		.data_o12_R(butterfly2o12_R),
		.data_o12_I(butterfly2o12_I),
		.data_o13_R(butterfly2o13_R),
		.data_o13_I(butterfly2o13_I),	
		.data_o14_R(butterfly2o14_R),
		.data_o14_I(butterfly2o14_I),
		.data_o15_R(butterfly2o15_R),
		.data_o15_I(butterfly2o15_I)
	);
		
	mul mul1(
		.mul1(sin2),
		.mul2(butterfly1o12_R),
		
		.res(dick1_im0)
	);

	mul mul2(
		.mul1(sin2),
		.mul2(butterfly1o12_I),
		
		.res(dick1_re0)
	);

	mul mul3(
		.mul1(sin2),
		.mul2(butterfly1o14_R),
		
		.res(dick1_im1)
	);

	mul mul4(
		.mul1(sin2),
		.mul2(butterfly1o14_I),
		
		.res(dick1_re1)
	);
	
	mul mul5(
		.mul1(sin2),
		.mul2(butterfly1o13_R),
		
		.res(dick1_im2)
	);
	
	mul mul6(
		.mul1(sin2),
		.mul2(butterfly1o13_I),
		
		.res(dick1_re2)
	);

	mul mul7(
		.mul1(sin2),
		.mul2(butterfly1o15_R),
		
		.res(dick1_im3)
	);
	
	mul mul8(
		.mul1(sin2),
		.mul2(butterfly1o15_I),
		
		.res(dick1_re3)
	);		
	
	butterfly3 butterfly3(
		.clk(clk),
		.rst_n(rst_n),
		.data_i0_R(butterfly2o0_R),
		.data_i0_I(butterfly2o0_I),
		.data_i1_R(butterfly2o1_R),
		.data_i1_I(butterfly2o1_I),
		.data_i2_R(butterfly2o2_R),
		.data_i2_I(butterfly2o2_I),
		.data_i3_R(butterfly2o3_R),
		.data_i3_I(butterfly2o3_I),
		.data_i4_R(butterfly2o4_R),
		.data_i4_I(butterfly2o4_I),
		.data_i5_R(butterfly2o5_R),
		.data_i5_I(butterfly2o5_I),
		.data_i6_R(butterfly2o6_R),
		.data_i6_I(butterfly2o6_I),
		.data_i7_R(butterfly2o7_R),
		.data_i7_I(butterfly2o7_I),
		.data_i8_R(butterfly2o8_R),
		.data_i8_I(butterfly2o8_I),
		.data_i9_R(butterfly2o9_R),
		.data_i9_I(butterfly2o9_I),
		.data_i10_R(butterfly2o10_R),
		.data_i10_I(butterfly2o10_I),
		.data_i11_R(butterfly2o11_R),
		.data_i11_I(butterfly2o11_I),
		.data_i12_R(butterfly2o12_R),
		.data_i12_I(butterfly2o12_I),
		.data_i13_R(butterfly2o13_R),
		.data_i13_I(butterfly2o13_I),
		.data_i14_R(butterfly2o14_R),
		.data_i14_I(butterfly2o14_I),
		.data_i15_R(butterfly2o15_R),
		.data_i15_I(butterfly2o15_I),
		.dick_re0(dick2_re0),
		.dick_im0(dick2_im0),
		.dick_re1(dick2_re1),
		.dick_im1(dick2_im1),
		.dick_re2(dick2_re2),
		.dick_im2(dick2_im2),
		.dick_re3(dick2_re3),
		.dick_im3(dick2_im3),
		.dick_re4(dick2_re4),
		.dick_im4(dick2_im4),
		.dick_re5(dick2_re5),
		.dick_im5(dick2_im5),
		.dick_re6(dick2_re6),
		.dick_im6(dick2_im6),
		.dick_re7(dick2_re7),
		.dick_im7(dick2_im7),
		.dick_re8(dick2_re8),
		.dick_im8(dick2_im8),
		.dick_re9(dick2_re9),
		.dick_im9(dick2_im9),
		
		.sin31(sin31),
		.cos31(cos31),
		.sin32(sin32),
		.cos32(cos32),
		.sin33(sin33),
		.cos33(cos33),
		
		.data_o0_R(butterfly3o0_R),
		.data_o0_I(butterfly3o0_I),
		.data_o1_R(butterfly3o1_R),
		.data_o1_I(butterfly3o1_I),
		.data_o2_R(butterfly3o2_R),
		.data_o2_I(butterfly3o2_I),
		.data_o3_R(butterfly3o3_R),
		.data_o3_I(butterfly3o3_I),	
		.data_o4_R(butterfly3o4_R),
		.data_o4_I(butterfly3o4_I),
		.data_o5_R(butterfly3o5_R),
		.data_o5_I(butterfly3o5_I),
		.data_o6_R(butterfly3o6_R),
		.data_o6_I(butterfly3o6_I),
		.data_o7_R(butterfly3o7_R),
		.data_o7_I(butterfly3o7_I),
		.data_o8_R(butterfly3o8_R),
		.data_o8_I(butterfly3o8_I),
		.data_o9_R(butterfly3o9_R),
		.data_o9_I(butterfly3o9_I),
		.data_o10_R(butterfly3o10_R),
		.data_o10_I(butterfly3o10_I),
		.data_o11_R(butterfly3o11_R),
		.data_o11_I(butterfly3o11_I),
		.data_o12_R(butterfly3o12_R),
		.data_o12_I(butterfly3o12_I),
		.data_o13_R(butterfly3o13_R),
		.data_o13_I(butterfly3o13_I),
		.data_o14_R(butterfly3o14_R),
		.data_o14_I(butterfly3o14_I),
		.data_o15_R(butterfly3o15_R),
		.data_o15_I(butterfly3o15_I)
	);
	
	mul mul9(
		.mul1(cos31),
		.mul2(butterfly2o10_R),
		
		.res(dick2_re0)
	);

	mul mul10(
		.mul1(sin31),
		.mul2(butterfly2o10_I),
		
		.res(dick2_re1)
	);

	mul mul11(
		.mul1(cos31),
		.mul2(butterfly2o10_I),
		
		.res(dick2_im0)
	);
	
	mul mul12(
		.mul1(sin31),
		.mul2(butterfly2o10_R),
		
		.res(dick2_im1)
	);

	mul mul13(
		.mul1(sin32),
		.mul2(butterfly2o6_I),
		
		.res(dick2_re2)
	);

	
	mul mul14(
		.mul1(sin32),
		.mul2(butterfly2o6_R),
		
		.res(dick2_im2)
	);
	
	mul mul15(
		.mul1(cos33),
		.mul2(butterfly2o14_R),
		
		.res(dick2_re3)
	);

	mul mul16(
		.mul1(sin33),
		.mul2(butterfly2o14_I),
		
		.res(dick2_re4)
	);

	mul mul17(
		.mul1(cos33),
		.mul2(butterfly2o14_I),
		
		.res(dick2_im3)
	);
	
	mul mul18(
		.mul1(sin33),
		.mul2(butterfly2o14_R),
		
		.res(dick2_im4)
	);
	
	mul mul19(
		.mul1(cos31),
		.mul2(butterfly2o11_R),
		
		.res(dick2_re5)
	);

	mul mul20(
		.mul1(sin31),
		.mul2(butterfly2o11_I),
		
		.res(dick2_re6)
	);

	mul mul21(
		.mul1(cos31),
		.mul2(butterfly2o11_I),
		
		.res(dick2_im5)
	);
	
	mul mul22(
		.mul1(sin31),
		.mul2(butterfly2o11_R),
		
		.res(dick2_im6)
	);
	
	mul mul23(
		.mul1(sin32),
		.mul2(butterfly2o7_I),
		
		.res(dick2_re7)
	);

	
	mul mul24(
		.mul1(sin32),
		.mul2(butterfly2o7_R),
		
		.res(dick2_im7)
	);
	
	mul mul25(
		.mul1(cos33),
		.mul2(butterfly2o15_R),
		
		.res(dick2_re8)
	);

	mul mul26(
		.mul1(sin33),
		.mul2(butterfly2o15_I),
		
		.res(dick2_re9)
	);

	mul mul27(
		.mul1(cos33),
		.mul2(butterfly2o15_I),
		
		.res(dick2_im8)
	);
	
	mul mul28(
		.mul1(sin33),
		.mul2(butterfly2o15_R),
		
		.res(dick2_im9)
	);
	
	
	butterfly4 butterfly4(
		.clk(clk),
		.rst_n(rst_n),
		.data_i0_R(butterfly3o0_R),
		.data_i0_I(butterfly3o0_I),
		.data_i1_R(butterfly3o1_R),
		.data_i1_I(butterfly3o1_I),
		.data_i2_R(butterfly3o2_R),
		.data_i2_I(butterfly3o2_I),
		.data_i3_R(butterfly3o3_R),
		.data_i3_I(butterfly3o3_I),
		.data_i4_R(butterfly3o4_R),
		.data_i4_I(butterfly3o4_I),
		.data_i5_R(butterfly3o5_R),
		.data_i5_I(butterfly3o5_I),
		.data_i6_R(butterfly3o6_R),
		.data_i6_I(butterfly3o6_I),
		.data_i7_R(butterfly3o7_R),
		.data_i7_I(butterfly3o7_I),
		.data_i8_R(butterfly3o8_R),
		.data_i8_I(butterfly3o8_I),
		.data_i9_R(butterfly3o9_R),
		.data_i9_I(butterfly3o9_I),
		.data_i10_R(butterfly3o10_R),
		.data_i10_I(butterfly3o10_I),
		.data_i11_R(butterfly3o11_R),
		.data_i11_I(butterfly3o11_I),
		.data_i12_R(butterfly3o12_R),
		.data_i12_I(butterfly3o12_I),
		.data_i13_R(butterfly3o13_R),
		.data_i13_I(butterfly3o13_I),
		.data_i14_R(butterfly3o14_R),
		.data_i14_I(butterfly3o14_I),
		.data_i15_R(butterfly3o15_R),
		.data_i15_I(butterfly3o15_I),
		.dick_re0(dick3_re0),
		.dick_im0(dick3_im0),
		.dick_re1(dick3_re1),
		.dick_im1(dick3_im1),
		.dick_re2(dick3_re2),
		.dick_im2(dick3_im2),
		.dick_re3(dick3_re3),
		.dick_im3(dick3_im3),
		.dick_re4(dick3_re4),
		.dick_im4(dick3_im4),
		.dick_re5(dick3_re5),
		.dick_im5(dick3_im5),
		.dick_re6(dick3_re6),
		.dick_im6(dick3_im6),
		.dick_re7(dick3_re7),
		.dick_im7(dick3_im7),
		.dick_re8(dick3_re8),
		.dick_im8(dick3_im8),
		.dick_re9(dick3_re9),
		.dick_im9(dick3_im9),
		.dick_re10(dick3_re10),
		.dick_im10(dick3_im10),
		.dick_re11(dick3_re11),
		.dick_im11(dick3_im11),
		.dick_re12(dick3_re12),
		.dick_im12(dick3_im12),
		
		.sin41(sin41),
		.cos41(cos41),
		.sin42(sin42),
		.cos42(cos42),
		.sin43(sin43),
		.cos43(cos43),
		.sin44(sin44),
		.cos44(cos44),
		.sin45(sin45),
		.cos45(cos45),
		.sin46(sin46),
		.cos46(cos46),
		.sin47(sin47),
		.cos47(cos47),
		
		.data_o0_R(data_o0_R),
		.data_o0_I(data_o0_I),
		.data_o1_R(data_o1_R),
		.data_o1_I(data_o1_I),
		.data_o2_R(data_o2_R),
		.data_o2_I(data_o2_I),
		.data_o3_R(data_o3_R),
		.data_o3_I(data_o3_I),	
		.data_o4_R(data_o4_R),
		.data_o4_I(data_o4_I),
		.data_o5_R(data_o5_R),
		.data_o5_I(data_o5_I),
		.data_o6_R(data_o6_R),
		.data_o6_I(data_o6_I),
		.data_o7_R(data_o7_R),
		.data_o7_I(data_o7_I),
		.data_o8_R(data_o8_R),
		.data_o8_I(data_o8_I),
		.data_o9_R(data_o9_R),
		.data_o9_I(data_o9_I),
		.data_o10_R(data_o10_R),
		.data_o10_I(data_o10_I),
		.data_o11_R(data_o11_R),
		.data_o11_I(data_o11_I),
		.data_o12_R(data_o12_R),
		.data_o12_I(data_o12_I),
		.data_o13_R(data_o13_R),
		.data_o13_I(data_o13_I),
		.data_o14_R(data_o14_R),
		.data_o14_I(data_o14_I),
		.data_o15_R(data_o15_R),
		.data_o15_I(data_o15_I)
	);
	
	mul mul29(
		.mul1(cos41),
		.mul2(butterfly3o9_R),
		
		.res(dick3_re0)
	);

	mul mul30(
		.mul1(sin41),
		.mul2(butterfly3o9_I),
		
		.res(dick3_re1)
	);

	mul mul31(
		.mul1(cos41),
		.mul2(butterfly3o9_I),
		
		.res(dick3_im0)
	);
	
	mul mul32(
		.mul1(sin41),
		.mul2(butterfly3o9_R),
		
		.res(dick3_im1)
	);
	
	mul mul33(
		.mul1(cos42),
		.mul2(butterfly3o5_R),
		
		.res(dick3_re2)
	);

	mul mul34(
		.mul1(sin42),
		.mul2(butterfly3o5_I),
		
		.res(dick3_re3)
	);

	mul mul135(
		.mul1(cos42),
		.mul2(butterfly3o5_I),
		
		.res(dick3_im2)
	);
	
	mul mul36(
		.mul1(sin42),
		.mul2(butterfly3o5_R),
		
		.res(dick3_im3)
	);
	
	mul mul37(
		.mul1(cos43),
		.mul2(butterfly3o13_R),
		
		.res(dick3_re4)
	);

	mul mul38(
		.mul1(sin43),
		.mul2(butterfly3o13_I),
		
		.res(dick3_re5)
	);

	mul mul39(
		.mul1(cos43),
		.mul2(butterfly3o13_I),
		
		.res(dick3_im4)
	);
	
	mul mul40(
		.mul1(sin43),
		.mul2(butterfly3o13_R),
		
		.res(dick3_im5)
	);
	
	mul mul41(
		.mul1(sin44),
		.mul2(butterfly3o3_I),
		
		.res(dick3_re6)
	);

	mul mul42(
		.mul1(sin44),
		.mul2(butterfly3o3_R),
		
		.res(dick3_im6)
	);

	mul mul43(
		.mul1(cos45),
		.mul2(butterfly3o11_R),
		
		.res(dick3_re7)
	);

	mul mul44(
		.mul1(sin45),
		.mul2(butterfly3o11_I),
		
		.res(dick3_re8)
	);

	mul mul45(
		.mul1(cos45),
		.mul2(butterfly3o11_I),
		
		.res(dick3_im7)
	);
	
	mul mul46(
		.mul1(sin45),
		.mul2(butterfly3o11_R),
		
		.res(dick3_im8)
	);
	
	mul mul47(
		.mul1(cos46),
		.mul2(butterfly3o7_R),
		
		.res(dick3_re9)
	);

	mul mul48(
		.mul1(sin46),
		.mul2(butterfly3o7_I),
		
		.res(dick3_re10)
	);

	mul mul49(
		.mul1(cos46),
		.mul2(butterfly3o7_I),
		
		.res(dick3_im9)
	);
	
	mul mul50(
		.mul1(sin46),
		.mul2(butterfly3o7_R),
		
		.res(dick3_im10)
	);
	
	mul mul51(
		.mul1(cos47),
		.mul2(butterfly3o15_R),
		
		.res(dick3_re11)
	);

	mul mul52(
		.mul1(sin47),
		.mul2(butterfly3o15_I),
		
		.res(dick3_re12)
	);

	mul mul53(
		.mul1(cos47),
		.mul2(butterfly3o15_I),
		
		.res(dick3_im11)
	);
	
	mul mul54(
		.mul1(sin47),
		.mul2(butterfly3o15_R),
		
		.res(dick3_im12)
	);
	
endmodule