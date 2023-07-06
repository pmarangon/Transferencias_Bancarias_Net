import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current; // ← Add this.

    return Scaffold(
      body: Column(
        children: [
          Text(BigCard),
          Text(pair.asLowerCase), // ← Change to this.
          ElevatedButton.stylefrom(primary: Colors.blue)
            onPressed: () {
              appState.getNext();
            },
            child: Text('Entrar'),
          ),
        ],
      ),
    );
  }
   Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),

  class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    return Text(pair.asLowerCase);
  }
};
}
