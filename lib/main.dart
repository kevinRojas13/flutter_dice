import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int DadoIzquierdo = Random().nextInt(6) + 1; 
  int DadoDerecho = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("DiceApp"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 10.0,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  DadoIzquierdo = Random().nextInt(6) + 1; 
                  
                  setState(() {});
                },
                child: Image.asset(
                  "assets/images/dice$DadoIzquierdo.png",
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                 
                  DadoDerecho = Random().nextInt(6) + 1; 
                  setState(() {});
                },
                child: Image.asset(
                  "assets/images/dice$DadoDerecho.png",
                ),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}