import 'package:flutter/material.dart';

import 'drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accueil')),
      drawer: AppDrawer(),
      body: const Center(child: Text("Bienvenue sur la page d'accueil")),
    );
  }
}
