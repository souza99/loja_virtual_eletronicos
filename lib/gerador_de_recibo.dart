import 'package:loja_virtual/Produto.dart';
import 'package:loja_virtual/Vendedor.dart';
import 'package:loja_virtual/usuario.dart';



// INTERFACE//
String geradorRecibo(
    Usuario usuario, List<Produto> listaDeProdutos, Vendedor vendedor) {
  String recibo = "";
  String produtos = "Nota fiscal";
  String valor_total = calculoValorTotal(listaDeProdutos);

  for (Produto produto in listaDeProdutos) {
    produtos = produtos +
        "<br> " +
        produto.nome +
        "<br> " +
        produto.descricao +
        "<br>" +
        produto.valor.toString();
  }
  print(produtos);

  if (vendedor.razao_social != null) {
    recibo = recibo + vendedor.razao_social + "<br>";
  }

  return recibo;
}

String calculoValorTotal(List<Produto> listaDeProdutos) {
  double valor_total = 0.0;

  for (Produto produto in listaDeProdutos) {
    valor_total += valor_total;
  }

  return valor_total.toString();
}
