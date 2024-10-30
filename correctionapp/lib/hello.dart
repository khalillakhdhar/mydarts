import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  String message = "";
  void sayHello() {
    if (_formKey.currentState!.validate()) {
      String nom = _nomController.text;
      String prenom = _prenomController.text;
      setState(() {
        message = "bonjour $nom $prenom";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nomController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: 'Nom:'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre nom';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _prenomController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: 'Prenom:'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre prenom';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: sayHello,
                  child: Text("Dire hello"),
                ),
                Text(
                  message,
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            )),
      ),
    );
  }
}
