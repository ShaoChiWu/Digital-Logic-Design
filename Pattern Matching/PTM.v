`define IDLE 3'd0
`define S0   3'd1
`define S1   3'd2
`define S2   3'd3
`define S3   3'd4
`define S4   3'd5
`define S5   3'd6
`define S6   3'd7

module PTM(clk , rst , start , data , en , addr , flag , fin , result);
    input clk , rst , start;
    input [9 : 0] data;
    output en , flag , fin;
    output [9 : 0] addr , result;

    reg [2:0] state , next_state; 
    reg [9:0] num, next_num;
    reg [9:0] ans, next_ans;
    reg flag;

    assign en     = 1'b1;
    assign addr   = num;
    assign fin    = (start == 1'b1 && num == 10'd1023)? 1'b1 : 1'b0;
    assign result = (fin == 1'b1)? ans : 10'd0;

// state reg
    always@(posedge rst or posedge clk)begin
        if(rst == 1'b1)begin
            state <= `IDLE;
            ans   <= 10'd0;
            num   <= 10'd1023;
        end
        else begin
            state  <= next_state;
            num    <= next_num;
            ans    <= next_ans;
        end
    end

// next state logic    
    always@(*)begin
        next_state = state;

        case(state)
            `IDLE:begin
                next_state = (start == 1'b1)? `S0 : `IDLE;
             end

            `S0:begin
            	next_state = (data[0] == 1'b1)? `S1 : `S0;
             end  

            `S1:begin
            	next_state = (data[0] == 1'b1)? `S1 : `S2;
             end
                                                                                     
            `S2:begin
            	next_state = (data[0] == 1'b1)? `S3 : `S0;
             end

            `S3:begin
            	next_state = (data[0] == 1'b1)? `S1 : `S4;
             end

            `S4:begin
            	next_state = (data[0] == 1'b1)? `S3 : `S5;
             end

            `S5:begin
                next_state = (data[0] == 1'b1)? `S6 : `S0;
             end

            `S6:begin
                next_state = (data[0] == 1'b1)? `S1 : `S4;
             end

        endcase
    end

// output logic
    always@(*)begin
        next_num = num + 10'd1;
        next_ans = ans;

        case(state)
            `IDLE:begin
                next_num   = (start == 1'b1)? 10'd0 : 10'd1023;
             end

            `S6:begin
                next_ans   = (data[0] == 1'b1)? ans+1 : ans;  
             end
        endcase
    end

    always @(*) begin
        if ((state == `S6)&&(data[0] == 1'b1)) begin
            flag = 1'd1;
        end

        else begin
            flag = 1'd0;                
        end
    end


    

endmodule