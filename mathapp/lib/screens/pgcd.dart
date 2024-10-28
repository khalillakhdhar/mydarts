// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Pgcd extends StatefulWidget {
  @override
  _PgcdState createState() => _PgcdState();
}

class _PgcdState extends State<Pgcd> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _result = '';

  int _calculateGCD(int a, int b) {
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }

  void _showGCD() {
    final int? number1 = int.tryParse(_controller1.text);
    final int? number2 = int.tryParse(_controller2.text);

    if (number1 == null || number2 == null || number1 <= 0 || number2 <= 0) {
      setState(() {
        _result = 'Veuillez entrer deux nombres entiers positifs';
      });
    } else {
      setState(() {
        _result = 'Le PGCD est ${_calculateGCD(number1, number2)}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcul du PGCD'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller1,
              decoration: const InputDecoration(
                  labelText: 'Entrez le premier nombre entier positif'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _controller2,
              decoration: const InputDecoration(
                  labelText: 'Entrez le deuxième nombre entier positif'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _showGCD,
              child: const Text('Calculer'),
            ),
            Text(_result),
          ],
        ),
      ),
    );
  }
}
