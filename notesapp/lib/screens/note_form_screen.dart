import 'package:flutter/material.dart';

class NoteFormScreen extends StatefulWidget {
  const NoteFormScreen({super.key});

  @override
  _NoteFormScreenState createState() => _NoteFormScreenState();
}

class _NoteFormScreenState extends State<NoteFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _saveNote() {
    if (_formKey.currentState!.validate()) {
      // Création de la note sous forme de Map
      final newNote = {
        'title': _titleController.text,
        'description': _descriptionController.text,
      };
      Navigator.pop(context, newNote);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajouter une Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Titre'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un titre';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                keyboardType: TextInputType.multiline,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _saveNote,
                child: const Text('Sauvegarder'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
