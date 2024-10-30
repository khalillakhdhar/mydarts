import 'package:flutter/material.dart';

class Sup extends StatefulWidget {
  const Sup({Key? key}) : super(key: key);

  @override
  _SupState createState() => _SupState();
}

class _SupState extends State<Sup> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _v1Controller = TextEditingController();
  final TextEditingController _v2Controller = TextEditingController();
  String message = "";
  void Calculesup() {
    if (_formKey.currentState!.validate()) {
      int v1 = int.parse(_v1Controller.text);
      int v2 = int.parse(_v2Controller.text);
      int sup = 0;
      if (v1 > v2)
        sup = v1;
      else
        sup = v2;
      setState(() {
        message = "la valeur $sup est la plus grande";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verification de supérieur"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _v1Controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'V1:'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer un entier';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _v2Controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'V2:'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer un entier';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: Calculesup,
                  child: Text("verifier"),
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
