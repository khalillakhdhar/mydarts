import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accueil")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/superieur'),
              child: Text("Calcul la valeur supérieur"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/hello'),
              child: Text("Afficher le message"),
            ),
          ],
        ),
      ),
    );
  }
}
