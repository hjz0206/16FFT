/*
*date:3.23 2020
*/
module butterfly4(
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
	input wire[16:0]    dick_re0,
	input wire[16:0]    dick_im0,
	input wire[16:0]    dick_re1,
	input wire[16:0]    dick_im1,
	input wire[16:0]    dick_re2,
	input wire[16:0]    dick_im2,
	input wire[16:0]    dick_re3,
	input wire[16:0]    dick_im3,
	input wire[16:0]    dick_re4,
	input wire[16:0]    dick_im4,
	input wire[16:0]    dick_re5,
	input wire[16:0]    dick_im5,
	input wire[16:0]    dick_re6,
	input wire[16:0]    dick_im6,
	input wire[16:0]    dick_re7,
	input wire[16:0]    dick_im7,
	input wire[16:0]    dick_re8,
	input wire[16:0]    dick_im8,
	input wire[16:0]    dick_re9,
	input wire[16:0]    dick_im9,
	input wire[16:0]    dick_re10,
	input wire[16:0]    dick_im10,
	input wire[16:0]    dick_re11,
	input wire[16:0]    dick_im11,
	input wire[16:0]    dick_re12,
	input wire[16:0]    dick_im12,
	
	output reg[7:0]     sin41,
	output reg[7:0]     cos41,
	output reg[7:0]     sin42,
	output reg[7:0]     cos42,
	output reg[7:0]     sin43,
	output reg[7:0]     cos43,
	output reg[7:0]     sin44,
	output reg[7:0]     cos44,
	output reg[7:0]     sin45,
	output reg[7:0]     cos45,
	output reg[7:0]     sin46,
	output reg[7:0]     cos46,
	output reg[7:0]     sin47,
	output reg[7:0]     cos47,
	
	output reg[16:0]	data_o0_R,
	output reg[16:0]	data_o0_I,
	output reg[16:0]	data_o1_R,
	output reg[16:0]	data_o1_I,
	output reg[16:0]	data_o2_R,
	output reg[16:0]	data_o2_I,
	output reg[16:0]	data_o3_R,
	output reg[16:0]	data_o3_I,
	output reg[16:0]	data_o4_R,
	output reg[16:0]	data_o4_I,
	output reg[16:0]	data_o5_R,
	output reg[16:0]	data_o5_I,
	output reg[16:0]	data_o6_R,
	output reg[16:0]	data_o6_I,
	output reg[16:0]	data_o7_R,
	output reg[16:0]	data_o7_I,
	output reg[16:0]	data_o8_R,
	output reg[16:0]	data_o8_I,
	output reg[16:0]	data_o9_R,
	output reg[16:0]	data_o9_I,
	output reg[16:0]	data_o10_R,
	output reg[16:0]	data_o10_I,
	output reg[16:0]	data_o11_R,
	output reg[16:0]	data_o11_I,
	output reg[16:0]	data_o12_R,
	output reg[16:0]	data_o12_I,
	output reg[16:0]	data_o13_R,
	output reg[16:0]	data_o13_I,
	output reg[16:0]	data_o14_R,
	output reg[16:0]	data_o14_I,
	output reg[16:0]	data_o15_R,
	output reg[16:0]	data_o15_I
);
//wire [7:0] cos;
//wire [7:0] sin;

reg	 signed	  [16:0]   far0;
reg	 signed	  [16:0]   fai0;
reg	 signed	  [16:0]   fbr0;
reg	 signed	  [16:0]   fbi0;
reg	 signed	  [16:0]   far1;
reg	 signed	  [16:0]   fai1;
reg	 signed	  [16:0]   fbr1;
reg	 signed	  [16:0]   fbi1;
reg	 signed	  [16:0]   far2;
reg	 signed	  [16:0]   fai2;
reg	 signed	  [16:0]   fbr2;
reg	 signed	  [16:0]   fbi2;
reg	 signed	  [16:0]   far3;
reg	 signed	  [16:0]   fai3;
reg	 signed	  [16:0]   fbr3;
reg	 signed	  [16:0]   fbi3;
reg	 signed	  [16:0]   far4;
reg	 signed	  [16:0]   fai4;
reg	 signed	  [16:0]   fbr4;
reg	 signed	  [16:0]   fbi4;
reg	 signed	  [16:0]   far5;
reg	 signed	  [16:0]   fai5;
reg	 signed	  [16:0]   fbr5;
reg	 signed	  [16:0]   fbi5;
reg	 signed	  [16:0]   far6;
reg	 signed	  [16:0]   fai6;
reg	 signed	  [16:0]   fbr6;
reg	 signed	  [16:0]   fbi6;
reg	 signed	  [16:0]   far7;
reg	 signed	  [16:0]   fai7;
reg	 signed	  [16:0]   fbr7;
reg	 signed	  [16:0]   fbi7;


always@(*)
begin
	if(!rst_n)
			begin
				far0=0;
				fai0=0;
				fbr0=0;
				fbi0=0;
				far1=0;
				fai1=0;
				fbr1=0;
				fbi1=0;
				far2=0;
				fai2=0;
				fbr2=0;
				fbi2=0;
				far3=0;
				fai3=0;
				fbr3=0;
				fbi3=0;
				far4=0;
				fai4=0;
				fbr4=0;
				fbi4=0;
				far5=0;
				fai5=0;
				fbr5=0;
				fbi5=0;
				far6=0;
				fai6=0;
				fbr6=0;
				fbi6=0;
				far7=0;
				fai7=0;
				fbr7=0;
				fbi7=0;
			end
		else
		begin
				far0  = data_i0_R + data_i1_R;
				fai0  = data_i0_I + data_i1_I;
				fbr0  = data_i0_R - data_i1_R ;
				fbi0  = data_i0_I - data_i1_I;


				sin41 = 8'b01100001;//负值
				cos41 = 8'b11101100;
				far1  = data_i8_R + dick_re0 + dick_re1;
				fai1  = data_i8_I - dick_im1 + dick_im0;
				fbr1  = data_i8_R - dick_re0 - dick_re1;
				fbi1  = data_i8_I + dick_im1 - dick_im0;

				sin42 = 8'b10110101;//负值
				cos42 = 8'b10110101;
				far2  = data_i4_R + dick_re2 + dick_re3;
				fai2  = data_i4_I - dick_im3 + dick_im2;
				fbr2  = data_i4_R - dick_re2 - dick_re3;
				fbi2  = data_i4_I + dick_im3 - dick_im2;

				sin43 = 8'b11101100;//负值
				cos43 = 8'b01100001;
				far3  = data_i12_R + dick_re4 + dick_re5;
				fai3  = data_i12_I - dick_im5 + dick_im4;
				fbr3  = data_i12_R - dick_re4 - dick_re5;
				fbi3  = data_i12_I + dick_im5 - dick_im4;

				sin44 = 8'b1;
				cos44 = 8'b0;				
				far4  = data_i2_R + dick_re6;
				fai4  = data_i2_I - dick_im6;
				fbr4  = data_i2_R - dick_re6;
				fbi4  = data_i2_I + dick_im6;

				sin45 = 8'b11101100;//负值
				cos45 = 8'b01100001;//负值
				far5  = data_i10_R - dick_re7 + dick_re8;
				fai5  = data_i10_I - dick_im8 - dick_im7;
				fbr5  = data_i10_R + dick_re7 - dick_re8;
				fbi5  = data_i10_I + dick_im8 + dick_im7;
			
				sin46 = 8'b10110101;//负值
				cos46 = 8'b10110101;//负值
				far6  = data_i6_R - dick_re9 + dick_re10;
				fai6  = data_i6_I - dick_im10 - dick_im9;
				fbr6  = data_i6_R + dick_re9 - dick_re10;
				fbi6  = data_i6_I + dick_im10 + dick_im9;

				sin47 = 8'b01100001;//负值
				cos47 = 8'b11101100;//负值
				far7  = data_i14_R - dick_re11 + dick_re12;
				fai7  = data_i14_I - dick_im12 - dick_im11;
				fbr7  = data_i14_R + dick_re11 - dick_re12;
				fbi7  = data_i14_I + dick_im12 + dick_im11;
			end
	end

always@(posedge clk or negedge rst_n)
	begin
		if(!rst_n)
		begin
			data_o0_R <= 0;
			data_o0_I <= 0;
			data_o1_R <= 0;
			data_o1_I <= 0;
			data_o2_R <= 0;
			data_o2_I <= 0;
			data_o3_R <= 0;
			data_o3_I <= 0;
			data_o4_R <= 0;
			data_o4_I <= 0;
			data_o5_R <= 0;
			data_o5_I <= 0;
			data_o6_R <= 0;
			data_o6_I <= 0;
			data_o7_R <= 0;
			data_o7_I <= 0;
			data_o8_R <= 0;
			data_o8_I <= 0;
			data_o9_R <= 0;
			data_o9_I <= 0;
			data_o10_R <= 0;
			data_o10_I <= 0;
			data_o11_R <= 0;
			data_o11_I <= 0;
			data_o12_R <= 0;
			data_o12_I <= 0;
			data_o13_R <= 0;
			data_o13_I <= 0;
			data_o14_R <= 0;
			data_o14_I <= 0;
			data_o15_R <= 0;
			data_o15_I <= 0;
		end
		else
			begin
			data_o0_R <= far0;
			data_o0_I <= fai0;
			data_o1_R <= fbr0;
			data_o1_I <= fbi0;
			data_o2_R <= far4;
			data_o2_I <= fai4;
			data_o3_R <= fbr4;
			data_o3_I <= fbi4;
			data_o4_R <= far2;
			data_o4_I <= fai2;
			data_o5_R <= fbr2;
			data_o5_I <= fbi2;
			data_o6_R <= far6;
			data_o6_I <= fai6;
			data_o7_R <= fbr6;
			data_o7_I <= fbi6;
			data_o8_R <= far1;
			data_o8_I <= fai1;
			data_o9_R <= fbr1;
			data_o9_I <= fbi1;
			data_o10_R <= far5;
			data_o10_I <= fai5;
			data_o11_R <= fbr5;
			data_o11_I <= fbi5;
			data_o12_R <= far3;
			data_o12_I <= fai3;
			data_o13_R <= fbr3;
			data_o13_I <= fbi3;
			data_o14_R <= far7;
			data_o14_I <= fai7;
			data_o15_R <= fbr7;
			data_o15_I <= fbi7;
			end
	end
endmodule
