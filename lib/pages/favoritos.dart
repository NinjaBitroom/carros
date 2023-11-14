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
        itemBuilder: (context, index) =>
            Text("${value.carros[index].marca}: ${value.carros[index].modelo}"),
      ),
    );
  }
}
