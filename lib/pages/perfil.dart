import 'package:carros/models/marca.dart';
import 'package:carros/pages/widgets/perfil/marcas.dart';
import 'package:carros/services/marcaservice.dart';
import 'package:flutter/material.dart';

class PagePerfil extends StatefulWidget {
  const PagePerfil({super.key});

  @override
  State<PagePerfil> createState() => _PagePerfilState();
}

class _PagePerfilState extends State<PagePerfil> {
  late Future<List<Marca>> marcas;

  @override
  void initState() {
    super.initState();
    marcas = getMarcas();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: marcas,
        builder: (context, snap) {
          if (snap.hasData) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: snap.data!.length,
                itemBuilder: (context, index) =>
                  ListaMarcas(snap: snap, index: index),
              ),
            );
          } else if (snap.hasError) {
            return Text('${snap.error}');
          }
          return const CircularProgressIndicator();
        });
  }
}
