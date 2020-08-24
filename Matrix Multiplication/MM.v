`define SIZE    2'd0
`define READ_A  2'd1
`define READ_B  2'd2
`define WRITE   2'd3

module MM(clk,i,j,reset,read,write,index,read_data,write_data,finish);
	parameter n=20;
	
	input reset,clk;
	input signed [n-1:0]read_data;
	
	output [n-1:0]i,j;
	output read,write,index,finish;
	output [2*n-1:0]write_data;

	reg[1:0] state, next_state;
	reg[n-1:0] i , j, next_i,next_j;
	reg signed[2*n-1:0]write_data, next_write_data;
	reg read,write,index,finish,next_finish;
	reg signed[n-1:0]temp;
	reg [n-1:0]row1,column1,row2,column2;
	reg [n-1:0]row,column,next_row,next_column;

	// state reg
	always @(posedge clk or posedge reset) begin
		if (reset) begin
			state <= `SIZE;
			i     <= 20'd0;
			j     <= 20'd0;
			row   <= 20'd0;
			column<= 20'd0;
			write_data<= 40'd0;
			finish<= 1'd0;
		end
		else begin
			state <= next_state;
			i  <= next_i;
			j <= next_j;
			row <= next_row;
			column <= next_column;
			write_data<= next_write_data;
			finish <= next_finish;
		end
	end

// next state logic
	always @(*) begin
		next_state = state;

		case(state)
			`SIZE:begin
				next_state = (i == 20'd2)? `READ_A : `SIZE;
			end

			`READ_A:begin
				next_state =  `READ_B;
			end

			`READ_B:begin
				next_state = (i ==column1-20'd1)? `WRITE : `READ_A;
			end

			`WRITE:begin
				next_state = `READ_A;
			end
		endcase
	end

// output logic
	always @(*) begin
		next_i = i;
		next_j = j;
		next_row = row;
		next_column = column;
		next_write_data = write_data;
		next_finish = finish;

		case(state)
			`SIZE:begin
				read     = 1'b1;
                write    = 1'b1;
                index    = 1'b0;
                next_i   = i + 20'd1;

				if(i == 20'd0)begin
                    row1    = read_data;
                end

                if(i == 20'd1)begin
                    column1 = read_data;
                    row2    = read_data;
                end

                if(i == 20'd2)begin
                    column2 = read_data;
                    next_i = 20'd0;
                    next_j = 20'd0;
                end
			end

			`READ_A:begin
				read     = 1'b1;
                write    = 1'b0;
                index    = 1'b0;
                next_i = j;
                next_j = column;
                temp = read_data;
            end

            `READ_B:begin
            	read     = 1'b1;
                write    = 1'b0;
                index    = 1'b1;

                next_write_data = write_data + {{20{temp[19]}},temp}*{{20{read_data[19]}},read_data};
            	next_i = row;
            	next_j = i + 20'd1;
            end

            `WRITE:begin
            	read     = 1'b0;
                write    = 1'b1;
                index    = 1'b0;

                next_j = 20'd0;
                next_write_data = 40'd0;

                if (column == column2-20'd1) begin
                	next_i = row+20'd1;
                	next_row = row+20'd1;
                	next_column = 20'd0;
                end

                else begin
                	next_i = row;
                	next_row = row;
                	next_column = column + 20'd1;
                end

                if (row ==row1-20'd1 && column == column2-20'd1) begin
                	next_finish = 1'b1;
                	end
                	else begin
                		next_finish = 1'b0;
                	end
         	
                end
            endcase
    end

endmodule 