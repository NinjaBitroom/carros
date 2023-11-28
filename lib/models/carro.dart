class Carro {
  String modelo;
  String marca;
  double valor;
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
          valor: 0,
          descricao: 'desc',
          imgUrl: 'imgUrl',
        ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}
