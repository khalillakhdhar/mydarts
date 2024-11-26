import 'package:flutter/material.dart';

import 'drawer.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      drawer: AppDrawer(),
      body: const Center(child: Text('Page de profil')),
    );
  }
}
