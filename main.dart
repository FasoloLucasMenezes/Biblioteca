import 'package:flutter/material.dart';
import 'models/livro.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final l1 = Livro(nome: 'Dom Casmurro', autor: 'Machado de Assis', secao: 1, isbn: '9788535911664');
    final l2 = Livro(nome: 'Capitães da Areia', autor: 'Jorge Amado', secao: 1, isbn: '9788535914061');
    final l3 = Livro(nome: 'Clean Code', autor: 'Robert C. Martin', secao: 3, isbn: '9780132350884');
    final l4 = Livro(nome: 'Algoritmos', autor: 'Thomas Cormen', secao: 3, isbn: '9788535236996');
    final l5 = Livro(nome: 'O Pequeno Príncipe', autor: 'Antoine de Saint-Exupéry', secao: 2, isbn: '9788522031634');

    l1.adicionarExemplares(4);
    l2.adicionarExemplares(2);
    l4.adicionarExemplares(3);
    l5.adicionarExemplares(5);
    // l3 fica com 0 exemplares (indisponível)

    final List<Livro> livros = [l1, l2, l3, l4, l5];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sistema de Biblioteca'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: livros.length,
          itemBuilder: (context, index) {
            final livro = livros[index];
            return Card(
              child: ListTile(
                leading: const Icon(Icons.menu_book),
                title: Text(livro.nome),
                subtitle: Text('${livro.autor} · Seção ${livro.secao}'),
                trailing: Text('Qtd ${livro.quantidade}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
