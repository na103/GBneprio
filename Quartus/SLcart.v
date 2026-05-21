/*
 Gameboy MBC5/MBC1 Hybrid - 2MB ROM

*/

module SLcart (
reset, 
clock,
inputAddress, inputData, inputCE, inputWR, inputRD,
highAddress);

input reset;
input clock;
input [3:0] inputAddress; 
input [6:0] inputData; 
input inputCE;
input inputRD;
input inputWR;

output [6:0] highAddress; 
reg [6:0] highAddress;

reg [6:0] romBank; 

reg mbc1Detect303FOn;
reg mbc1Detected607F;
reg mbc3or5Locked;


always @ (reset or clock or inputCE or inputRD or inputWR) begin
	if (!reset) begin
		highAddress <= 7'b0;
		romBank <= 7'b1;
		mbc1Detect303FOn <= 1'b0;
		mbc1Detected607F <= 1'b0;
		mbc3or5Locked <= 1'b0;
	end
	else begin

		if (inputAddress <= 4'd7 && (!inputRD || !inputWR)) begin
			if (inputAddress <= 4'd3) begin 
				highAddress <= 7'b0; 
			end
			else begin
				highAddress <= (romBank << 1); 
			end
		end
		

		if (((inputAddress == 4'd2) || inputAddress == 4'd3 && mbc1Detect303FOn) && !inputWR && inputRD && inputCE) begin
			if (inputData == 7'd0) begin
				romBank <= 1'b1;
				mbc1Detect303FOn <= 1'b1;
			end
			else begin
				if (inputData >= 7'd32) begin
					mbc3or5Locked <= 1'b1;
				end
				
				romBank <= inputData;
			end
		end
		

		if ((inputAddress == 4'd6 || inputAddress == 4'd7) && !inputWR && inputRD && inputCE) begin
			mbc1Detected607F <= 1'b1;
		end
	end
end


endmodule
