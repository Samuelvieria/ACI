module Mostrarinteiros; 

integer i;
//Array de 8 bits
reg[7:0] array[0:4];

initial begin

$display ( "Guia_0102 - Tests" );

//declaro o numero em binario 
  array[0] = 8'b10011;  
  array[1] = 8'b10101;   
  array[2] = 8'b10110;   
  array[3] = 8'b110010;  
  array[4] = 8'b111011;
  
  for(i=0; i<5; i=i+1)begin
  
  //com o %d printa o numero em decimal 
  $display("%d", array[i]);
  
    end
   end
endmodule