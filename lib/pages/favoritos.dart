import 'package:carros/models/favoritos_carros.dart';
import 'package:carros/pages/routes/carrodetalhe.dart';
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
            title: Text(
                '${value.carros[index].marca.name} ${value.carros[index].modelo.name}'),
            subtitle: Text(value.carros[index].ano.name),
            trailing: ElevatedButton(
              onPressed: () {
                Provider.of<FavoritosCarros>(context, listen: false)
                    .remove(value.carros[index]);
              },
              child: const Icon(Icons.highlight_remove),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RotaCarro(
                    marca: value.carros[index].marca,
                    modelo: value.carros[index].modelo,
                    ano: value.carros[index].ano),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
