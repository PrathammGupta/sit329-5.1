// Code your testbench here
// or browse Examples
`timescale 1ns/1ns

module counter_tb();
   reg tb_up;
   reg tb_down;
   reg tb_reset;
   reg tb_clk;
   wire [2:0] tb_count;
  
// Code your design here
`timescale 1ns/1ns
module count(input clk, input reset, input down, input up, output reg[2:0] counter);
  
  reg[2:0] value;
  always @(posedge (clk) or posedge(reset))
  begin 
      if(reset == 1) 
        value = 0;
    
      else if(up == 1) 
        if(counter == 7) 
           value = 0;
          
        else 
           value = value + 1;
       
        
      else if(down == 1) 
        if(counter ==0) 
           value = 7;
          
        else
           value = value - 1;
        
        
       
      counter = value;
  end
endmodule 






























// Code your design here
// Code your design here
`timescale 1ns/1ns
module up_down_counter(input clk, input reset, input down, input up, output reg[2:0] counter);
  
  reg[2:0] value;
  always @(posedge (clk) or posedge(reset))
    begin 
      if(reset == 1) 
        value = 0;
    
      else if(up == 1)
        if(counter ==7) 
           value = 0;
          
        else
           value = value + 1;
        
        
      else if(down == 1) begin
        if(counter == 0) 
           value = 7;
          
        else 
           value = value - 1;
        
        
         
      counter = value;
   
endmodule 