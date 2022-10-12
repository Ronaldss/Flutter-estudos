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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),

        
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ],
          ),
          
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),

        
              Container(
                color: Colors.purple,
                width: 50,
                height: 50,
              ),
            ],
          ),
        Row(
          children: [
            Container(
              color: Colors.pink,
              height: 50,
              width: 50,
            ),
            Container(
              color: Colors.yellow,
              height: 50,
              width: 50,
            ),
            Container(
              color: Colors.blue,
              height: 50,
              width: 50,
            ),
        ],)

        ],
      ),
    );
  }
}