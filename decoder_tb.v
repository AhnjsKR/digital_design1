`timescale 1ns / 1ps
module decoder_tb;

    
    reg [1:0] in;
    
    wire [3:0] out;

    
    decoder2to4_simplified uut (
        .in(in),
        .out(out)
    );

    
    initial begin
        
        $display("시간\t 입력 | 출력");
        $display("--------------------");

        
        in = 2'b00; #10;
        $display("%g\t %b   | %b", $time, in, out);

        in = 2'b01; #10;
        $display("%g\t %b   | %b", $time, in, out);

        in = 2'b10; #10;
        $display("%g\t %b   | %b", $time, in, out);

        in = 2'b11; #10;
        $display("%g\t %b   | %b", $time, in, out);

        
        $finish;
    end

endmodule