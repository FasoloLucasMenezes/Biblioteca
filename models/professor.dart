import 'pessoa.dart';

class Professor extends Pessoa {
  String area;
  String titulo;
  int idProfessor;

  Professor({
    required String nome,
    required String cpf,
    required int idade,
    String? telefone,
    required this.area,
    required this.titulo,
    required this.idProfessor,
  }) : super(nome: nome, cpf: cpf, idade: idade, telefone: telefone);

  @override
  String toString() {
    return 'Professor: $nome | $area | $titulo | ID $idProfessor';
  }
}
