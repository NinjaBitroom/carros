import 'package:flutter/material.dart';

class Marcas extends StatefulWidget {
  const Marcas({super.key});

  @override
  State<Marcas> createState() => _MarcasState();
}

class _MarcasState extends State<Marcas> {
  marcaItem(String titulo) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/acuralogo.png',
              width: 48,
            ),
            Text(
              titulo,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Marcas',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Ver todas',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      decorationColor: Colors.blue,
                      decorationThickness: 2.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              shrinkWrap: true,
              children: List.generate(
                8,
                (index) => marcaItem('Acura'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
