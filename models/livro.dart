class Livro {
  String nome;
  String autor;
  int secao;
  String isbn;
  int _quantidade = 0;

  Livro({
    required this.nome,
    required this.autor,
    required this.secao,
    required this.isbn,
  });

  int get quantidade => _quantidade;

  void adicionarExemplares(int n) {
    _quantidade = _quantidade + n;
  }

  // Regra de negócio: só empresta se tiver exemplar
  bool emprestar() {
    if (_quantidade > 0) {
      _quantidade = _quantidade - 1;
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return 'Livro: $nome | $autor | Seção $secao | Qtd $_quantidade';
  }
}
