import 'package:flutter/material.dart';

class FormulaireExemple extends StatefulWidget {
  const FormulaireExemple({super.key});

  @override
  _FormulaireExempleState createState() => _FormulaireExempleState();
}

class _FormulaireExempleState extends State<FormulaireExemple> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  String? _selectedOption = 'Option 1';
  bool _isAccepted = false;
  int _selectedRadio = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exemple de Formulaire Flutter')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nom'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre nom';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                value: _selectedOption,
                items: ['Option 1', 'Option 2', 'Option 3']
                    .map((option) => DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Accepter les termes'),
                value: _isAccepted,
                onChanged: (value) {
                  setState(() {
                    _isAccepted = value!;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Formulaire valide')),
                    );
                  }
                },
                child: Text('Soumettre'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
