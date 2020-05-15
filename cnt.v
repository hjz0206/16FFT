/*
*date:3.22 2020
*/

module cnt(
	input wire			clk,
	input wire			rst_n,
	
	output reg[3:0]		cnt
);

	always@(posedge clk or negedge rst_n)
	begin
		if(!rst_n)
			cnt <= 4'b1111;
		else begin
			cnt <= cnt + 1'b1;
			if (cnt == 4'b0111)
				cnt <= 4'b0;
		end
	end		

endmodule