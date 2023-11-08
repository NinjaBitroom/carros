import 'package:flutter/material.dart';

class PageCar extends StatefulWidget {
  const PageCar({super.key});

  @override
  State<PageCar> createState() => _PageCarState();
}

class _PageCarState extends State<PageCar> {
  carroItem() => Padding(
        padding: const EdgeInsets.only(right: 8.0),
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 40, 8, 0),
      child: Column(
        children: [
          Container(
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
          ),
          const Card(
            color: Colors.lightBlueAccent,
            child: ListTile(
              title: Text('Carros disponíveis'),
              subtitle: Text('Confira a lista completa'),
              trailing: Card(
                  child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('>'),
              )),
            ),
          ),
          Container(
            color: Colors.black26,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text('Mais acessados'),
                    ],
                  ),
                  Row(
                    children: List.generate(4, (index) => carroItem()),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
