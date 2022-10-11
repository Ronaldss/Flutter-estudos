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
      home: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            color: Colors.red,
            width: 150,
            height: 150,
          ),

        
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
          ),

        Container(
          color: Colors.green,
          width: 1000,
          height: 10,
          ),

        Container(
          color: Colors.green,
          width: 10,
          height: 1000,
          ),  


        ],
      ),
    );
  }
}