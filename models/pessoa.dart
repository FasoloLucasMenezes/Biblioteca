class Pessoa {
  String nome;
  String cpf;
  int idade;
  String? telefone;

  Pessoa({
    required this.nome,
    required this.cpf,
    required this.idade,
    this.telefone,
  });

  @override
  String toString() {
    return 'Pessoa: $nome | CPF $cpf | $idade anos';
  }
}
