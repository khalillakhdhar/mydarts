import 'package:flutter/material.dart';

import 'home_page.dart';
import 'imc_page.dart';
import 'pressure_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC & Pression',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/imc': (context) => ImcPage(),
        '/pressure': (context) => PressurePage(),
      },
    );
  }
}
