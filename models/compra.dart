import 'livro.dart';

class Compra {
  final int id;
  String dataCompra;
  double valor;
  Livro livro;

  Compra({
    required this.id,
    required this.dataCompra,
    required this.valor,
    required this.livro,
  });

  @override
  String toString() {
    return 'Compra $id: ${livro.nome} | R\$ $valor';
  }
}
