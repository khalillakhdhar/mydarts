// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Parite extends StatefulWidget {
  @override
  _PariteState createState() => _PariteState();
}

class _PariteState extends State<Parite> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';

  void _checkParity() {
    final int? number = int.tryParse(_controller.text);
    if (number == null) {
      setState(() {
        _result = 'Veuillez entrer un nombre valide';
      });
    } else {
      setState(() {
        _result =
            (number % 2 == 0) ? 'Le nombre est Pair' : 'Le nombre est Impair';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcul de Parité'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration:
                  const InputDecoration(labelText: 'Entrez un nombre entier'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _checkParity,
              child: const Text('Vérifier'),
            ),
            Text(_result),
          ],
        ),
      ),
    );
  }
}
