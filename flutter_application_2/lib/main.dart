import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold( 
        appBar: AppBar(
          title: Text('Flutter: Curso de Flutter'),
        ),
        body: Container(
          color: Colors.pink,  
        ),
      ), // Scaffold - Estrutura onde conseguimos ter uma divisão com começo, meio e fim. Um Containner não permite ter essa estrutura de começo, meio e fim.
    );
  }
}