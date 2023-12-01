import 'dart:convert';
import 'package:carros/models/ano.dart';
import 'package:http/http.dart' as http;

Future<List<AnoModelo>> getAnos(brandId, modelId) async {
  print('Buscando anos');
  const urlBase = 'https://parallelum.com.br/fipe/api/v2/cars/brands';
  final uri = Uri.parse('$urlBase/$brandId/models/$modelId/years');
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    final anosJson = jsonDecode(response.body) as List<dynamic>;
    return List.generate(
      anosJson.length,
      (index) => AnoModelo.fromJson(anosJson[index]),
    );
  } else {
    throw Exception('Falha ao carregar os anos');
  }
}
