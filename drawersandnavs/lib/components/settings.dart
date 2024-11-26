import 'package:flutter/material.dart';

import 'drawer.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Paramètres')),
      drawer: AppDrawer(),
      body: Center(child: Text('Page des paramètres')),
    );
  }
}
