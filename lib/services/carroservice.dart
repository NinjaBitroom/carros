import 'dart:convert';

import 'package:carros/models/carro.dart';
import 'package:http/http.dart' as http;

Future<Carro> getCar(String brandId, String modelId, String year) async {
  final response = await http.get(Uri.parse('https://parallelum.com.br/fipe/api/v2/cars/brands/$brandId/models/$modelId/years/$year'));
  if (response.statusCode == 200) {
    return Carro.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Falha ao carregar o carro');
  }
}
