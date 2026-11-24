import 'pessoa.dart';

class Aluno extends Pessoa {
  String curso;
  int periodo;
  int matricula;

  Aluno({
    required String nome,
    required String cpf,
    required int idade,
    String? telefone,
    required this.curso,
    required this.periodo,
    required this.matricula,
  }) : super(nome: nome, cpf: cpf, idade: idade, telefone: telefone);

  @override
  String toString() {
    return 'Aluno: $nome | $curso | $periodo º período | Matrícula $matricula';
  }
}
