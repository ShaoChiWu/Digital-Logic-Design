//Gate Level Desciption

module fop_G(in,out);

	input [3:0]in;
	output out;

	wire nor0, nor1;
	wire not_a;
	wire xor0;
	wire and0;
    wire or0;	

	nor(nor0,in[3],in[2]);
	nor(nor1,in[2],in[1],in[0]);
	xor(xor0,in[1],in[2]);
	not(not_a,in[3]);
	or(or0,not_a,xor0);
	and(and0,or0,in[0]);
	or(out,nor0,nor1,and0);

endmodule


//Dataflow Description

module fop_D(in,out);

	input [3:0]in;
	output out;

	assign out = (!in[2]&!in[1]&!in[0])|(!in[3]&!in[2])|(in[0]&(!in[3]|in[2]^in[1]));

endmodule

//Bahavior Description

module fop_B(in,out);
	
	input [3:0]in;
	output out;	
	reg out;

	always @(*)begin
		out = 1'b0;
		case(in)
			0,1,2,3,5,7,8,11,13:begin
				out = 1'b1;
			end
		endcase
	end

endmodule


