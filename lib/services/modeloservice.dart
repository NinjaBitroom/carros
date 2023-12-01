import 'dart:convert';
import 'package:carros/models/modelo.dart';
import 'package:http/http.dart' as http;

Future<List<Modelo>> getModelos(brandId) async {
  print('Buscando modelos');
  const urlBase = 'https://parallelum.com.br/fipe/api/v2/cars/brands';
  final uri = Uri.parse('$urlBase/$brandId/models');
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    final modelosJson = jsonDecode(response.body) as List<dynamic>;
    return List.generate(
      modelosJson.length,
      (index) => Modelo.fromJson(modelosJson[index]),
    );
  } else {
    throw Exception('Falha ao carregar os modelos');
  }
}
