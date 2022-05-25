import 'package:loja_virtual/Produto.dart';
import 'package:loja_virtual/Vendedor.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert'; // for the utf8.encode method
import 'package:jwt_decode/jwt_decode.dart';
import 'package:dbcrypt/dbcrypt.dart';

void gerarCupo(Vendedor vendedor, String data, Produto produto) {
// CRIPTOGRAFA AS INFORMACOES;
  var hashed = new DBCrypt().hashpw(
      vendedor.nome + data + produto.valor.toString(), new DBCrypt().gensalt());
  print("Cupom gerado: ${hashed}");

  String senha = vendedor.nome + data + produto.valor.toString();

  descriptografarCupom(senha, hashed);
}




void descriptografarCupom(String senha, String hashed) {
  var result = new DBCrypt().checkpw(senha, hashed);

  if (result) {
    print("cupom valido");
  } else {
    print("cupom invalido");
  }
}
