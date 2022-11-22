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
            Task('Ronald Santos', 'https://avatars.githubusercontent.com/u/33934560?v=4'),
            Task('Flutter', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZznbcLRENShYNmDgA4vWkLl6-NGn40M2Iz-xlnjQHY3HKh9TyVrQ3-P-XgiPsqsev8gY&usqp=CAU'),
            Task('Javascript', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/1200px-Unofficial_JavaScript_logo_2.svg.png'),
            Task('CSS3','https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/CSS3_logo_and_wordmark.svg/1452px-CSS3_logo_and_wordmark.svg.png'),
            Task('HTML5', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpngGRjYX1ca7qAADU3K6eGLj7ShQE3L2otdzfryl_Y9Ht2QRoQKYQbsXd36XIxMbYOw0&usqp=CAU'),
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
                          widget.foto,
                          scale: 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              widget.frase,
                              style: TextStyle(
                                  fontSize: 24, overflow: TextOverflow.ellipsis),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, size: 15, color: Colors.blue,),
                              Icon(Icons.star, size: 15, color: Colors.blue,),
                              Icon(Icons.star, size: 15, color: Colors.blue,),
                              Icon(
                                Icons.star, 
                                size: 15, 
                                color: Colors.blue[100],
                                ),
                                Icon(
                                Icons.star, 
                                size: 15, 
                                color: Colors.blue[50],
                                ),
                              
                            ],
                          ),
                        ],
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

// teste 3