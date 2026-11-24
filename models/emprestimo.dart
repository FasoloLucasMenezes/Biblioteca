import 'livro.dart';
import 'pessoa.dart';

class Emprestimo {
  final int id;
  String dataEmprestimo;
  String dataDevolucao;
  String? dataDevolvida; // fica null até o livro voltar
  double valor;
  Pessoa pessoa;
  Livro livro;

  Emprestimo({
    required this.id,
    required this.dataEmprestimo,
    required this.dataDevolucao,
    this.dataDevolvida,
    required this.valor,
    required this.pessoa,
    required this.livro,
  });

  // Regra de negócio: o livro já voltou?
  bool foiDevolvido() {
    return dataDevolvida != null;
  }

  @override
  String toString() {
    return 'Empréstimo $id: ${livro.nome} para ${pessoa.nome}';
  }
}
