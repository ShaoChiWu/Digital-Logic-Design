`define SDFFILE   "./IIR.sdf"
`define End_CYCLE  10000000000

`define PAT_pno  "./pno-noised.dat"    
`define PAT_gtr  "./gtr-noised.dat" 
`define PAT_violin  "./vio-noised.dat"
`define test  "./test-noised.dat"
 
`define OUT_pno "./pno.dat"
`define OUT_gtr  "./gtr.dat" 
`define OUT_violin  "./vio.dat" 
`define OUT_test  "./test.dat" 

module stimulus ;
	parameter cyc = 100;
	parameter delay = cyc/2; // 50
	parameter delta = cyc/5; // 20
	
	parameter n=20;
	parameter m=16;
	
	// max size
	parameter pno = 480726;
	parameter gtr = 110464;
	parameter violin = 232234;
	
	parameter PAT = 1048576;
	
	reg [m-1:0]filterROM[0:PAT-1];
	reg [n-1:0]maxSize;
	
	reg clk, rst, Start, data_done;
	reg [m-1:0]DIn;
	
	wire load, Finish, WEN;
	wire [m-1:0]Yn;
	wire [n-1:0]RAddr,WAddr;
	
	IIR f0( 
		.clk(clk),
		.rst(rst),
		.load(load),
		.DIn(DIn),
		.RAddr(RAddr),
		.data_done(data_done),
		.WEN(WEN),
		.Yn(Yn),
		.WAddr(WAddr),
		.Finish(Finish)
	);
	
	RAM ram(
		.clk(clk),
		.WEN(WEN),
		.Yn(Yn),
		.WAddr(WAddr),
		.Finish(Finish)
	);
	
	always #(cyc/2) clk = ~clk;
	
	initial begin
		`ifdef SDF
			$sdf_annotate(`SDFFILE,f0);
			$fsdbDumpfile("IIR_syn.fsdb");
		`else
			$fsdbDumpfile("IIR.fsdb");
		`endif
		$fsdbDumpvars;
	end
	
	initial	begin
		`ifdef PNO
			$readmemb (`PAT_pno,filterROM);
			maxSize=20'd480726;

		`elsif GTR
			$readmemb (`PAT_gtr,filterROM);
			maxSize=20'd110464;
		`elsif TEST
			$readmemb (`test,filterROM);
			maxSize=20'd25;
		`else
			$readmemb (`PAT_violin,filterROM);
			maxSize=20'd232234;
		`endif
	end
	
	initial begin
		data_done = 1'b0;
		rst = 1'b0;
		clk = 1'b0;
		Start = 1'b0;
		DIn = 'hz;
	 
		@(negedge clk)  rst = 1'b1; 
		@(negedge clk)	rst = 1'b0; 
		while (Finish == 0) begin
			#40;
			$display("%d",RAddr);
			if(load && RAddr < maxSize) begin
				DIn = filterROM[RAddr]; 
				if (RAddr == maxSize-20'd1)begin
					data_done = 1'b1;
				end else begin					
					data_done = 1'b0;
				end

			end else begin
				DIn = 'hz;  
				if (RAddr >= maxSize) 	
					data_done = 1'b1;
				else					
					data_done = 1'b0;
			end
			
			@(negedge clk);
			
		end
		$finish;
	end
	
	initial  begin
		#`End_CYCLE ;
		$display("-----------------------------------------------------\n");
		$display("Error!!! Somethings' wrong with your code ...!\n");
		$display("-------------------------FAIL------------------------\n");
		$display("-----------------------------------------------------\n");
		$finish;
	end
endmodule

module RAM(clk,WEN,Yn,WAddr,Finish);
	parameter n=20;
	parameter m=16;
	parameter PAT = 1048576;
	
	input	clk,WEN,Finish;
	input	[n-1:0]WAddr;
	input	[m-1:0]Yn;
	
	reg [m-1:0]filterRAM[0:PAT-1];
	integer i;

	initial begin 
		for (i=0;i<PAT;i=i+1)begin 
			filterRAM[i] = 16'd0;
		end
	end

	always@(negedge clk) begin
		if (WEN && WAddr >= 0)begin
			filterRAM[WAddr] <= Yn;
		end
		
	end
	
	always@(*)begin
		if(Finish)begin
			`ifdef PNO
				$writememb(`OUT_pno, filterRAM);
			
			`elsif GTR
				$writememb(`OUT_gtr, filterRAM);
			
			`elsif TEST
				$writememb(`OUT_test, filterRAM);
			
			`else
				$writememb(`OUT_violin, filterRAM);

			`endif
		end
		
	end
			
endmodule
