// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemple listeview',
      home: DynamicListView(),
    );
  }
}

class DynamicListView extends StatefulWidget {
  const DynamicListView({super.key});

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<DynamicListView> {
  final List<String> candidats = ['Mariem', 'Marwa'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("les listes dynamiques")),
        body: ListView.builder(
          itemCount: candidats.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(candidats[index]),
              subtitle: Text("Utilisateur ${index + 1}"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("vous avez choisit: ${candidats[index]}")));
              },
            );
          },
        ));
  }
}
