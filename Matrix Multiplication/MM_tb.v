`define SDFFILE "./MM.sdf"
`define end_time 1000000
module test;
	
	parameter cycle=80;
	parameter n=20;
	
	reg clk,reset;
	reg [n-1:0]read_data;
	reg signed[n-1:0]mem[0:1023];
	reg signed[2*n-1:0]_mem[0:1023];
	reg signed[2*n-1:0]ans[0:1023];
	integer f,g,r,c;
	reg [n-1:0]row1,column1,row2,column2;
	always #(cycle/2)clk = ~clk;
	
	wire read,write,index,finish;
	wire [n-1:0]i,j;
	wire signed[2*n-1:0]write_data;
	MM mmmmm(	.clk(clk),
				.i(i),
				.j(j),
				.reset(reset),
				.read(read),
				.write(write),
				.index(index),
				.read_data(read_data),
				.write_data(write_data),
				.finish(finish)
	);
	
	initial begin
		`ifdef SDF
			$sdf_annotate(`SDFFILE,mmmmm);
			$fsdbDumpfile("MM_syn.fsdb");
		`else
			$fsdbDumpfile("MM.fsdb");
		`endif
		$fsdbDumpvars;
	end
	
	
	initial begin
		clk=1'b0;
		reset=1'b1;
		read_data='hz;
		$readmemb("memory.dat",mem);
		$readmemb("ans.dat",ans);
		f=$fopen("memory.dat","w");
		@(negedge clk)reset=1;
		#(cycle)reset=0;
		
		#(`end_time)
		$fclose(f);
		$writememb("memory.dat",mem);
		$display("#######################");
		$display("#Oh,something wrong!!!#");
		$display("#######################");
		$finish;
	end
	initial begin
		#(cycle/2)
			row1=mem[0];
			column1=mem[1];
			row2=mem[1];
			column2=mem[2];
		$display("%d %d %d %d",row1,column1,row2,column2);
	end
	always@(negedge clk)begin
		if((read|write)&!reset)begin
			if(read&!write)begin
				if(!index)read_data=mem[(i*column1)+j+3];
				else read_data=mem[(i*column2)+j+3+(row1*column1)];
			end
			else if(write&!read)begin
				read_data='hz;
				$fwrite(f,"%b\n",write_data);
			end
			else begin
				if(i<3)read_data=mem[i];
				else read_data='hz;
			end
		end
		else begin
			read_data='hz;
		end
	end
	
	always@(posedge finish)begin
		$fclose(f);
		$readmemb("memory.dat",_mem);
		$display("%d %d %d %d",row1,column1,row2,column2);
		for(r=0;r<row1;r=r+1)begin
			for(c=0;c<column2;c=c+1)begin
				if(ans[r*column2+c]==_mem[r*column2+c])begin
					$display("############################");
					$display("Row:%d Column:%d is correct.",r,c);
					$display("############################");
				end
				else begin
					$display("##############################################");
					$display("Row:%d Column:%d is wrong.",r,c);
					$display("Your answer is:%d,and the corrent answer is:%d",
					_mem[r*column2+c],ans[r*column2+c]);
					$display("##############################################");
					
					$fclose(f);
					$writememb("memory.dat",mem);
					$finish;
				end
			end
		end
		$fclose(f);
		$writememb("memory.dat",mem);
		$display("###################");
		$display("#Congratulation!!!#");
		$display("###################");
		$finish;
	end
endmodule