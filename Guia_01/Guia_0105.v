module Guia_0105;
// Define data
reg [7:0] s[0:50]; // Array para armazenar caracteres de cada palavra
integer i; // Variável de loop

// Actions
initial begin : main

  $display ("Guia_0105 - Conversão de ASCII");

  s[0] = 8'b01010000; // P
  s[1] = 8'b01010101; // U
  s[2] = 8'b01000011; // C
  s[3] = 8'b00101101; // -
  s[4] = 8'b01001101; // M
  s[5] = 8'b01101001; // i
  s[6] = 8'b01101110; // n
  s[7] = 8'b01100001; // a
  s[8] = 8'b01110011; // s
  $display ("a.) 'PUC-Minas' em X(16_ASCII):");
  for (i = 0; i < 9; i = i + 1) begin
    $display ("%c", s[i]);
  end

  s[0] = 8'b00110010; // 2
  s[1] = 8'b00110000; // 0
  s[2] = 8'b00110010; // 2
  s[3] = 8'b00110101; // 5
  s[4] = 8'b00101101; // -
  s[5] = 8'b00110000; // 0
  s[6] = 8'b00110001; // 1
  $display ("\nb.) '2025-01' em X(16_ASCII):");
  for (i = 0; i < 7; i = i + 1) begin
    $display ("%c", s[i]);
  end

  s[0] = 8'b01000010; // B
  s[1] = 8'b01100101; // e
  s[2] = 8'b01101100; // l
  s[3] = 8'b01101111; // o
  s[4] = 8'b00100000; // (space)
  s[5] = 8'b01001000; // H
  s[6] = 8'b01101111; // o
  s[7] = 8'b01110010; // r
  s[8] = 8'b01101001; // i
  s[9] = 8'b01111010; // z
  s[10] = 8'b01101111; // o
  s[11] = 8'b01101110; // n
  s[12] = 8'b00100000; // (space)
  s[13] = 8'b00101101; // -
  s[14] = 8'b00100000; // (space)
  s[15] = 8'b01001101; // M
  s[16] = 8'b00101110; // .
  s[17] = 8'b01000111; // G
  $display ("\nc.) 'Belo Horizonte - M.G.' em X(2_ASCII):");
  for (i = 0; i < 18; i = i + 1) begin
    $display ("%c", s[i]);
  end

  s[0] = 8'b10011100; // 156
  s[1] = 8'b10011101; // 157
  s[2] = 8'b10010111; // 151
  s[3] = 8'b10100100; // 164
  s[4] = 8'b10010001; // 145
  $display ("\nd.) '156 157 151 164 145' em X(ASCII):");
  for (i = 0; i < 5; i = i + 1) begin
    $display ("%c", s[i]);
  end

  s[0] = 8'b01001101; // 4D = M
  s[1] = 8'b01100001; // 61 = a
  s[2] = 8'b01101110; // 6E = n
  s[3] = 8'b01101000; // 68 = h
  s[4] = 8'b01100001; // 61 = a
  $display ("\ne.) '4D 61 6E 68 61' em X(ASCII):");
  for (i = 0; i < 5; i = i + 1) begin
    $display ("%c", s[i]);
  end
end // main
endmodule // Guia_0105
