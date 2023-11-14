import 'dart:collection';

import 'package:carros/models/carro.dart';
import 'package:flutter/material.dart';

class FavoritosCarros extends ChangeNotifier {
  final List<Carro> _carros = [];

  UnmodifiableListView<Carro> get carros => UnmodifiableListView(_carros);

  void add(Carro carro) {
    _carros.add(carro);
    notifyListeners();
  }

  void remove() {
    
  }
}
