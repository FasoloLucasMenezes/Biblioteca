import 'livro.dart';
import 'pessoa.dart';

class Reserva {
  final int id;
  String dataReserva;
  String status;
  Pessoa pessoa;
  Livro livro;

  Reserva({
    required this.id,
    required this.dataReserva,
    this.status = 'Ativa',
    required this.pessoa,
    required this.livro,
  });

  @override
  String toString() {
    return 'Reserva $id: ${livro.nome} para ${pessoa.nome} ($status)';
  }
}
