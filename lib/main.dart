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
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

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
            Icon(
              Icons.search,
              size: 30,
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                color: Colors.black12,
                child: GridTile(
                  header: Text('Marcas'),
                  child: Text('Ver todas'),
                ),
              ),
              Card(
                color: Colors.lightBlueAccent,
                child: ListTile(
                  title: Text('Carros disponíveis'),
                  subtitle: Text('Confira a lista completa'),
                  trailing: Text('>'),
                ),
              ),
              Card(
                color: Colors.black26,
                child: ListTile(
                  title: Text('Mais acessados'),
                ),
              ),
            ],
          ),
        ));
  }
}
