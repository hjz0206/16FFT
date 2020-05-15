/*
*date:3.22 2020
*/

module fft(
	input wire			clk,
	input wire			rst_n,
	input wire[16:0]	data_i0_R,
	input wire[16:0]	data_i0_I,
	input wire[16:0]	data_i1_R,
	input wire[16:0]	data_i1_I,
	
	output wire[16:0]	data_o0_R,
	output wire[16:0]	data_o0_I,
	output wire[16:0]	data_o1_R,
	output wire[16:0]	data_o1_I
);

	wire [3:0]	cnt;
	wire [16:0]	ser2par_data_o0_R;
	wire [16:0]	ser2par_data_o0_I;
	wire [16:0]	ser2par_data_o1_R;
	wire [16:0]	ser2par_data_o1_I;
	wire [16:0]	ser2par_data_o2_R;
	wire [16:0]	ser2par_data_o2_I;
	wire [16:0]	ser2par_data_o3_R;
	wire [16:0]	ser2par_data_o3_I;
	wire [16:0]	ser2par_data_o4_R;
	wire [16:0]	ser2par_data_o4_I;
	wire [16:0]	ser2par_data_o5_R;
	wire [16:0]	ser2par_data_o5_I;
	wire [16:0]	ser2par_data_o6_R;
	wire [16:0]	ser2par_data_o6_I;
	wire [16:0]	ser2par_data_o7_R;
	wire [16:0]	ser2par_data_o7_I;
	wire [16:0]	ser2par_data_o8_R;
	wire [16:0]	ser2par_data_o8_I;
	wire [16:0]	ser2par_data_o9_R;
	wire [16:0]	ser2par_data_o9_I;
	wire [16:0]	ser2par_data_o10_R;
	wire [16:0]	ser2par_data_o10_I;
	wire [16:0]	ser2par_data_o11_R;
	wire [16:0]	ser2par_data_o11_I;
	wire [16:0]	ser2par_data_o12_R;
	wire [16:0]	ser2par_data_o12_I;
	wire [16:0]	ser2par_data_o13_R;
	wire [16:0]	ser2par_data_o13_I;
	wire [16:0]	ser2par_data_o14_R;
	wire [16:0]	ser2par_data_o14_I;
	wire [16:0]	ser2par_data_o15_R;
	wire [16:0]	ser2par_data_o15_I;
	wire [16:0]	fft_data_o0_R;
	wire [16:0]	fft_data_o0_I;
	wire [16:0]	fft_data_o1_R;
	wire [16:0]	fft_data_o1_I;
	wire [16:0]	fft_data_o2_R;
	wire [16:0]	fft_data_o2_I;
	wire [16:0]	fft_data_o3_R;
	wire [16:0]	fft_data_o3_I;
	wire [16:0]	fft_data_o4_R;
	wire [16:0]	fft_data_o4_I;
	wire [16:0]	fft_data_o5_R;
	wire [16:0]	fft_data_o5_I;
	wire [16:0]	fft_data_o6_R;
	wire [16:0]	fft_data_o6_I;
	wire [16:0]	fft_data_o7_R;
	wire [16:0]	fft_data_o7_I;
	wire [16:0]	fft_data_o8_R;
	wire [16:0]	fft_data_o8_I;
	wire [16:0]	fft_data_o9_R;
	wire [16:0]	fft_data_o9_I;
	wire [16:0]	fft_data_o10_R;
	wire [16:0]	fft_data_o10_I;
	wire [16:0]	fft_data_o11_R;
	wire [16:0]	fft_data_o11_I;
	wire [16:0]	fft_data_o12_R;
	wire [16:0]	fft_data_o12_I;
	wire [16:0]	fft_data_o13_R;
	wire [16:0]	fft_data_o13_I;
	wire [16:0]	fft_data_o14_R;
	wire [16:0]	fft_data_o14_I;
	wire [16:0]	fft_data_o15_R;
	wire [16:0]	fft_data_o15_I;
	
	cnt cnt0(
		.clk(clk),
		.rst_n(rst_n),
		
		.cnt(cnt)
	);

	ser2par ser2par0(
		.clk(clk),
		.rst_n(rst_n),
		.cnt(cnt),
		.data_i0_R(data_i0_R),
		.data_i0_I(data_i0_I),
		.data_i1_R(data_i1_R),
		.data_i1_I(data_i1_I),
		
		.data_o0_R(ser2par_data_o0_R),
		.data_o0_I(ser2par_data_o0_I),
		.data_o1_R(ser2par_data_o1_R),
		.data_o1_I(ser2par_data_o1_I),
		.data_o2_R(ser2par_data_o2_R),
		.data_o2_I(ser2par_data_o2_I),
		.data_o3_R(ser2par_data_o3_R),
		.data_o3_I(ser2par_data_o3_I),	
		.data_o4_R(ser2par_data_o4_R),
		.data_o4_I(ser2par_data_o4_I),
		.data_o5_R(ser2par_data_o5_R),
		.data_o5_I(ser2par_data_o5_I),
		.data_o6_R(ser2par_data_o6_R),
		.data_o6_I(ser2par_data_o6_I),
		.data_o7_R(ser2par_data_o7_R),
		.data_o7_I(ser2par_data_o7_I),
		.data_o8_R(ser2par_data_o8_R),
		.data_o8_I(ser2par_data_o8_I),
		.data_o9_R(ser2par_data_o9_R),
		.data_o9_I(ser2par_data_o9_I),
		.data_o10_R(ser2par_data_o10_R),
		.data_o10_I(ser2par_data_o10_I),
		.data_o11_R(ser2par_data_o11_R),
		.data_o11_I(ser2par_data_o11_I),
		.data_o12_R(ser2par_data_o12_R),
		.data_o12_I(ser2par_data_o12_I),
		.data_o13_R(ser2par_data_o13_R),
		.data_o13_I(ser2par_data_o13_I),	
		.data_o14_R(ser2par_data_o14_R),
		.data_o14_I(ser2par_data_o14_I),
		.data_o15_R(ser2par_data_o15_R),
		.data_o15_I(ser2par_data_o15_I)
	);
	
	fft_core fft_core0(
		.clk(clk),
		.rst_n(rst_n),
		.data_i0_R(ser2par_data_o0_R),
		.data_i0_I(ser2par_data_o0_I),
		.data_i1_R(ser2par_data_o1_R),
		.data_i1_I(ser2par_data_o1_I),
		.data_i2_R(ser2par_data_o2_R),
		.data_i2_I(ser2par_data_o2_I),
		.data_i3_R(ser2par_data_o3_R),
		.data_i3_I(ser2par_data_o3_I),
		.data_i4_R(ser2par_data_o4_R),
		.data_i4_I(ser2par_data_o4_I),
		.data_i5_R(ser2par_data_o5_R),
		.data_i5_I(ser2par_data_o5_I),
		.data_i6_R(ser2par_data_o6_R),
		.data_i6_I(ser2par_data_o6_I),
		.data_i7_R(ser2par_data_o7_R),
		.data_i7_I(ser2par_data_o7_I),
		.data_i8_R(ser2par_data_o8_R),
		.data_i8_I(ser2par_data_o8_I),
		.data_i9_R(ser2par_data_o9_R),
		.data_i9_I(ser2par_data_o9_I),
		.data_i10_R(ser2par_data_o10_R),
		.data_i10_I(ser2par_data_o10_I),
		.data_i11_R(ser2par_data_o11_R),
		.data_i11_I(ser2par_data_o11_I),
		.data_i12_R(ser2par_data_o12_R),
		.data_i12_I(ser2par_data_o12_I),
		.data_i13_R(ser2par_data_o13_R),
		.data_i13_I(ser2par_data_o13_I),
		.data_i14_R(ser2par_data_o14_R),
		.data_i14_I(ser2par_data_o14_I),
		.data_i15_R(ser2par_data_o15_R),
		.data_i15_I(ser2par_data_o15_I),
		
		.data_o0_R(fft_data_o0_R),
		.data_o0_I(fft_data_o0_I),
		.data_o1_R(fft_data_o1_R),
		.data_o1_I(fft_data_o1_I),
		.data_o2_R(fft_data_o2_R),
		.data_o2_I(fft_data_o2_I),
		.data_o3_R(fft_data_o3_R),
		.data_o3_I(fft_data_o3_I),	
		.data_o4_R(fft_data_o4_R),
		.data_o4_I(fft_data_o4_I),
		.data_o5_R(fft_data_o5_R),
		.data_o5_I(fft_data_o5_I),
		.data_o6_R(fft_data_o6_R),
		.data_o6_I(fft_data_o6_I),
		.data_o7_R(fft_data_o7_R),
		.data_o7_I(fft_data_o7_I),
		.data_o8_R(fft_data_o8_R),
		.data_o8_I(fft_data_o8_I),
		.data_o9_R(fft_data_o9_R),
		.data_o9_I(fft_data_o9_I),
		.data_o10_R(fft_data_o10_R),
		.data_o10_I(fft_data_o10_I),
		.data_o11_R(fft_data_o11_R),
		.data_o11_I(fft_data_o11_I),
		.data_o12_R(fft_data_o12_R),
		.data_o12_I(fft_data_o12_I),
		.data_o13_R(fft_data_o13_R),
		.data_o13_I(fft_data_o13_I),	
		.data_o14_R(fft_data_o14_R),
		.data_o14_I(fft_data_o14_I),
		.data_o15_R(fft_data_o15_R),
		.data_o15_I(fft_data_o15_I)
	);
	
	par2ser par2ser0(
		.clk(clk),
		.rst_n(rst_n),
		.cnt(cnt),
		.data_i0_R(fft_data_o0_R),
		.data_i0_I(fft_data_o0_I),
		.data_i1_R(fft_data_o1_R),
		.data_i1_I(fft_data_o1_I),
		.data_i2_R(fft_data_o2_R),
		.data_i2_I(fft_data_o2_I),
		.data_i3_R(fft_data_o3_R),
		.data_i3_I(fft_data_o3_I),	
		.data_i4_R(fft_data_o4_R),
		.data_i4_I(fft_data_o4_I),
		.data_i5_R(fft_data_o5_R),
		.data_i5_I(fft_data_o5_I),
		.data_i6_R(fft_data_o6_R),
		.data_i6_I(fft_data_o6_I),
		.data_i7_R(fft_data_o7_R),
		.data_i7_I(fft_data_o7_I),
		.data_i8_R(fft_data_o8_R),
		.data_i8_I(fft_data_o8_I),
		.data_i9_R(fft_data_o9_R),
		.data_i9_I(fft_data_o9_I),
		.data_i10_R(fft_data_o10_R),
		.data_i10_I(fft_data_o10_I),
		.data_i11_R(fft_data_o11_R),
		.data_i11_I(fft_data_o11_I),
		.data_i12_R(fft_data_o12_R),
		.data_i12_I(fft_data_o12_I),
		.data_i13_R(fft_data_o13_R),
		.data_i13_I(fft_data_o13_I),	
		.data_i14_R(fft_data_o14_R),
		.data_i14_I(fft_data_o14_I),
		.data_i15_R(fft_data_o15_R),
		.data_i15_I(fft_data_o15_I),
		
		.data_o0_R(data_o0_R),
		.data_o0_I(data_o0_I),
		.data_o1_R(data_o1_R),
		.data_o1_I(data_o1_I)
	);
	
endmodule	