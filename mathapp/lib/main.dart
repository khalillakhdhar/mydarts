import 'package:flutter/material.dart';
import 'package:mathapp/screens/Homepage.dart';
import 'package:mathapp/screens/factoriel.dart';
import 'package:mathapp/screens/parite.dart';
import 'package:mathapp/screens/pgcd.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calcule Mathématiques',
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/parity': (context) => Parite(),
        '/factorial': (context) => Factoriel(),
        '/pgcd': (context) => Pgcd(),
      },
    );
  }
}
