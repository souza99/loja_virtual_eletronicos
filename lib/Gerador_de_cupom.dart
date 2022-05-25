import 'package:loja_virtual/Produto.dart';
import 'package:loja_virtual/Vendedor.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert'; // for the utf8.encode method

void gerarCupo(Vendedor vendedor, String data, Produto produto) {
  // CRIPTOGRAFA AS INFORMACOES;
  var bytes = utf8.encode(
      vendedor.nome + data + produto.valor.toString()); // data being hashed
  print(vendedor.nome);

  print(data);

  var digest = sha1.convert(bytes);
  print("Cumpom gerado: $digest");
}
