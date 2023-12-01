class AnoModelo {
  String code;
  String name;

  AnoModelo({required this.code, required this.name});

  factory AnoModelo.fromJson(Map<String, dynamic> json) {
    print('Carregando ano');
    return switch (json) {
      {
        'code': String code,
        'name': String name,
      } =>
        AnoModelo(
          code: code,
          name: name,
        ),
      _ => throw const FormatException('Erro para carregar o ano.'),
    };
  }
}
