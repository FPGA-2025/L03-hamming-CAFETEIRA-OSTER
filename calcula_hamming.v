module calcula_hamming (
  input [10:0] entrada,
  output [14:0] saida
);

 wire p1; // Declaração de paridade1 como wire
 wire p2; // Declaração de paridade2 como wire
 wire p3; // Declaração de paridade3 como wire
 wire p4; // Declaração de paridade4 como wire
 

 // Cálculo dos bits de paridade usando XOR
 assign p1 = entrada[0] ^ entrada[1] ^ entrada[3] ^ entrada[4] ^ entrada[6] ^ entrada[8] ^ entrada[10];
 assign p2 = entrada[0] ^ entrada[2] ^ entrada[3] ^ entrada[5] ^ entrada[6] ^ entrada[9] ^ entrada[10];
 assign p3 = entrada[1] ^ entrada[2] ^ entrada[3] ^ entrada[7] ^ entrada[8] ^ entrada[9] ^ entrada[10];
 assign p4 = entrada[4] ^ entrada[5] ^ entrada[6] ^ entrada[7] ^ entrada[8] ^ entrada[9] ^ entrada[10];

 // Montagem da saída com os bits de paridade e os bits de dados
 assign saida = {p4, p3, p2, p1, entrada[10], entrada[9], entrada[8], entrada[7], entrada[6], entrada[5], entrada[4], entrada[3], entrada[2], entrada[1], entrada[0]};
 
endmodule
