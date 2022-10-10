// Code your testbench here
// or browse Examples

`timescale 1ns/1ns

module count_tb();
   reg up;
   reg down;
   reg reset;
   reg clk;
   wire [2:0] counter;
  
  count cnt(.up(up), .down(down), .reset(reset), .clk(clk), .counter(counter));
  
   integer a;
   initial clk = 0;
   always 
    #10 clk = ~clk;
   
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,count_tb); 
    
    up =0;
    down = 0;
    reset =0;
    #20
    $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);
    
    
     up = 0;
     down = 1;
     reset = 0;
      
       #20
    $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);
    
      up = 0;
      down = 1;
      reset = 1;
      
       #20
      $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);

      up = 1;
      down = 0;
     reset = 0;
      
       #20
       $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);
    
      up = 0;
     down = 0;
      reset = 0;
      
       #20
      $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);
 
            
       up = 1;
       down = 0;
       reset = 1;

        #20
      $display("up = %d,down = %d, reset = %d, count = %d", up, down, reset, counter);
    

                
       up = 1;
       down = 0;
       reset = 0;
                
       $finish;
     end
     
     
endmodule