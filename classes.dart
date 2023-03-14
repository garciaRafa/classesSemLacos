class Item {
  Produto produto;
  int quantidade;

  Item({required this.produto, required this.quantidade});

  double get precoTotal => produto.preco * quantidade;
}

class Produto {
  String nome;
  double preco;

  Produto({required this.nome, required this.preco});
}

class Venda {
  List<Item> itens;

  Venda({required this.itens});

  double get total => itens.fold(0, (valor, item) => valor + item.precoTotal);
}
