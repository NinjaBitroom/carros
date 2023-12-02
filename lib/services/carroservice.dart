import 'dart:convert';
import 'package:carros/models/carro.dart';
import 'package:http/http.dart' as http;

Future<Carro> getCarro(String brandId, String modelId, String yearId) async {
  const urlBase = 'https://parallelum.com.br/fipe/api/v2/cars/brands';
  final uri = Uri.parse('$urlBase/$brandId/models/$modelId/years/$yearId');
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    return Carro.fromJson(jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>);
  } else {
    throw Exception('Falha ao carregar o carro');
  }
}
