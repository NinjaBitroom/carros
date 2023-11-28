import 'package:carros/models/carro.dart';
import 'package:carros/models/favoritos_carros.dart';
import 'package:carros/services/carroservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PagePerfil extends StatefulWidget {
  const PagePerfil({super.key});

  @override
  State<PagePerfil> createState() => _PagePerfilState();
}

class _PagePerfilState extends State<PagePerfil> {
  late Future<Carro> carro;

  @override
  void initState() {
    super.initState();
    carro = getCar();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: carro,
        builder: (context, snap) {
          if (snap.hasData) {
            return Column(
              children: [Text(snap.data!.marca)],
            );
          } else if (snap.hasData) {
            // ...
          }
        });
  }
}
