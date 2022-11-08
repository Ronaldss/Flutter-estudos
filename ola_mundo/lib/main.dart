// ignore_for_file: prefer_const_constructors

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
          title: Text('IFAL: Curso de Flutter'),
        ),
        body: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Task('Iniciando o Curso', ''),
            Task('Fazendo o Curso', ''),
            Task('Finalizando o Curso', ''),
            Task('Iniciando o Curso', ''),
            Task('Finalizando o Curso', ''),
            Task('Iniciando o Curso', ''),
            Task('Finalizando o Curso', ''),
            Task('Iniciando o Curso', ''),
            Task('Finalizando o Curso', ''),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String frase;
  final String foto;

  const Task(this.frase, this.foto, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0; //começando o level em 0
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.pink,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                        child: Image.network(
                          'https://miro.medium.com/max/700/1*rb3JJRN2YfybijTcxQiiUQ.png',
                          scale: 0.5,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          widget.frase,
                          style: TextStyle(
                              fontSize: 24, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  level++;
                                });
                                print(level); //Verificar se o level esta mudando
                              },
                              child: Column(
                                children: [
                                  Icon(Icons.arrow_drop_up),
                                  Text('UP', style: TextStyle(fontSize: 12),)
                                ],
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: level / 10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Nível:$level', //Chamando a variavel level
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// teste 2