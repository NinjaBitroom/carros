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
  late Future<List<Carro>> carros;

  @override
  void initState() {
    super.initState();
    carros = getCarros();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: carros,
        builder: (context, snap) {
          if (snap.hasData) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: snap.data!.length,
                itemBuilder: (context, index) =>
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.lightBlueAccent,
                    ),
                    child: ListTile(
                      title: Text('${snap.data![index].brand} ${snap.data![index].model} ${snap.data![index].codeFipe}'),
                      subtitle: Text(snap.data![index].price),
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('images/download.jpeg'),
                        radius: 25,
                      ),
                    ),
                  ),
                
              ),
            );
          } else if (snap.hasError) {
            return Text('${snap.error}');
          }
          return const CircularProgressIndicator();
        });
  }
}
