/*
*date:3.22 2020
*/

module ser2par(
	input wire			clk,
	input wire			rst_n,
	input wire[3:0]		cnt,
	input wire[16:0]	data_i0_R,
	input wire[16:0]	data_i0_I,
	input wire[16:0]	data_i1_R,
	input wire[16:0]	data_i1_I,
	
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

	reg[16:0]  data[0:31];
	
	always@(cnt)
	begin
		if(!rst_n) begin
			data[0] = 17'b0;
			data[1] = 17'b0;
			data[2] = 17'b0;
			data[3] = 17'b0;
			data[4] = 17'b0;
			data[5] = 17'b0;
			data[6] = 17'b0;
			data[7] = 17'b0;
			data[8] = 17'b0;
			data[9] = 17'b0;
			data[10] = 17'b0;
			data[11] = 17'b0;
			data[12] = 17'b0;
			data[13] = 17'b0;
			data[14] = 17'b0;
			data[15] = 17'b0;
			data[16] = 17'b0;
			data[17] = 17'b0;
			data[18] = 17'b0;
			data[19] = 17'b0;
			data[20] = 17'b0;
			data[21] = 17'b0;
			data[22] = 17'b0;
			data[23] = 17'b0;
			data[24] = 17'b0;
			data[25] = 17'b0;
			data[26] = 17'b0;
			data[27] = 17'b0;
			data[28] = 17'b0;
			data[29] = 17'b0;
			data[30] = 17'b0;
			data[31] = 17'b0;
		end
		else begin
			case(cnt)
			4'b0:
			begin
				data[0] = data_i0_R;
				data[1] = data_i0_I;
				data[2] = data_i1_R;
				data[3] = data_i1_I;
				data[4] = data[4];
				data[5] = data[5];
				data[6] = data[6];
				data[7] = data[7];
				data[8] = data[8];
				data[9] = data[9];
				data[10] = data[10];
				data[11] = data[11];
				data[12] = data[12];
				data[13] = data[13];
				data[14] = data[14];
				data[15] = data[15];
				data[16] = data[16];
				data[17] = data[17];
				data[18] = data[18];
				data[19] = data[19];
				data[20] = data[20];
				data[21] = data[21];
				data[22] = data[22];
				data[23] = data[23];
				data[24] = data[24];
				data[25] = data[25];
				data[26] = data[26];
				data[27] = data[27];
				data[28] = data[28];
				data[29] = data[29];
				data[30] = data[30];
				data[31] = data[31];
			end
			4'b0001:
			begin
				data[0] = data[0];
				data[1] = data[1];
				data[2] = data[2];
				data[3] = data[3];
				data[4] = data_i0_R;
				data[5] = data_i0_I;
				data[6] = data_i1_R;
				data[7] = data_i1_I;
				data[8] = data[8];
				data[9] = data[9];
				data[10] = data[10];
				data[11] = data[11];
				data[12] = data[12];
				data[13] = data[13];
				data[14] = data[14];
				data[15] = data[15];
				data[16] = data[16];
				data[17] = data[17];
				data[18] = data[18];
				data[19] = data[19];
				data[20] = data[20];
				data[21] = data[21];
				data[22] = data[22];
				data[23] = data[23];
				data[24] = data[24];
				data[25] = data[25];
				data[26] = data[26];
				data[27] = data[27];
				data[28] = data[28];
				data[29] = data[29];
				data[30] = data[30];
				data[31] = data[31];
			end
			4'b0010:
			begin
				data[0] = data[0];
				data[1] = data[1];
				data[2] = data[2];
				data[3] = data[3];
				data[4] = data[4];
				data[5] = data[5];
				data[6] = data[6];
				data[7] = data[7];
				data[8] = data_i0_R;			
				data[9] = data_i0_I;
				data[10] = data_i1_R;
				data[11] = data_i1_I;
				data[12] = data[12];
				data[13] = data[13];
				data[14] = data[14];
				data[15] = data[15];
				data[16] = data[16];
				data[17] = data[17];
				data[18] = data[18];
				data[19] = data[19];
				data[20] = data[20];
				data[21] = data[21];
				data[22] = data[22];
				data[23] = data[23];
				data[24] = data[24];
				data[25] = data[25];
				data[26] = data[26];
				data[27] = data[27];
				data[28] = data[28];
				data[29] = data[29];
				data[30] = data[30];
				data[31] = data[31];
			end
			4'b0011:
			begin
				data[0] = data[0];
				data[1] = data[1];
				data[2] = data[2];
				data[3] = data[3];
				data[4] = data[4];
				data[5] = data[5];
				data[6] = data[6];
				data[7] = data[7];
				data[8] = data[8];
				data[9] = data[9];
				data[10] = data[10];
				data[11] = data[11];
				data[12] = data_i0_R;			
				data[13] = data_i0_I;
				data[14] = data_i1_R;
				data[15] = data_i1_I;
				data[16] = data[16];
				data[17] = data[17];
				data[18] = data[18];
				data[19] = data[19];
				data[20] = data[20];
				data[21] = data[21];
				data[22] = data[22];
				data[23] = data[23];
				data[24] = data[24];
				data[25] = data[25];
				data[26] = data[26];
				data[27] = data[27];
				data[28] = data[28];
				data[29] = data[29];
				data[30] = data[30];
				data[31] = data[31];
			end
			4'b0100:
			begin
				data[0] = data[0];
				data[1] = data[1];
				data[2] = data[2];
				data[3] = data[3];
				data[4] = data[4];
				data[5] = data[5];
				data[6] = data[6];
				data[7] = data[7];
				data[8] = data[8];
				data[9] = data[9];
				data[10] = data[10];
				data[11] = data[11];
				data[12] = data[12];
				data[13] = data[13];
				data[14] = data[14];
				data[15] = data[15];
				data[16] = data_i0_R;
				data[17] = data_i0_I;
				data[18] = data_i1_R;
				data[19] = data_i1_I;
				data[20] = data[20];
				data[21] = data[21];
				data[22] = data[22];
				data[23] = data[23];
				data[24] = data[24];
				data[25] = data[25];
				data[26] = data[26];
				data[27] = data[27];
				data[28] = data[28];
				data[29] = data[29];
				data[30] = data[30];
				data[31] = data[31];
			end
			4'b0101:
			begin
				data[0] = data[0];
				data[1] = data[1];
				data[2] = data[2];
				data[3] = data[3];
				data[4] = data[4];
				data[5] = data[5];
				data[6] = data[6];
				data[7] = data[7];
				data[8] = data[8];
				data[9] = data[9];
				data[10] = data[10];
				data[11] = data[11];
				data[12] = data[12];
				data[13] = data[13];
				data[14] = data[14];
				data[15] = data[15];
				data[16] = data[16];
				data[17] = data[17];
				data[18] = data[18];
				data[19] = data[19];
				data[20] = data_i0_R;
				data[21] = data_i0_I;
				data[22] = data_i1_R;
				data[23] = data_i1_I;
				data[24] = data[24];
				data[25] = data[25];
				data[26] = data[26];
				data[27] = data[27];
				data[28] = data[28];
				data[29] = data[29];
				data[30] = data[30];
				data[31] = data[31];
			end
			4'b0110:
			begin
				data[0] = data[0];
				data[1] = data[1];
				data[2] = data[2];
				data[3] = data[3];
				data[4] = data[4];
				data[5] = data[5];
				data[6] = data[6];
				data[7] = data[7];
				data[8] = data[8];
				data[9] = data[9];
				data[10] = data[10];
				data[11] = data[11];
				data[12] = data[12];
				data[13] = data[13];
				data[14] = data[14];
				data[15] = data[15];
				data[16] = data[16];
				data[17] = data[17];
				data[18] = data[18];
				data[19] = data[19];
				data[20] = data[20];
				data[21] = data[21];
				data[22] = data[22];
				data[23] = data[23];
				data[24] = data_i0_R;
				data[25] = data_i0_I;
				data[26] = data_i1_R;
				data[27] = data_i1_I;	
				data[28] = data[28];
				data[29] = data[29];
				data[30] = data[30];
				data[31] = data[31];		
			end
			4'b0111:
			begin
				data[0] = data[0];
				data[1] = data[1];
				data[2] = data[2];
				data[3] = data[3];
				data[4] = data[4];
				data[5] = data[5];
				data[6] = data[6];
				data[7] = data[7];
				data[8] = data[8];
				data[9] = data[9];
				data[10] = data[10];
				data[11] = data[11];
				data[12] = data[12];
				data[13] = data[13];
				data[14] = data[14];
				data[15] = data[15];
				data[16] = data[16];
				data[17] = data[17];
				data[18] = data[18];
				data[19] = data[19];
				data[20] = data[20];
				data[21] = data[21];
				data[22] = data[22];
				data[23] = data[23];
				data[24] = data[24];
				data[25] = data[25];
				data[26] = data[26];
				data[27] = data[27];
				data[28] = data_i0_R;
				data[29] = data_i0_I;
				data[30] = data_i1_R;
				data[31] = data_i1_I;			
			end
			default:
			begin
				data[0] = 17'b0;
				data[1] = 17'b0;
				data[2] = 17'b0;
				data[3] = 17'b0;
				data[4] = 17'b0;
				data[5] = 17'b0;
				data[6] = 17'b0;
				data[7] = 17'b0;
				data[8] = 17'b0;
				data[9] = 17'b0;
				data[10] = 17'b0;
				data[11] = 17'b0;
				data[12] = 17'b0;
				data[13] = 17'b0;
				data[14] = 17'b0;
				data[15] = 17'b0;
				data[16] = 17'b0;
				data[17] = 17'b0;
				data[18] = 17'b0;
				data[19] = 17'b0;
				data[20] = 17'b0;
				data[21] = 17'b0;
				data[22] = 17'b0;
				data[23] = 17'b0;
				data[24] = 17'b0;
				data[25] = 17'b0;
				data[26] = 17'b0;
				data[27] = 17'b0;
				data[28] = 17'b0;
				data[29] = 17'b0;
				data[30] = 17'b0;
				data[31] = 17'b0;
			end
			endcase
		end
	end
	
	/*always@(posedge clk or negedge rst_n)
	begin
		if(!rst_n) begin
			data[0] <= 17'b0;
			data[1] <= 17'b0;
			data[2] <= 17'b0;
			data[3] <= 17'b0;
			data[4] <= 17'b0;
			data[5] <= 17'b0;
			data[6] <= 17'b0;
			data[7] <= 17'b0;
			data[8] <= 17'b0;
			data[9] <= 17'b0;
			data[10] <= 17'b0;
			data[11] <= 17'b0;
			data[12] <= 17'b0;
			data[13] <= 17'b0;
			data[14] <= 17'b0;
			data[15] <= 17'b0;
			data[16] <= 17'b0;
			data[17] <= 17'b0;
			data[18] <= 17'b0;
			data[19] <= 17'b0;
			data[20] <= 17'b0;
			data[21] <= 17'b0;
			data[22] <= 17'b0;
			data[23] <= 17'b0;
			data[24] <= 17'b0;
			data[25] <= 17'b0;
			data[26] <= 17'b0;
			data[27] <= 17'b0;
			data[28] <= 17'b0;
			data[29] <= 17'b0;
			data[30] <= 17'b0;
			data[31] <= 17'b0;
		end
		else begin
			case(cnt)
			4'b0:
			begin
				data[0] <= data_i0_R;
				data[1] <= data_i0_I;
				data[2] <= data_i1_R;
				data[3] <= data_i1_I;
				data[4] <= data[4];
				data[5] <= data[5];
				data[6] <= data[6];
				data[7] <= data[7];
				data[8] <= data[8];
				data[9] <= data[9];
				data[10] <= data[10];
				data[11] <= data[11];
				data[12] <= data[12];
				data[13] <= data[13];
				data[14] <= data[14];
				data[15] <= data[15];
				data[16] <= data[16];
				data[17] <= data[17];
				data[18] <= data[18];
				data[19] <= data[19];
				data[20] <= data[20];
				data[21] <= data[21];
				data[22] <= data[22];
				data[23] <= data[23];
				data[24] <= data[24];
				data[25] <= data[25];
				data[26] <= data[26];
				data[27] <= data[27];
				data[28] <= data[28];
				data[29] <= data[29];
				data[30] <= data[30];
				data[31] <= data[31];
			end
			4'b0001:
			begin
				data[0] <= data[0];
				data[1] <= data[1];
				data[2] <= data[2];
				data[3] <= data[3];
				data[4] <= data_i0_R;
				data[5] <= data_i0_I;
				data[6] <= data_i1_R;
				data[7] <= data_i1_I;
				data[8] <= data[8];
				data[9] <= data[9];
				data[10] <= data[10];
				data[11] <= data[11];
				data[12] <= data[12];
				data[13] <= data[13];
				data[14] <= data[14];
				data[15] <= data[15];
				data[16] <= data[16];
				data[17] <= data[17];
				data[18] <= data[18];
				data[19] <= data[19];
				data[20] <= data[20];
				data[21] <= data[21];
				data[22] <= data[22];
				data[23] <= data[23];
				data[24] <= data[24];
				data[25] <= data[25];
				data[26] <= data[26];
				data[27] <= data[27];
				data[28] <= data[28];
				data[29] <= data[29];
				data[30] <= data[30];
				data[31] <= data[31];
			end
			4'b0010:
			begin
				data[0] <= data[0];
				data[1] <= data[1];
				data[2] <= data[2];
				data[3] <= data[3];
				data[4] <= data[4];
				data[5] <= data[5];
				data[6] <= data[6];
				data[7] <= data[7];
				data[8] <= data_i0_R;			
				data[9] <= data_i0_I;
				data[10] <= data_i1_R;
				data[11] <= data_i1_I;
				data[12] <= data[12];
				data[13] <= data[13];
				data[14] <= data[14];
				data[15] <= data[15];
				data[16] <= data[16];
				data[17] <= data[17];
				data[18] <= data[18];
				data[19] <= data[19];
				data[20] <= data[20];
				data[21] <= data[21];
				data[22] <= data[22];
				data[23] <= data[23];
				data[24] <= data[24];
				data[25] <= data[25];
				data[26] <= data[26];
				data[27] <= data[27];
				data[28] <= data[28];
				data[29] <= data[29];
				data[30] <= data[30];
				data[31] <= data[31];
			end
			4'b0011:
			begin
				data[0] <= data[0];
				data[1] <= data[1];
				data[2] <= data[2];
				data[3] <= data[3];
				data[4] <= data[4];
				data[5] <= data[5];
				data[6] <= data[6];
				data[7] <= data[7];
				data[8] <= data[8];
				data[9] <= data[9];
				data[10] <= data[10];
				data[11] <= data[11];
				data[12] <= data_i0_R;			
				data[13] <= data_i0_I;
				data[14] <= data_i1_R;
				data[15] <= data_i1_I;
				data[16] <= data[16];
				data[17] <= data[17];
				data[18] <= data[18];
				data[19] <= data[19];
				data[20] <= data[20];
				data[21] <= data[21];
				data[22] <= data[22];
				data[23] <= data[23];
				data[24] <= data[24];
				data[25] <= data[25];
				data[26] <= data[26];
				data[27] <= data[27];
				data[28] <= data[28];
				data[29] <= data[29];
				data[30] <= data[30];
				data[31] <= data[31];
			end
			4'b0100:
			begin
				data[0] <= data[0];
				data[1] <= data[1];
				data[2] <= data[2];
				data[3] <= data[3];
				data[4] <= data[4];
				data[5] <= data[5];
				data[6] <= data[6];
				data[7] <= data[7];
				data[8] <= data[8];
				data[9] <= data[9];
				data[10] <= data[10];
				data[11] <= data[11];
				data[12] <= data[12];
				data[13] <= data[13];
				data[14] <= data[14];
				data[15] <= data[15];
				data[16] <= data_i0_R;
				data[17] <= data_i0_I;
				data[18] <= data_i1_R;
				data[19] <= data_i1_I;
				data[20] <= data[20];
				data[21] <= data[21];
				data[22] <= data[22];
				data[23] <= data[23];
				data[24] <= data[24];
				data[25] <= data[25];
				data[26] <= data[26];
				data[27] <= data[27];
				data[28] <= data[28];
				data[29] <= data[29];
				data[30] <= data[30];
				data[31] <= data[31];
			end
			4'b0101:
			begin
				data[0] <= data[0];
				data[1] <= data[1];
				data[2] <= data[2];
				data[3] <= data[3];
				data[4] <= data[4];
				data[5] <= data[5];
				data[6] <= data[6];
				data[7] <= data[7];
				data[8] <= data[8];
				data[9] <= data[9];
				data[10] <= data[10];
				data[11] <= data[11];
				data[12] <= data[12];
				data[13] <= data[13];
				data[14] <= data[14];
				data[15] <= data[15];
				data[16] <= data[16];
				data[17] <= data[17];
				data[18] <= data[18];
				data[19] <= data[19];
				data[20] <= data_i0_R;
				data[21] <= data_i0_I;
				data[22] <= data_i1_R;
				data[23] <= data_i1_I;
				data[24] <= data[24];
				data[25] <= data[25];
				data[26] <= data[26];
				data[27] <= data[27];
				data[28] <= data[28];
				data[29] <= data[29];
				data[30] <= data[30];
				data[31] <= data[31];
			end
			4'b0110:
			begin
				data[0] <= data[0];
				data[1] <= data[1];
				data[2] <= data[2];
				data[3] <= data[3];
				data[4] <= data[4];
				data[5] <= data[5];
				data[6] <= data[6];
				data[7] <= data[7];
				data[8] <= data[8];
				data[9] <= data[9];
				data[10] <= data[10];
				data[11] <= data[11];
				data[12] <= data[12];
				data[13] <= data[13];
				data[14] <= data[14];
				data[15] <= data[15];
				data[16] <= data[16];
				data[17] <= data[17];
				data[18] <= data[18];
				data[19] <= data[19];
				data[20] <= data[20];
				data[21] <= data[21];
				data[22] <= data[22];
				data[23] <= data[23];
				data[24] <= data_i0_R;
				data[25] <= data_i0_I;
				data[26] <= data_i1_R;
				data[27] <= data_i1_I;	
				data[28] <= data[28];
				data[29] <= data[29];
				data[30] <= data[30];
				data[31] <= data[31];		
			end
			4'b0111:
			begin
				data[0] <= data[0];
				data[1] <= data[1];
				data[2] <= data[2];
				data[3] <= data[3];
				data[4] <= data[4];
				data[5] <= data[5];
				data[6] <= data[6];
				data[7] <= data[7];
				data[8] <= data[8];
				data[9] <= data[9];
				data[10] <= data[10];
				data[11] <= data[11];
				data[12] <= data[12];
				data[13] <= data[13];
				data[14] <= data[14];
				data[15] <= data[15];
				data[16] <= data[16];
				data[17] <= data[17];
				data[18] <= data[18];
				data[19] <= data[19];
				data[20] <= data[20];
				data[21] <= data[21];
				data[22] <= data[22];
				data[23] <= data[23];
				data[24] <= data[24];
				data[25] <= data[25];
				data[26] <= data[26];
				data[27] <= data[27];
				data[28] <= data_i0_R;
				data[29] <= data_i0_I;
				data[30] <= data_i1_R;
				data[31] <= data_i1_I;			
			end
			default:
			begin
				data[0] <= 17'b0;
				data[1] <= 17'b0;
				data[2] <= 17'b0;
				data[3] <= 17'b0;
				data[4] <= 17'b0;
				data[5] <= 17'b0;
				data[6] <= 17'b0;
				data[7] <= 17'b0;
				data[8] <= 17'b0;
				data[9] <= 17'b0;
				data[10] <= 17'b0;
				data[11] <= 17'b0;
				data[12] <= 17'b0;
				data[13] <= 17'b0;
				data[14] <= 17'b0;
				data[15] <= 17'b0;
				data[16] <= 17'b0;
				data[17] <= 17'b0;
				data[18] <= 17'b0;
				data[19] <= 17'b0;
				data[20] <= 17'b0;
				data[21] <= 17'b0;
				data[22] <= 17'b0;
				data[23] <= 17'b0;
				data[24] <= 17'b0;
				data[25] <= 17'b0;
				data[26] <= 17'b0;
				data[27] <= 17'b0;
				data[28] <= 17'b0;
				data[29] <= 17'b0;
				data[30] <= 17'b0;
				data[31] <= 17'b0;
			end
			endcase
		end
	end*/
	
	always@(posedge clk or negedge rst_n)
	begin
		if(!rst_n) begin
			data_o0_R <= 17'b0;
			data_o0_I <= 17'b0;
			data_o1_R <= 17'b0;
			data_o1_I <= 17'b0;
			data_o2_R <= 17'b0;
			data_o2_I <= 17'b0;
			data_o3_R <= 17'b0;
			data_o3_I <= 17'b0;
			data_o4_R <= 17'b0;
			data_o4_I <= 17'b0;
			data_o5_R <= 17'b0;
			data_o5_I <= 17'b0;
			data_o6_R <= 17'b0;
			data_o6_I <= 17'b0;
			data_o7_R <= 17'b0;
			data_o7_I <= 17'b0;
			data_o8_R <= 17'b0;
			data_o8_I <= 17'b0;
			data_o9_R <= 17'b0;
			data_o9_I <= 17'b0;
			data_o10_R <= 17'b0;
			data_o10_I <= 17'b0;
			data_o11_R <= 17'b0;
			data_o11_I <= 17'b0;
			data_o12_R <= 17'b0;
			data_o12_I <= 17'b0;
			data_o13_R <= 17'b0;
			data_o13_I <= 17'b0;
			data_o14_R <= 17'b0;
			data_o14_I <= 17'b0;
			data_o15_R <= 17'b0;
			data_o15_I <= 17'b0;
		end
		else if(cnt != 4'b0111) begin
			data_o0_R <= 17'b0;
			data_o0_I <= 17'b0;
			data_o1_R <= 17'b0;
			data_o1_I <= 17'b0;
			data_o2_R <= 17'b0;
			data_o2_I <= 17'b0;
			data_o3_R <= 17'b0;
			data_o3_I <= 17'b0;
			data_o4_R <= 17'b0;
			data_o4_I <= 17'b0;
			data_o5_R <= 17'b0;
			data_o5_I <= 17'b0;
			data_o6_R <= 17'b0;
			data_o6_I <= 17'b0;
			data_o7_R <= 17'b0;
			data_o7_I <= 17'b0;
			data_o8_R <= 17'b0;
			data_o8_I <= 17'b0;
			data_o9_R <= 17'b0;
			data_o9_I <= 17'b0;
			data_o10_R <= 17'b0;
			data_o10_I <= 17'b0;
			data_o11_R <= 17'b0;
			data_o11_I <= 17'b0;
			data_o12_R <= 17'b0;
			data_o12_I <= 17'b0;
			data_o13_R <= 17'b0;
			data_o13_I <= 17'b0;
			data_o14_R <= 17'b0;
			data_o14_I <= 17'b0;
			data_o15_R <= 17'b0;
			data_o15_I <= 17'b0;
		end
		else begin
			data_o0_R <= data[0];
			data_o0_I <= data[1];
			data_o1_R <= data[2];
			data_o1_I <= data[3];
			data_o2_R <= data[4];
			data_o2_I <= data[5];
			data_o3_R <= data[6];
			data_o3_I <= data[7];
			data_o4_R <= data[8];
			data_o4_I <= data[9];
			data_o5_R <= data[10];
			data_o5_I <= data[11];
			data_o6_R <= data[12];
			data_o6_I <= data[13];
			data_o7_R <= data[14];
			data_o7_I <= data[15];
			data_o8_R <= data[16];
			data_o8_I <= data[17];
			data_o9_R <= data[18];
			data_o9_I <= data[19];
			data_o10_R <= data[20];
			data_o10_I <= data[21];
			data_o11_R <= data[22];
			data_o11_I <= data[23];
			data_o12_R <= data[24];
			data_o12_I <= data[25];
			data_o13_R <= data[26];
			data_o13_I <= data[27];
			data_o14_R <= data[28];
			data_o14_I <= data[29];
			data_o15_R <= data[30];
			data_o15_I <= data[31];
		end
	end
	
endmodule