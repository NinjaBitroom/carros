import 'package:carros/models/marca.dart';
import 'package:carros/models/modelo.dart';
import 'package:carros/pages/routes/anos.dart';
import 'package:carros/services/modeloservice.dart';
import 'package:flutter/material.dart';

class RotaModelos extends StatefulWidget {
  final Marca marca;
  const RotaModelos({super.key, required this.marca});

  @override
  State<RotaModelos> createState() => _RotaModelosState();
}

class _RotaModelosState extends State<RotaModelos> {
  late Future<List<Modelo>> modelos;

  @override
  void initState() {
    super.initState();
    modelos = getModelos(widget.marca.code);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: modelos,
      builder: (context, snap) {
        Widget mywidget;
        if (snap.hasData) {
          print('modelos.dart -> snap.hasData: ${snap.hasData}');
          print('len -> ${snap.data!.length}');
          mywidget = ListView.builder(
            itemCount: snap.data!.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.lightBlueAccent,
                ),
                child: ListTile(
                  title: Text(snap.data![index].name),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RotaAnos(
                        marca: widget.marca,
                        modelo: snap.data![index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        } else if (snap.hasError) {
          mywidget = Text('${snap.error}');
        } else {
          mywidget = const CircularProgressIndicator();
        }
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.marca.name),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: mywidget,
            ),
          ),
        );
      },
    );
  }
}
