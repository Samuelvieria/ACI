module Mostrarbinarios; 

// Array de 8 bits
reg[7:0] array[0:4];

// Declaro o número em decimal
initial begin

$display ( "Guia_0103 - Tests" );

  array[0] = 54;  
  array[1] = 67; 
  array[2] = 76; 
  array[3] = 157;
  array[4] = 731;
  
  // Imprime o número em binário (como base 4, agrupando bits em pares)
  $display("Numero em base 4 (como binário agrupado): %b", array[0]);

  // Com o %o printa o número em octal
  $display("Numero em octal: %o", array[1]);

  // Com o %h printa o número em hexadecimal
  $display("Numero em hexadecimal: %h", array[2]);

  // Com o %h printa o número em hexadecimal
  $display("Numero em hexadecimal: %h", array[3]);

  // Com o %h printa o número em hexadecimal
  $display("Numero em hexadecimal: %h", array[4]);
  
end
endmodule
