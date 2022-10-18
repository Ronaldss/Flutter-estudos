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
          child: Stack( // Destro da estruta Stack "pilha" é possível colocar vários filhos, vários containes dentro.
            children: [
              Container(
                color: Colors.blue,
                height: 140,
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    Text('Conhecendo Flutter'),
                    ElevatedButton(
                      onPressed: () {}, child: Icon(Icons.arrow_drop_up)),
                    
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ), // Scaffold - Estrutura onde conseguimos ter uma divisão com começo, meio e fim. Um Containner não permite ter essa estrutura de começo, meio e fim.
    );
  }
}