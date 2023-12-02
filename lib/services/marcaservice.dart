import 'dart:convert';
import 'package:carros/models/marca.dart';
import 'package:http/http.dart' as http;

Future<List<Marca>> getMarcas() async {
  final URI = Uri.parse('https://parallelum.com.br/fipe/api/v2/cars/brands');
  final response = await http.get(URI);
  if (response.statusCode == 200) {
    final marcasJson = jsonDecode(utf8.decode(response.bodyBytes)) as List<dynamic>;
    return List.generate(
      marcasJson.length,
      (index) => Marca.fromJson(marcasJson[index]),
    );
  } else {
    throw Exception('Falha ao carregar as marcas');
  }
}
