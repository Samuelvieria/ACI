module Mostrarbinarios; 

integer i;

//Array de 8 bits
reg[7:0] array[0:4];

//declaro o numero em decimal

$display ( "Guia_0101 - Tests" );

initial begin
  array[0] = 27;  
  array[1] = 51; 
  array[2] = 725; 
  array[3] = 132;
  array[4] = 360;
  
  for(i=0; i<5; i=i+1)begin

  //com o %b printa o numero em binario
  $display("%b", array[i]);
  
    end
   end
endmodule