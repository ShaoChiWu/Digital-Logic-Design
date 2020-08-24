//Testbench
`timescale 1ns/1ps
module fop_tb;
	
	wire out_G,out_D,out_B;
	reg [3:0]in;

	integer i;

	initial begin
		in=0;
		for(i=0;i<16;i=i+1)begin
		#5
		$display("time=%4d,in=%b,out_G=%b,out_D=%b,out_B=%b",$time,in,out_G,out_D,out_B);
		if((out_G==out_B==out_D==1)&&(in==0||in==1||in==2||in==3||in==5||in==7||in==8||in==11||in==13))
		   	begin	
				$display("Good job!!!");
			end
		else if((out_G==out_B==out_D==0)&&(in==4||in==6||in==9||in==10||in==12||in==14||in==15))	
			begin	
				$display("Good job!!!");
			end		
		else
			begin	
				$display("Wrong!!!");
			end
 		in=in+1;
		end
	$finish;
end

fop_G fg
(
	.in(in),
	.out(out_G)
);
fop_D fd
(
	.in(in),
	.out(out_D)
);
fop_B fb
(
	.in(in),
	.out(out_B)
);

































































endmodule



