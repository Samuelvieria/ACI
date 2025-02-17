module Mostraragrupado; 

// Array de 8 bits
reg [7:0] array [0:4];

// Declaro os números em binário
initial begin

$display ( "Guia_0104 - Tests" );

  array[0] = 8'b10110000;  
  array[1] = 8'b11011011;  
  array[2] = 8'b10010011;  
  array[3] = 8'b10101101;  
  array[4] = 8'b10110011;  
  
  // Exibe em base 4: agrupando os bits em pares de 2 bits
  $display("Número 0 em base 4 (agrupado): [%2b] [%2b] [%2b] [%2b]", array[0][7:6], array[0][5:4], array[0][3:2], array[0][1:0]);

  // Exibe o número em octal (%o)
  $display("Número 1 em octal: %o", array[1]);

  // Exibe o número em hexadecimal (%h)
  $display("Número 2 em hexadecimal: %h", array[2]);

  // Exibe em base 8: agrupando os bits em trios de 3 bits
  $display("Número 3 em base 8 (agrupado): [%3b] [%3b] = %o %o", array[3][7:5], array[3][4:2], array[3][7:5], array[3][4:2]);

  // Exibe o número 4 em hexadecimal (%h)
  $display("Número 4 em hexadecimal: %h", array[4]);
  
end
endmodule
