module test;
reg clk,clr,a;
wire e;
shift_register dut(clk,clr,a,e);
initial 
clk=0;
always #5 clk=~clk;
 initial
 begin
 clr=0; a=0; #3
 $monitor($time,"clk=%b,clr=%b,a=%b,e=%b",clk,clr,a,e);
 clr=1; 
 #10 a=1; 
 #10 a=0; 
 #10 a=1; 
 #10 a=0;
 #10 a=1; 
 #10 a=1;  
 #20 $stop;
 end
endmodule
