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
        body: AnimatedOpacity(
          opacity: 1,
          duration: Duration(milliseconds: 5000),
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Task('Ronald Santos', 'https://avatars.githubusercontent.com/u/33934560?v=4', 5),
              Task('Flutter', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZznbcLRENShYNmDgA4vWkLl6-NGn40M2Iz-xlnjQHY3HKh9TyVrQ3-P-XgiPsqsev8gY&usqp=CAU', 4),
              Task('Javascript', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/1200px-Unofficial_JavaScript_logo_2.svg.png', 3),
              Task('CSS3','https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/CSS3_logo_and_wordmark.svg/1452px-CSS3_logo_and_wordmark.svg.png', 2),
              Task('HTML5', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpngGRjYX1ca7qAADU3K6eGLj7ShQE3L2otdzfryl_Y9Ht2QRoQKYQbsXd36XIxMbYOw0&usqp=CAU', 1),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String frase;
  final String foto;
  final int dificuldade;

  const Task(this.frase, this.foto, this.dificuldade, {super.key});

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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.pink,
              ),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black26,
                        ),                       
                        width: 72,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                            widget.foto,
                            scale: 0.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                              Icon(
                                Icons.star, 
                                size: 15, 
                                color: (widget.dificuldade >= 5) ? Colors.blue : Colors.blue[100]),
                              Icon(
                                Icons.star, 
                                size: 15, 
                                color: (widget.dificuldade >= 4) ? Colors.blue : Colors.blue[100]),
                              Icon(
                                Icons.star, 
                                size: 15, 
                                color: (widget.dificuldade >= 3) ? Colors.blue : Colors.blue[100]),
                              Icon(
                                Icons.star, 
                                size: 15, 
                                color: (widget.dificuldade >= 2) ? Colors.blue : Colors.blue[100]),
                              
                              Icon(
                                Icons.star, 
                                size: 15, 
                                color: (widget.dificuldade >= 1) ? Colors.blue : Colors.blue[100]),
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
                          value: (widget.dificuldade > 0) ? (level / widget.dificuldade) / 10 : 1,
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