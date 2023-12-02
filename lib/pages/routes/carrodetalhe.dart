import 'package:carros/models/ano.dart';
import 'package:carros/models/carro.dart';
import 'package:carros/models/favoritos_carros.dart';
import 'package:carros/models/marca.dart';
import 'package:carros/models/modelo.dart';
import 'package:carros/models/simple_car.dart';
import 'package:carros/services/carroservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
              Text(
                '${snap.data!.brand} ${snap.data!.model} ${snap.data!.modelYear}',
                textScaleFactor: 2,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Código FIPE: ${snap.data!.codeFipe}',
                textScaleFactor: 1.5,
              ),
              Text(
                'Combustível: ${snap.data!.fuel}(${snap.data!.fuelAcronym})',
                textScaleFactor: 1.5,
              ),
              Text(
                'Preço: ${snap.data!.price}',
                textScaleFactor: 1.5,
              ),
              Text(
                'Mês de referência: ${snap.data!.referenceMonth}',
                textScaleFactor: 1.5,
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<FavoritosCarros>(context, listen: false).add(
                    SimpleCar(
                      marca: widget.marca,
                      ano: widget.ano,
                      modelo: widget.modelo,
                    ),
                  );
                },
                child: const Text('Favoritar'),
              )
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
