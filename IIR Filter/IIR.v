`define IDLE        1'd0
`define Operation   1'd1

module IIR(clk,rst, load,DIn,RAddr,data_done,WEN,Yn,WAddr,Finish);
	parameter n=16;
	parameter m=20;
	
	input clk,rst;
	input data_done;
	input signed[n-1:0]DIn;
	
	output  WEN,load;
	output Finish;
	output [n-1:0]Yn;
	output [m-1:0]RAddr;
	output [m-1:0]WAddr;

	reg state, next_state;
	reg Finish, next_Finish;
	reg load,WEN;
	reg signed [24:0] rlt;
	reg signed [24:0] s       [5:0];
	reg signed [24:0] next_s  [5:0];
	reg signed [24:0] s_prime [4:0];
	reg signed [24:0] next_s_prime [4:0];
	reg [19:0] RAddr, WAddr, next_RAddr, next_WAddr;
	reg signed [15:0]Yn;

//DFF Logic
	always @(negedge clk or posedge rst) begin
		if (rst) begin
			state <= `IDLE;
			s[0]  <= 25'd0;
			s[1]  <= 25'd0;
			s[2]  <= 25'd0;
			s[3]  <= 25'd0;
			s[4]  <= 25'd0;
			s[5]  <= 25'd0;
			s_prime[0] <= 25'd0;
			s_prime[1] <= 25'd0;
			s_prime[2] <= 25'd0;
			s_prime[3] <= 25'd0;
			s_prime[4] <= 25'd0;
			RAddr  <= 20'd0;
			WAddr  <= 20'd0;
			Finish <= 1'd0;
		end
		else begin
			state <= next_state;
			s[0]  <= next_s[0];
			s[1]  <= next_s[1];
			s[2]  <= next_s[2];
			s[3]  <= next_s[3];
			s[4]  <= next_s[4];
			s[5]  <= next_s[5];
			s_prime[0]  <= next_s_prime[0];
			s_prime[1]  <= next_s_prime[1];
			s_prime[2]  <= next_s_prime[2];
			s_prime[3]  <= next_s_prime[3];
			s_prime[4]  <= next_s_prime[4];
			RAddr  <= next_RAddr;
			WAddr  <= next_WAddr;
			Finish <= next_Finish;
		end
	end

//Next State Logic
	always @(*) begin
		next_state = state;

		case(state)
			`IDLE:begin
				next_state = `Operation;
			end

		endcase
	end

//Output Logic
	always @(*) begin
		next_Finish = Finish;
		next_RAddr = RAddr;
		next_WAddr = WAddr;

		case(state)
			`Operation:begin
				load = 1'd1;
				WEN  = 1'd1;
				Yn = {rlt[24], rlt[21:7]};
				next_RAddr = RAddr + 20'd1;
				next_WAddr = WAddr + 20'd1;
				next_Finish = (data_done == 1'd1)? 1'd1 : Finish;
			end
		endcase
	end

//OP Logic
	always @(*) begin
		next_s[0] = s[0];
		next_s[1] = s[1];
		next_s[2] = s[2];
		next_s[3] = s[3];
		next_s[4] = s[4];
		next_s[5] = s[5];
		next_s_prime[0] = s_prime[0];
		next_s_prime[1] = s_prime[1];
		next_s_prime[2] = s_prime[2];
		next_s_prime[3] = s_prime[3];
		next_s_prime[4] = s_prime[4];

		case(state)
			`Operation:begin
				s[5] = {{2{DIn[15]}}, DIn, {7{1'b0}}};

				rlt  = ((s[0]>>>16)+(s[0]>>>13)+(s[0]>>>12)+(s[0]>>>11)+(s[0]>>>10)+(s[0]>>>9)+(s[0]>>>6))+
					   ((s[1]>>>16)+(s[1]>>>15)+(s[1]>>>14)+(s[1]>>>11)+(s[1]>>>10)+(s[1]>>>8)+(s[1]>>>6))+
					   ((s[2]>>>16)+(s[2]>>>15)+(s[2]>>>14)+(s[2]>>>11)+(s[2]>>>9)+(s[2]>>>8)+(s[2]>>>5))+
					   ((s[3]>>>16)+(s[3]>>>15)+(s[3]>>>14)+(s[3]>>>11)+(s[3]>>>9)+(s[3]>>>8)+(s[3]>>>5))+
					   ((s[4]>>>16)+(s[4]>>>15)+(s[4]>>>14)+(s[4]>>>11)+(s[4]>>>10)+(s[4]>>>8)+(s[4]>>>6))+
					   ((s[5]>>>16)+(s[5]>>>13)+(s[5]>>>12)+(s[5]>>>11)+(s[5]>>>10)+(s[5]>>>9)+(s[5]>>>6))+
					   ((s_prime[0]>>>14)+(s_prime[0]>>>13)+(s_prime[0]>>>11)+(s_prime[0]>>>8)+(s_prime[0]>>>3)+(s_prime[0]>>>2))-
					   ((s_prime[1]>>>16)+(s_prime[1]>>>13)+(s_prime[1]>>>12)+(s_prime[1]>>>11)+(s_prime[1]>>>10)+(s_prime[1]>>>8)+(s_prime[1]>>>7)+(s_prime[1]>>>6)+(s_prime[1]>>>3)+(s_prime[1]>>>1)+s_prime[1])+
					   ((s_prime[2]>>>8)+(s_prime[2]>>>7)+(s_prime[2]>>>6)+(s_prime[2]>>>5)+(s_prime[2]>>>4)+(s_prime[2]>>>2)+s_prime[2]+(s_prime[2]<<<1))-
					   ((s_prime[3]>>>12)+(s_prime[3]>>>10)+(s_prime[3]>>>9)+(s_prime[3]>>>7)+(s_prime[3]<<<2))+
					   ((s_prime[4]>>>14)+(s_prime[4]>>>13)+(s_prime[4]>>>7)+(s_prime[4]>>>2)+(s_prime[4]>>>1)+(s_prime[4]<<<1));

				next_s[0] = s[1];
				next_s[1] = s[2];
				next_s[2] = s[3];
				next_s[3] = s[4];
				next_s[4] = s[5];
				next_s_prime[0] = s_prime[1];
				next_s_prime[1] = s_prime[2];
				next_s_prime[2] = s_prime[3];
				next_s_prime[3] = s_prime[4];
				next_s_prime[4] = {{2{Yn[15]}}, Yn, {7{1'b0}}};
			end
		endcase
	end

endmodule
