import 'package:flutter/material.dart';

class PageCar extends StatefulWidget {
  const PageCar({super.key});

  @override
  State<PageCar> createState() => _PageCarState();
}

class _PageCarState extends State<PageCar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 40, 8, 0),
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage('images/acuralogo.png'),
                        width: 64,
                      ),
                      Image(
                        image: AssetImage('images/acuralogo.png'),
                        width: 64,
                      ),
                      Image(
                        image: AssetImage('images/acuralogo.png'),
                        width: 64,
                      ),
                      Image(
                        image: AssetImage('images/acuralogo.png'),
                        width: 64,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage('images/acuralogo.png'),
                        width: 64,
                      ),
                      Image(
                        image: AssetImage('images/acuralogo.png'),
                        width: 64,
                      ),
                      Image(
                        image: AssetImage('images/acuralogo.png'),
                        width: 64,
                      ),
                      Image(
                        image: AssetImage('images/acuralogo.png'),
                        width: 64,
                      ),
                    ],
                  ),
                  SizedBox(
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
          const Card(
            color: Colors.black26,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Mais acessados'),
                  ),
                  Row(
                    children: [
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
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
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
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
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
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
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
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
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
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
                    ],
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
