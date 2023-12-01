import 'package:carros/models/marca.dart';
import 'package:carros/pages/routes/modelos.dart';
import 'package:flutter/material.dart';

class ListaMarcas extends StatefulWidget {
  final AsyncSnapshot<List<Marca>> snap;
  final int index;

  const ListaMarcas({
    super.key,
    required this.snap,
    required this.index,
  });

  @override
  State<ListaMarcas> createState() => _ListaMarcasState();
}

class _ListaMarcasState extends State<ListaMarcas> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.lightBlueAccent,
        ),
        child: ListTile(
          title: Text(widget.snap.data![widget.index].name),
          leading: const CircleAvatar(
            backgroundImage: AssetImage('images/acuralogo.png'),
            radius: 20,
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RotaModelos(
                marca: widget.snap.data![widget.index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
