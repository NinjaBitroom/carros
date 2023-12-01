import 'dart:convert';
import 'package:carros/models/ano.dart';
import 'package:carros/models/carro.dart';
import 'package:carros/models/modelo.dart';
import 'package:carros/services/anoservice.dart';
import 'package:carros/services/marcaservice.dart';
import 'package:carros/services/modeloservice.dart';
import 'package:http/http.dart' as http;

Future<Carro> getCarro(String brandId, String modelId, String yearId) async {
  print('Buscando carro');
  const urlBase = 'https://parallelum.com.br/fipe/api/v2/cars/brands';
  final uri = Uri.parse('$urlBase/$brandId/models/$modelId/years/$yearId');
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    return Carro.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Falha ao carregar o carro');
  }
}

Future<List<Carro>> getCarros() async {
  print('Buscando carros');
  final marcas = await getMarcas();
  List<Modelo> modelos = [];
  List<AnoModelo> anos = [];
  List<Carro> carros = [];
  for (var marca in marcas) {
    modelos = await getModelos(marca.code);
    for (var modelo in modelos) {
      anos = await getAnos(marca.code, modelo.code);
      for (var ano in anos) {
        carros.add(await getCarro(marca.code, modelo.code, ano.code));
      }
    }
  }
  return carros;
}
