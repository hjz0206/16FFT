/*
*date:3.25 2020
*/
`timescale 1ns/1ns

module fft_tb();

	reg     	clk;
	reg    		rst_n;
	reg[16:0]  	data_R[0:32'h400];
	reg[16:0]  	data_I[0:32'h400];
	reg[16:0]	data_i0_R;
	reg[16:0]	data_i0_I;
	reg[16:0]	data_i1_R;
	reg[16:0]	data_i1_I;
	
	wire[16:0]	data_o0_R;
	wire[16:0]	data_o0_I;
	wire[16:0]	data_o1_R;
	wire[16:0]	data_o1_I;
	
	reg[1:0]	flag;
	reg[4:0] 	cycle;
	reg[16:0]	out_R[0:15];
	reg[16:0]	out_I[0:15];
	integer 	cnt;
	reg[16:0]	ans_R[0:32'h400];
	reg[16:0]	ans_I[0:32'h400];

	
	initial $readmemb ("E:/16FFT/code/numR.txt", data_R);
	initial $readmemb ("E:/16FFT/code/numI.txt", data_I);
	initial $readmemb ("E:/16FFT/code/outnumR.txt", ans_R);
	initial $readmemb ("E:/16FFT/code/outnumI.txt", ans_I);
	
	
	initial begin
		clk = 1'b0;
		forever #5 clk = ~clk;
	end
	
	initial begin
            rst_n = 1'b0;
    #10     rst_n= 1'b1;
	#5		data_i0_I = data_I[0]; data_i0_R = data_R[0]; data_i1_I = data_I[1]; data_i1_R = data_R[1]; 
	#10		data_i0_I = data_I[2]; data_i0_R = data_R[2]; data_i1_I = data_I[3]; data_i1_R = data_R[3];
	#10		data_i0_I = data_I[4]; data_i0_R = data_R[4]; data_i1_I = data_I[5]; data_i1_R = data_R[5]; 
	#10		data_i0_I = data_I[6]; data_i0_R = data_R[6]; data_i1_I = data_I[7]; data_i1_R = data_R[7];
	#10		data_i0_I = data_I[8]; data_i0_R = data_R[8]; data_i1_I = data_I[9]; data_i1_R = data_R[9]; 
	#10		data_i0_I = data_I[10]; data_i0_R = data_R[10]; data_i1_I = data_I[11]; data_i1_R = data_R[11];
	#10		data_i0_I = data_I[12]; data_i0_R = data_R[12]; data_i1_I = data_I[13]; data_i1_R = data_R[13]; 
	#10		data_i0_I = data_I[14]; data_i0_R = data_R[14]; data_i1_I = data_I[15]; data_i1_R = data_R[15];
	
	#10		data_i0_I = data_I[0]; data_i0_R = data_R[0]; data_i1_I = data_I[1]; data_i1_R = data_R[1]; 
	#10		data_i0_I = data_I[2]; data_i0_R = data_R[2]; data_i1_I = data_I[3]; data_i1_R = data_R[3];
	#10		data_i0_I = data_I[4]; data_i0_R = data_R[4]; data_i1_I = data_I[5]; data_i1_R = data_R[5]; 
	#10		data_i0_I = data_I[6]; data_i0_R = data_R[6]; data_i1_I = data_I[7]; data_i1_R = data_R[7];
	#10		data_i0_I = data_I[8]; data_i0_R = data_R[8]; data_i1_I = data_I[9]; data_i1_R = data_R[9]; 
	#10		data_i0_I = data_I[10]; data_i0_R = data_R[10]; data_i1_I = data_I[11]; data_i1_R = data_R[11];
	#10		data_i0_I = data_I[12]; data_i0_R = data_R[12]; data_i1_I = data_I[13]; data_i1_R = data_R[13]; 
	#10		data_i0_I = data_I[14]; data_i0_R = data_R[14]; data_i1_I = data_I[15]; data_i1_R = data_R[15];
	
	#10		data_i0_I = 0; data_i0_R = 0; data_i1_I = 0; data_i1_R = 0; 
	end
	
	fft fft0(
		.clk(clk),
		.rst_n(rst_n),
		.data_i0_R(data_i0_R),
		.data_i0_I(data_i0_I),
		.data_i1_R(data_i1_R),
		.data_i1_I(data_i1_I),
	
		.data_o0_R(data_o0_R),
		.data_o0_I(data_o0_I),
		.data_o1_R(data_o1_R),
		.data_o1_I(data_o1_I)
	);
	

	
	always@(posedge clk or negedge rst_n)
	begin
		if(!rst_n)
			cycle <= 5'b11111;
		else begin
			cycle <= cycle + 1'b1;
		end
	end	
	
	
	always@(cycle)
    begin
		case(cycle) 
		5'b01101: begin
			out_R[0] = data_o0_R;
			out_I[0] = data_o0_I;
			out_R[1] = data_o1_R;
			out_I[1] = data_o1_I;
		end
		5'b01110: begin
			out_R[2] = data_o0_R;
			out_I[2] = data_o0_I;
			out_R[3] = data_o1_R;
			out_I[3] = data_o1_I;
		end
		5'b01111: begin
			out_R[4] = data_o0_R;
			out_I[4] = data_o0_I;
			out_R[5] = data_o1_R;
			out_I[5] = data_o1_I;
		end
		5'b10000: begin
			out_R[6] = data_o0_R;
			out_I[6] = data_o0_I;
			out_R[7] = data_o1_R;
			out_I[7] = data_o1_I;
		end
		5'b10001: begin
			out_R[8] = data_o0_R;
			out_I[8] = data_o0_I;
			out_R[9] = data_o1_R;
			out_I[9] = data_o1_I;
		end
		5'b10010: begin
			out_R[10] = data_o0_R;
			out_I[10] = data_o0_I;
			out_R[11] = data_o1_R;
			out_I[11] = data_o1_I;
		end
		5'b10011: begin
			out_R[12] = data_o0_R;
			out_I[12] = data_o0_I;
			out_R[13] = data_o1_R;
			out_I[13] = data_o1_I;
		end
		5'b10100: begin
			out_R[14] = data_o0_R;
			out_I[14] = data_o0_I;
			out_R[15] = data_o1_R;
			out_I[15] = data_o1_I;
		end
		
		endcase
	end

	
	always@(cycle) 
	begin
		flag = 2'b11;
		if(cycle >= 5'b10100) begin
			for(cnt = 0; cnt < 16; cnt = cnt + 1 ) begin
				if (out_R[cnt][16:6] == ans_R[cnt][16:6] || out_I[cnt][16:6] == ans_I[cnt][16:6])
					flag = 2'b01;
				else
					flag = 2'b0;
			end
			cnt = 1;
		end
		else 
			cnt = 0;
		$display("%d",flag);
	end
	
endmodule