class Carro {
  String modelo;
  String marca;
  String valor;
  String descricao;
  String imgUrl;

  Carro({
    required this.modelo,
    required this.marca,
    required this.valor,
    required this.descricao,
    required this.imgUrl,
  });

  factory Carro.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'model': String model,
        'price': String price,
        'brand': String brand,
      } =>
        Carro(
          modelo: model,
          marca: brand,
          valor: price,
          descricao: 'desc',
          imgUrl: 'imgUrl',
        ),
      _ => throw const FormatException('Erro para carregar o carro.'),
    };
  }
}
