import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accueil")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/imc'),
              child: Text("Calcul de l'IMC"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pressure'),
              child: Text("Calcul de la Pression"),
            ),
          ],
        ),
      ),
    );
  }
}
