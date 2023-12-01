import 'package:carros/models/ano.dart';
import 'package:carros/models/carro.dart';
import 'package:carros/models/marca.dart';
import 'package:carros/models/modelo.dart';
import 'package:carros/services/carroservice.dart';
import 'package:flutter/material.dart';

class RotaCarro extends StatefulWidget {
  final Marca marca;
  final Modelo modelo;
  final AnoModelo ano;

  const RotaCarro(
      {super.key,
      required this.marca,
      required this.modelo,
      required this.ano});

  @override
  State<RotaCarro> createState() => _RotaCarroState();
}

class _RotaCarroState extends State<RotaCarro> {
  late Future<Carro> carro;

  @override
  void initState() {
    super.initState();
    carro = getCarro(widget.marca.code, widget.modelo.code, widget.ano.code);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: carro,
      builder: (context, snap) {
        Widget mywidget;
        if (snap.hasData) {
          mywidget = Column(
            children: [
              Image.asset('images/download.jpeg'),
              Text('${snap.data!.brand} ${snap.data!.model} ${snap.data!.modelYear}'),
              Text('Código FIPE: ${snap.data!.codeFipe}'),
              Text('Combustível: ${snap.data!.fuel}(${snap.data!.fuelAcronym})'),
              Text('Preço: ${snap.data!.price}'),
              Text('Mês de referência: ${snap.data!.referenceMonth}'),
            ],
          );
        } else if (snap.hasError) {
          mywidget = Text('${snap.error}');
        } else {
          mywidget = const CircularProgressIndicator();
        }
        return Scaffold(
          appBar: AppBar(
            title: Text('${widget.modelo.name} ${widget.ano.name}'),
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
