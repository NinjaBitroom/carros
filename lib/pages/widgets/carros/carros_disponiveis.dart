import 'package:flutter/material.dart';

class CarrosDisponiveis extends StatefulWidget {
  const CarrosDisponiveis({super.key});

  @override
  State<CarrosDisponiveis> createState() => _CarrosDisponiveisState();
}

class _CarrosDisponiveisState extends State<CarrosDisponiveis> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: const Text('Carros disponíveis'),
          subtitle: const Text('Confira a lista completa'),
          trailing: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 50,
            height: 50,
            child: const Center(
              child: Text(
                '>',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
