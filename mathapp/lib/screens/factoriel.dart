// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Factoriel extends StatefulWidget {
  const Factoriel({super.key});

  @override
  _FactorielState createState() => _FactorielState();
}

class _FactorielState extends State<Factoriel> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';

  int _calculateFactorial(int n) {
    if (n <= 1) return 1;
    /*
    f=1
    for(i==2;i<=n;i++)
    {
    f=f*i;
    }
    return f;
    */
    return n * _calculateFactorial(n - 1);
  }

  void _showFactorial() {
    final int? number = int.tryParse(_controller.text);
    if (number == null || number < 0) {
      setState(() {
        _result = 'Veuillez entrer un nombre entier positif';
      });
    } else {
      setState(() {
        _result = 'La factorielle est ${_calculateFactorial(number)}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcul Factorielle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  labelText: 'Entrez un nombre entier positif'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _showFactorial,
              child: const Text('Calculer'),
            ),
            Text(_result),
          ],
        ),
      ),
    );
  }
}
