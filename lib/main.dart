import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<Widget> pages = const [
    Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              color: Colors.black12,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Marcas'),
                    trailing: Text('Ver todas'),
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
            Card(
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
            Card(
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
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    Text("2"),
    Text("3"),
  ];
  void _changeIndex(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        title: const Text("InfoCar App"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(child: pages.elementAt(_selectedIndex),),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Principal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _changeIndex,
      ),
    );
  }
}
