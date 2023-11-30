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
    carro = getCar('7', '6146', '2015-1');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: carro,
        builder: (context, snap) {
          if (snap.hasData) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.lightBlueAccent,
                    ),
                    child: ListTile(
                      title: Text(snap.data!.marca),
                      subtitle: Text(snap.data!.modelo),
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('images/download.jpeg'),
                        radius: 25,
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else if (snap.hasError) {
            return Text('${snap.error}');
          }
          return const CircularProgressIndicator();
        });
  }
}
