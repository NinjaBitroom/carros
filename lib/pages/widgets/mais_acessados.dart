import 'package:flutter/material.dart';

class MaisAcessados extends StatefulWidget {
  const MaisAcessados({super.key});

  @override
  State<MaisAcessados> createState() => _MaisAcessadosState();
}

class _MaisAcessadosState extends State<MaisAcessados> {
  carroItem() => Padding(
        padding: const EdgeInsets.fromLTRB(0, 12, 8, 0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/download.jpeg'),
                  width: 64,
                ),
                Text('INTEGRA'),
                Text('Acura'),
                Text('\$31,500+'),
              ],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text('Mais acessados'),
              ],
            ),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) => carroItem()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
