import 'package:carros/models/favoritos_carros.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageFavoritos extends StatefulWidget {
  const PageFavoritos({super.key});

  @override
  State<PageFavoritos> createState() => _PageFavoritosState();
}

class _PageFavoritosState extends State<PageFavoritos> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoritosCarros>(
      builder: (context, value, child) => ListView.builder(
        itemCount: value.carros.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: Colors.amberAccent,
            leading: Image.asset('images/download.jpeg'),
            title: Text(value.carros[index].marca),
            subtitle: Text(
              '${value.carros[index].modelo} ${value.carros[index].descricao}',
            ),
            trailing: Text('R\$ ${value.carros[index].valor}'),
          ),
        ),
      ),
    );
  }
}
