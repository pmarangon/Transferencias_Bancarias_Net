import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Aula 3",
        ThemeData(primaryColor: Colors.blue),
        home: Container(color: Colors.white));
  }
}
