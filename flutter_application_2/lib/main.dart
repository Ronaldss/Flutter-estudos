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
        children: [
          Container(
            color: Colors.red,
          ),

        
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
          ),
        ],
      ),
    );
  }
}