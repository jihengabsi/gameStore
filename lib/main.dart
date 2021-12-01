import 'package:flutter/material.dart';
import 'package:gamestore/new_home.dart';
import 'package:gamestore/signin.dart';
import 'signup.dart';
import 'product_details.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G-Store ESPRIT',
      home: SignIn(),
      //home: Signup(),
    );
  }
}
