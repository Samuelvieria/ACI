/*
Samuel Ferreira Alves

Matrícula: 800772




Guia_0201.v
Conversão de binário para decimal.
*/
module Guia_0201;
  real x;
  real power2;
  integer y;
  reg [7:0] b;

  task converter_binario_para_decimal(input reg [7:0] bin);
    begin
      x = 0.0;
      power2 = 1.0;
      y = 7;

      while (y >= 0) begin
        power2 = power2 / 2.0;
        if (bin[y] == 1) begin
          x = x + power2;
        end
        y = y - 1;
      end

      $display("Número binário fracionário: 0.%b", bin);
      $display("Valor decimal correspondente: %f", x);
      $display("");
    end
  endtask

  initial begin
    $display("Guia_0201 - Conversão de Binário para Decimal");

    // Testes com os números fornecidos
    b = 8'b00000101; converter_binario_para_decimal(b); // 0,00101(2)
    b = 8'b00001101; converter_binario_para_decimal(b); // 0,01101(2)
    b = 8'b00010001; converter_binario_para_decimal(b); // 0,10001(2)
    b = 8'b11011100; converter_binario_para_decimal(b); // 1,10111(2)
    b = 8'b11110100; converter_binario_para_decimal(b); // 11,11101(2)
  end
endmodule

/*
Guia_0202.v
Conversão de números decimais para binários.
*/
module Guia_0202;

  // Definição dos números decimais
  real numbers [0:4];
  reg [7:0] b; // Registro para armazenar a parte binária
  integer y;  // Contador
  integer i;  // Índice para iterar sobre os números

  // Ações
  initial begin : main
    // Inicializa o array de números decimais
    numbers[0] = 0.625000;
    numbers[1] = 1.750000;
    numbers[2] = 3.125000;
    numbers[3] = 4.312500;
    numbers[4] = 7.875000;

    $display("Guia_0202 - Conversão de decimais para binários");

    for (i = 0; i < 5; i = i + 1) begin
      case (i)
        0: $display("a.) 0.625000(10)");
        1: $display("b.) 1.750000(10)");
        2: $display("c.) 3.125000(10)");
        3: $display("d.) 4.312500(10)");
        4: $display("e.) 7.875000(10)");
      endcase

      // Inicializações
      b = 0;
      y = 7;

      // Converte a parte fracionária para binário
      while (numbers[i] > 0 && y >= 0) begin
        if (numbers[i] * 2 >= 1) begin
          b[y] = 1;
          numbers[i] = numbers[i] * 2.0 - 1.0;
        end else begin
          b[y] = 0;
          numbers[i] = numbers[i] * 2.0;
        end
        y = y - 1;
      end

      // Exibe o resultado
      $display("Binário: 0.%8b", b);
    end
  end // main

endmodule // Guia_0202

/*
Guia_0203.v
Conversão de binário para outras bases.
*/
module Guia_0203;
  reg [7:0] b;

  task converter_binario_para_outros(input reg [7:0] bin);
    begin
      $display("Número binário fracionário: 0.%b", bin);
      $display("Número em hexadecimal: 0.%h", bin);
      $display("Número em octal: 0.%o", bin);
      $display("");
    end
  endtask

  initial begin
    $display("Guia_0203 - Conversão de Binário para Outras Bases");

    // Testes com os números fornecidos
    b = 8'b00011010; converter_binario_para_outros(b); // 0,011010(2)
    b = 8'b00100011; converter_binario_para_outros(b); // 0,100011(2)
    b = 8'b00100101; converter_binario_para_outros(b); // 0,100101(2)
    b = 8'b11110010; converter_binario_para_outros(b); // 1,111001(2)
    b = 8'b10111101; converter_binario_para_outros(b); // 1011,1101(2)
  end
endmodule

/*
Guia_0204.v
Conversão para base 4.
*/
module Guia_0204;
  real x;
  reg [7:0] bin_input;
  reg [15:0] hex_input;
  reg [15:0] oct_input;

  initial begin : main
    $display("Guia_0204 - Conversão para Base 4");

    // Teste 1: Converter 0,231 (base 4) para base 4
    x = 0.231; // Exemplo em decimal
    $display("Testando: 0.231 (base 4)");
    $display("Valor original (base 4) = %f", x);

    // Teste 2: Converter 0,5C2 (base 16) para base 4
    hex_input = 16'h5C2;
    $display("Testando: 0,5C2 (base 16)");
    $display("hex_input = 0x%3h", hex_input);
    $display("hex_to_bin = 0.%16b", hex_input);
    $display("bin_to_base4 = 0.%4b %4b %4b %4b", hex_input[15:12], hex_input[11:8], hex_input[7:4], hex_input[3:0]);

    // Teste 3: Converter 0,735 (base 8) para base 4
    oct_input = 16'o735;
    $display("Testando: 0,735 (base 8)");
    $display("oct_input = 0o%3o", oct_input);
    $display("oct_to_bin = 0.%12b", oct_input);
    $display("bin_to_base4 = 0.%4b %4b %4b %4b", oct_input[15:12], oct_input[11:8], oct_input[7:4], oct_input[3:0]);

    // Teste 4: Converter 6,2345 (base 8) para base 4
    oct_input = 16'o62345;
    $display("Testando: 6,2345 (base 8)");
    $display("oct_input = 0o%5o", oct_input);
    $display("oct_to_bin = 0.%16b", oct_input);
    $display("bin_to_base4 = 0.%4b %4b %4b %4b", oct_input[15:12], oct_input[11:8], oct_input[7:4], oct_input[3:0]);

    // Teste 5: Converter B,A5E (base 16) para base 4
    hex_input = 16'hA5E;
    $display("Testando: B,A5E (base 16)");
    $display("hex_input = 0x%3h", hex_input);
    $display("hex_to_bin = 0.%16b", hex_input);
    $display("bin_to_base4 = 0.%4b %4b %4b %4b", hex_input[15:12], hex_input[11:8], hex_input[7:4], hex_input[3:0]);
  end
endmodule

/*
Guia_0205.v
Operações binárias.
*/
module Guia_0205;
  real a, b, resultado_decimal;

  initial begin
    $display("Guia_0205 - Operações Binárias");

    // a.) 101,01(2) + 10,011(2)
    a = 5.25;  // 101,01(2) = 5.25 (10)
    b = 2.375; // 10,011(2) = 2.375 (10)
    resultado_decimal = a + b;
    $display("a.) 101,01(2) + 10,011(2) = %f (bin) = %f (dec)", a + b, resultado_decimal);

    // b.) 1000,001(2) - 10,01(2)
    a = 8.125; // 1000,001(2) = 8.125 (10)
    b = 2.25;  // 10,01(2) = 2.25 (10)
    resultado_decimal = a - b;
    $display("b.) 1000,001(2) - 10,01(2) = %f (bin) = %f (dec)", a - b, resultado_decimal);

    // c.) 101,110(2) * 10,001(2)
    a = 5.75;  // 101,110(2) = 5.75 (10)
    b = 2.125; // 10,001(2) = 2.125 (10)
    resultado_decimal = a * b;
    $display("c.) 101,110(2) * 10,001(2) = %f (bin) = %f (dec)", a * b, resultado_decimal);

    // d.) 10110,01(2) / 11,011(2)
    a = 22.25;  // 10110,01(2) = 22.25 (10)
    b = 3.375;  // 11,011(2) = 3.375 (10)
    resultado_decimal = a / b;
    $display("d.) 10110,01(2) / 11,011(2) = %f (bin) = %f (dec)", a / b, resultado_decimal);

    // e.) 1101101(2) % 1011(2)
    a = 109.0;  // 1101101(2) = 109 (10)
    b = 11.0;   // 1011(2) = 11 (10)
    resultado_decimal = a % b;
    $display("e.) 1101101(2) %% 1011(2) = %f (bin) = %f (dec)", a % b, resultado_decimal);
  end
endmodule