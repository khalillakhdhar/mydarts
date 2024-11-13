import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Liste des notes
  List<Map<String, String>> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestion de Notes'),
      ),
      body: notes.isEmpty
          ? const Center(
              child: Text(
                'Aucune note ajoutée',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(notes[index]['title'] ?? ''),
                  subtitle: Text(notes[index]['description'] ?? ''),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navigation vers le formulaire de note et récupération de la nouvelle note
          final result = await Navigator.pushNamed(context, '/noteForm');
          if (result != null && result is Map<String, String>) {
            setState(() {
              notes.add(result);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
