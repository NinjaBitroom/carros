import 'package:carros/models/ano.dart';
import 'package:carros/models/marca.dart';
import 'package:carros/models/modelo.dart';

class SimpleCar {
  final Marca marca;
  final Modelo modelo;
  final AnoModelo ano;

  SimpleCar({required this.marca, required this.ano, required this.modelo});
}
