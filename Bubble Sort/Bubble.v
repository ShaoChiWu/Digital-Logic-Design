`define IDLE 3'd0
`define s0   3'd1
`define s1   3'd2
`define s2	 3'd3
`define s3   3'd4
`define s4   3'd5

module Bubble(clk, rst, Start, RData, RAddr, WAddr, WData, Wen, Finish); 
	
	parameter dataWidth = 32;
	parameter addrWidth = 10;

	input clk, rst, Start;
	input signed [dataWidth-1:0] RData;

	output [addrWidth-1:0] RAddr;
	output [addrWidth-1:0] WAddr;
	output signed [dataWidth-1:0] WData;
	output  Wen, Finish;

	reg [addrWidth-1:0] RAddr/*,next_RAddr*/;
	reg [addrWidth-1:0] WAddr/*,next_WAddr*/;
	reg [addrWidth-1:0] Addr, next_Addr;
	reg [addrWidth-1:0] size, next_size;
	reg signed [dataWidth-1:0] WData,next_WData;
	reg signed [dataWidth-1:0] temp1, temp2;
	reg signed [dataWidth-1:0] next_temp1/*, next_temp2*/;
	reg [2:0] state, next_state;
	reg next_Wen, Wen, next_Finish, Finish, next_done, done, swap, next_swap;
	


//DFF Logic
	always @(negedge clk or posedge rst) begin
		if (rst) begin
			/*RAddr <= 10'd1023;
			WAddr <= 10'd0;*/
			Addr  <= 10'd0;
			state <= 3'd0;
			temp1 <= 32'd0;
			/*temp2 <= 32'd0;*/
			Finish <= 1'd0;
			WData <= 32'd0;
			done <= 1'd0;
			Wen <= 1'd0;
			size <= 10'd0;
			swap <= 1'd0;
		end
		else begin
			/*RAddr <= next_RAddr;
			WAddr <= next_WAddr;*/
			Addr  <= next_Addr;
			state <= next_state;
			temp1 <= next_temp1;
			/*temp2 <= next_temp2;*/
			Finish<= next_Finish;
			WData <= next_WData;
			done <= next_done;
			Wen <= next_Wen;
			size <= next_size;
			swap <= next_swap;
		end
	end

//output & state Logic
	always @(*) begin
		/*next_RAddr = RAddr;
		next_WAddr = WAddr;*/
		next_Addr  = Addr; 
		next_state = state;
		next_temp1 = temp1;
		RAddr = Addr;
		WAddr = Addr;
		next_WData = WData;
		next_done = done;
		next_Wen = Wen;
		next_size = size;
		next_swap = swap;
		next_Finish = Finish;

		case(state)

			`IDLE:begin
				next_state = (Start==1'd1)? `s0 : `IDLE;
				next_Addr = 10'd1023;
			end

			`s0:begin
				next_size = RData;
				next_Addr = 10'd0;
				next_state = `s1;
			end

			`s1:begin
				next_temp1 = RData;
				next_Addr = Addr + 10'd1;
				next_state = `s2;
			end

			`s2:begin
				temp2 = RData;
				next_Addr = Addr-20'd1;
				next_state = `s3;
				next_Wen = 1'd1;
				next_swap = (temp1 > temp2)? 1'd1 : swap;

				if (temp1 > temp2) begin
					next_temp1 = temp1;
					next_WData = temp2;
				end
				else begin
					next_temp1 = temp2;
					next_WData = temp1;
				end
			end


			`s3:begin
				next_Addr = (Addr == size-10'd2)? Addr + 10'd1 : Addr + 10'd2;
				next_state = (Addr == size-10'd2)? `s4 : `s2;
				next_Wen = (Addr == size-10'd2)? 1'd1 : 1'd0;
				next_size = (Addr == size-10'd2)? size - 10'd1 : size;
				next_WData = (Addr == size-10'd2)? temp1  : WData;
			end

			`s4:begin
				next_Wen = 1'd0;
				next_state = `s1;
				next_Addr = 10'd0;
				next_swap = 1'd0;
				next_Finish = (swap == 1'd0||size == 10'd1)? 1'd1 : 1'd0;
			end
		endcase
	end

endmodule
