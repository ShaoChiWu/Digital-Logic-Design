`define SDFFILE   "./Bubble.sdf"
`define End_CYCLE  10000

`define testcase1  "./testcase1.dat" 
`define answer1  "./answer1.dat"

`define testcase2  "./testcase2.dat" 
`define answer2  "./answer2.dat"

module Bubble_tb;
	
	parameter cyc = 12;
	parameter dataWidth = 32;
	parameter addrWidth = 10;

	// #pattern
	parameter PAT = 1024;
	reg [dataWidth-1:0]ansRAM[0:PAT];

	reg clk, rst, Start;
	
	wire [dataWidth-1:0] RData;
	wire [addrWidth-1:0] RAddr;
	wire [addrWidth-1:0] WAddr;
	wire [dataWidth-1:0] WData;
	wire Wen, Finish;

	integer f, i;
	reg check;

	SRAM bubbleMem(
		.clk(clk), 
		.Wen(Wen), 
		.WData(WData), 
		.WAddr(WAddr), 
		.RAddr(RAddr), 
		.RData(RData)
	);

	Bubble bubble(
		.clk(clk),
		.rst(rst), 
		.Start(Start), 
		.RData(RData), 
		.RAddr(RAddr), 
		.WAddr(WAddr),  
		.WData(WData),
		.Wen(Wen),
		.Finish(Finish)
	);

	always #(cyc/2) clk = ~clk;
	
	initial begin
		`ifdef SDF
			$sdf_annotate(`SDFFILE, bubble);
			$fsdbDumpfile("Bubble_syn.fsdb");
		`else
			$fsdbDumpfile("Bubble.fsdb");
		`endif
		$fsdbDumpvars;
	end

	initial begin

		`ifdef TEST1
			$readmemb (`answer1, ansRAM);
		`endif
		
		`ifdef TEST2
			$readmemb (`answer2, ansRAM);
		`endif

	end

	initial begin

		rst = 1'b0;
		clk = 1'b0;

		Start = 1'b0;

		@(posedge clk)  rst = 1'b1; 
		#(cyc*2);    rst = 1'b0; 
		
		Start = 1'b1;
		
		@(posedge Finish) 

		check = 1;
		
		for (i=0; i <PAT ; i=i+1) begin
				

			if (ansRAM[i] == bubbleMem.mem[i]) begin
				//$display("index %2d correct answer\n", i);
				
			end else begin

				$display("index %2d wrong answer: %5d, correct answer: %5d\n", i, $signed(bubbleMem.mem[i]), $signed(ansRAM[i]));
				check = 0;
			end
					
						
	  				
		end

		if(check)begin
			$display("\nCongratulations All PASS !!! \n\n");
		end

		`ifdef TEST1
			f = $fopen("answer1.txt","w");
		`endif
		
		`ifdef TEST2
			f = $fopen("answer2.txt","w");
		`endif

		
		$fwrite(f, "%d\n", check);

		$finish;
	end

	initial  begin
		#`End_CYCLE ;
		$display("-----------------------------------------------------\n");
		$display("    Error!!! Somethings' wrong with your code ... !! \n");
		$display("-------------------------FAIL------------------------\n");
		$display("-----------------------------------------------------\n");
		$finish;
	end

endmodule

module SRAM (clk, Wen, WData, WAddr, RAddr, RData);
	
	parameter dataWidth = 32;
	parameter addrWidth = 10;

	input clk, Wen;
	input [dataWidth-1:0] WData;
	input [addrWidth-1:0] WAddr, RAddr;
	
	output reg [dataWidth-1:0] RData;

	reg [dataWidth-1:0] mem [0:1023];
	integer i;

	initial begin

		`ifdef TEST1
			$readmemb (`testcase1, mem);
		`endif
		
		`ifdef TEST2
			$readmemb (`testcase2, mem);
		`endif
		
		
	end

	always@(posedge clk) begin

		if (Wen) begin
			mem[WAddr] <= WData;
		end
		
	end

	always@(posedge clk)begin

		RData = mem[RAddr];
		
	end


endmodule
