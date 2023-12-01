class Modelo {
  String code;
  String name;

  Modelo({required this.code, required this.name});

  factory Modelo.fromJson(Map<String, dynamic> json) {
    print('Carregando modelo');
    return switch (json) {
      {
        'code': String code,
        'name': String name,
      } =>
        Modelo(
          code: code,
          name: name,
        ),
      _ => throw const FormatException('Erro para carregar o modelo.'),
    };
  }
}
