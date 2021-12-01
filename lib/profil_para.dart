import 'package:flutter/material.dart';
import 'package:gamestore/panier.dart';

class Profilpara extends StatefulWidget {
  const Profilpara({Key? key}) : super(key: key);

  @override
  _paraProfilState createState() => _paraProfilState();
}

class _paraProfilState extends State<Profilpara> {
  //var
  late String? password;
  late String? validPassword;
  late String? address;
  //key
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  //Life cycle
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Réinitialiser le mot de passe"),
      ),
      body: Form(
        key: _globalKey,
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Image.asset('assets/images/minecraft.jpg'),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                obscureText: true,
                onSaved: (value) {
                  password = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Mot de passe ne doit pas etre vide';
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Mot de passe"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                obscureText: true,
                onSaved: (value) {
                  password = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Mot de passe ne doit pas etre vide';
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Mot de passe"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: TextFormField(
                onSaved: (value) {
                  address = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Adresse de facturation ne doit pas etre vide';
                  }
                },
                maxLines: 4,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Adresse de facturation"),
              ),
            ),
            Container(
              width: 500,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: ElevatedButton(
                onPressed: () {
                  if (_globalKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Panier()),
                    );
                  }
                },
                child: const Text("Enregistrer"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
