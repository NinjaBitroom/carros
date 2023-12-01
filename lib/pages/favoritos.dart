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
            leading: Image.asset(
              'images/download.jpeg',
              centerSlice: Rect.largest,
              width: 64,
              height: 64,
            ),
            title: Text(value.carros[index].brand),
            subtitle: Text(value.carros[index].model),
            trailing: Text(value.carros[index].price),
          ),
        ),
      ),
    );
  }
}
