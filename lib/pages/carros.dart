import 'package:carros/pages/widgets/carros/carros_disponiveis.dart';
import 'package:carros/pages/widgets/carros/mais_acessados.dart';
import 'package:carros/pages/widgets/carros/marcas.dart';
import 'package:flutter/material.dart';

class PageCar extends StatefulWidget {
  const PageCar({super.key});

  @override
  State<PageCar> createState() => _PageCarState();
}

class _PageCarState extends State<PageCar> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(8, 40, 8, 0),
      child: Column(
        children: [
          Marcas(),
          CarrosDisponiveis(),
          MaisAcessados(),
        ],
      ),
    );
  }
}
