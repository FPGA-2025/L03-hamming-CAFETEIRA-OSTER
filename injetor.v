module injetor(
  input [14:0] entrada,
  input [3:0] n,
  input erro,
  output reg [14:0] saida
);

  always @(*) begin
    if (erro) begin
      // Injeta o erro no bit indicado por 'n' usando XOR
      saida = entrada ^ (1 << n);
    end else begin
      // Sem erro, a saída é igual à entrada
      saida = entrada;
    end
  end

endmodule
