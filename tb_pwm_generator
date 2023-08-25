`timescale 1ns / 1ps
module testbench;
  reg clk=0;
  reg rst=0;
  reg [7:0] pwm_value=16'b0101010101010101;
  wire pwm_output;
   pwm_generator dut(
   .clk(clk),
   .rst(rst),
   .duty_cycle(pwm_value),
   .pwm_output(pwm_output)
   
   );
   always #5 clk=~clk;
   initial begin
   $dumpfile("tb_pwm_generator.vcd");
   $dumpvars(0,testbench);
       rst=1;
       #10;
       rst=0;
       #100;
       $finish;
     end
endmodule
