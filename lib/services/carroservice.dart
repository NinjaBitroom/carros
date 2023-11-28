import 'dart:convert';

import 'package:carros/models/carro.dart';
import 'package:http/http.dart' as http;

Future<Carro> getCar(String brandId, String modelId, String year) async {
  final response = await http.get(Uri.parse(''));
  if (response.statusCode == 200) {
    return Carro.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('eeee');
  }
}
