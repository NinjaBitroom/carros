import 'dart:collection';
import 'package:carros/models/simple_car.dart';
import 'package:flutter/material.dart';

class FavoritosCarros extends ChangeNotifier {
  final List<SimpleCar> _carros = [];

  UnmodifiableListView<SimpleCar> get carros => UnmodifiableListView(_carros);

  void add(SimpleCar carro) {
    _carros.add(carro);
    notifyListeners();
  }

  void remove(SimpleCar carro) {
    _carros.remove(carro);
    notifyListeners();
  }
}
