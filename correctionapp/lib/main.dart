import 'package:correctionapp/hello.dart';
import 'package:correctionapp/home.dart';
import 'package:correctionapp/sup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma correction',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/hello': (context) => Hello(),
        '/superieur': (context) => Sup(),
      },
    );
  }
}
