// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: use_super_parameters, file_names

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/factorial'),
              child: const Text("Calcul de Factoriel"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/parity'),
              child: const Text("Calcul de parité"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pgcd'),
              child: const Text("Calcul de pgcd"),
            ),
          ],
        ),
      ),
    );
  }
}
