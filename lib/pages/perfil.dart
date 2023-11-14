import 'package:carros/models/carro.dart';
import 'package:carros/models/favoritos_carros.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PagePerfil extends StatefulWidget {
  const PagePerfil({super.key});

  @override
  State<PagePerfil> createState() => _PagePerfilState();
}

class _PagePerfilState extends State<PagePerfil> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Provider.of<FavoritosCarros>(context, listen: false).add(
          Carro(
              modelo: 'modelo',
              marca: 'marca',
              valor: 1000,
              descricao: 'descricao',
              imgUrl: 'imgUrl'),
        );
      },
      child: const Text('Inserir carro'),
    );
  }
}
