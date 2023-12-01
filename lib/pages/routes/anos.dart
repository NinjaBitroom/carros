import 'package:carros/models/ano.dart';
import 'package:carros/models/marca.dart';
import 'package:carros/models/modelo.dart';
import 'package:carros/pages/routes/carrodetalhe.dart';
import 'package:carros/services/anoservice.dart';
import 'package:flutter/material.dart';

class RotaAnos extends StatefulWidget {
  final Marca marca;
  final Modelo modelo;
  const RotaAnos({super.key, required this.marca, required this.modelo});

  @override
  State<RotaAnos> createState() => _RotaAnosState();
}

class _RotaAnosState extends State<RotaAnos> {
  late Future<List<AnoModelo>> anos;

  @override
  void initState() {
    super.initState();
    anos = getAnos(widget.marca.code, widget.modelo.code);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: anos,
      builder: (context, snap) {
        Widget mywidget;
        if (snap.hasData) {
          mywidget = ListView.builder(
            itemCount: snap.data!.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.lightBlueAccent,
                ),
                child: ListTile(
                  title: Text(snap.data![index].code),
                  subtitle: Text(snap.data![index].name),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RotaCarro(
                        marca: widget.marca,
                        modelo: widget.modelo,
                        ano: snap.data![index],
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
            title: Text(widget.modelo.name),
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
