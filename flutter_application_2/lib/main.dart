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
      home: Column(  // Para colocar os Contaners uns em cima do outro, usando um conceito cartesiano.
        
        children: [
          Container(
            color: Colors.red,
            width: 300,
            height: 300,
          ),

        
        Container(
          color: Colors.purple,
          width: 150,
          height: 150,
          ),

        Container(
          color: Colors.blueAccent,
          width: 75,
          height: 75,
          ),

        Container(
          color: Colors.green,
          width: 400,
          height: 20,
          ),  


        ],
      ),
    );
  }
}