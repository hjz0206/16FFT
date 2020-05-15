/*
*date:3.23 2020
*/
module mul(
	input wire signed[7:0]    mul1,
	input wire signed[16:0]   mul2,
	
	output reg signed[16:0]  res
);

always@(*)
begin
	case (mul1)
	8'b1:
		res = mul2;
	8'b11101100:
	begin
		res = (mul2>>>1)+(mul2>>>2)+(mul2>>>3)+(mul2>>>5)+(mul2>>>6);
	end
	8'b01100001:
	begin
		res = (mul2>>>2)+(mul2>>>3)+(mul2>>>8);
	end
	8'b10110101:
	begin
		res = (mul2>>>1)+(mul2>>>3)+(mul2>>>4)+(mul2>>>6)+(mul2>>>8);
	end
	default
		res = mul2;
	endcase
end


endmodule