import 'package:loja_virtual/Produto.dart';
import 'package:loja_virtual/Vendedor.dart';
import 'package:loja_virtual/loja_virtual.dart' as loja_virtual;
import 'package:loja_virtual/Gerador_de_cupom.dart' as gerador_de_cupom;

void main(List<String> arguments) {
  Vendedor vendedor = new Vendedor();
  String data = "24/05/2022";

  Produto produto = new Produto();

  vendedor.nome = "joao";
  vendedor.cpf_cnpj = "48679484890";

  produto.valor = 20;

  gerador_de_cupom.gerarCupo(vendedor, data, produto);
}
