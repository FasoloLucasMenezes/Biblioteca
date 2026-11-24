import 'pessoa.dart';

class Multa {
  final int id;
  double valorTotal;
  Pessoa pessoa;
  double _valorPago = 0;

  Multa({
    required this.id,
    required this.valorTotal,
    required this.pessoa,
  });

  double get valorPago => _valorPago;

  // Regra de negócio: não dá para pagar mais que o total
  void pagar(double valor) {
    _valorPago = _valorPago + valor;
    if (_valorPago > valorTotal) {
      _valorPago = valorTotal;
    }
  }

  bool emAberto() {
    return _valorPago < valorTotal;
  }

  @override
  String toString() {
    return 'Multa $id: ${pessoa.nome} | Total $valorTotal | Pago $_valorPago';
  }
}
