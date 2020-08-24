`define SDFFILE   "./BON.sdf"
`define End_CYCLE  1000000000

`define info_bonus  "./info_bonus.dat"   

module BON_tb;
	//Clock period
	parameter cyc = 30;
	
	parameter dataWidth = 11;
	parameter memWidth = 10;
	integer wrong_flag;

	// #pattern
	parameter PAT = 1026;

	reg [dataWidth - 1 : 0] dataROM [0 : PAT - 1];
	reg [memWidth - 1 : 0] maxSize;

	reg clk , rst , start , tf;
	reg [dataWidth - 1 : 0] data;
	wire fin , en , flag;
	wire [dataWidth - 2 : 0] result;
	wire [memWidth - 1 : 0] addr;

	//BON module
	BON bon( 
		.clk(clk),
		.rst(rst), 
		.start(start), 
		.data(data[dataWidth - 1 : 1]),
        .en(en),
        .addr(addr),
        .flag(flag),
        .fin(fin),
        .result(result)
	);
	
	always #(cyc/2) clk = ~clk;
	
	initial begin
		`ifdef SDF
			$sdf_annotate(`SDFFILE, bon);
			$fsdbDumpfile("BON_syn.fsdb");
		`else
			$fsdbDumpfile("BON.fsdb");
		`endif
		$fsdbDumpvars;
	end

	
	initial begin
		$display(" ");
		//Init ROM
		$readmemb ("info_bonus.dat", dataROM);

		maxSize = 10'd1023;
		tf = 1'b1;
		wrong_flag = 0;
		
		rst = 1'b0;
		clk = 1'b0;
		start = 1'b0;
		data = 'hz;

		@(negedge clk)  rst = 1'b1; 
		#(cyc);    rst = 1'b0; 
		#(cyc);
		@(negedge clk)  start = 1'b1;
		while (fin == 0) begin             
			if(en && addr <= maxSize) begin
				data = dataROM[addr];
				#(cyc/2);
				if(flag != data[0])begin
					$display("WA ! addr = %d , your_flag = %d , ans_flag = %d" , addr , flag , data[0]);
					tf = 1'b0;
					wrong_flag = wrong_flag + 1;
				end
				else if(data[0] == 1'b1)begin
					$display("GET ! addr = %d , your_flag = %d , ans_flag = %d" , addr , flag , data[0]);
				end
			end else begin
				data = 'hz;
			end                    
			@(negedge clk);  

		end 
		$display(" ");
		$display("Result = %d , Answer = %d", result, dataROM[1024][dataWidth - 1 : 1]);
		if(result == dataROM[1024][dataWidth - 1 : 1] && tf == 1'b1)begin
			$display("!!!!! ACCEPTED !!!!!");
		end
		else begin
			$display("WRONG ANSWER QAQ , wrong_flag = %d" , wrong_flag);
		end
		$display(" ");
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
