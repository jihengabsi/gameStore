import 'package:flutter/material.dart';
import 'package:gamestore/re_password.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<SignIn> {
  //var
  late String? username;
  late String? password;

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
        title: Text("S'authentifier"),
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
                onSaved: (value) {
                  username = value;
                },
                validator: (value) {
                  if (value!.isEmpty || value.length < 5) {
                    return 'Username ne doit pas etre vide';
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
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
              width: 500,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: ElevatedButton(
                onPressed: () {
                  if (_globalKey.currentState!.validate()) {}
                },
                child: const Text("S'authentifier"),
              ),
            ),
            Container(
              width: 500,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RePassword()),
                  );
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
                child: const Text("Mot de passe oublié ?"),
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Pas encore de compte ?"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "S'inscrire",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
