`timescale 1ns / 1ps
module Mux_xor_tb;

    
    reg A;
    reg B;

   
    wire F;

    
    xor_using_mux UUT (
        .A(A), 
        .B(B), 
        .F(F)
    );

    
    initial begin
        
        $display("시뮬레이션 시작");
        $display("시간\t A B | F");

        
        A = 0; B = 0;
        #10 $display("%g\t %b %b | %b", $time, A, B, F);

        A = 0; B = 1;
        #10 $display("%g\t %b %b | %b", $time, A, B, F);

        A = 1; B = 0;
        #10 $display("%g\t %b %b | %b", $time, A, B, F);

        A = 1; B = 1;
        #10 $display("%g\t %b %b | %b", $time, A, B, F);

        
        #10 $display("시뮬레이션 종료");
        $finish;
    end

endmodule