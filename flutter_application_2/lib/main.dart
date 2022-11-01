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
        body: ListView(
         children:[
          Task('Iniciando o Curso'),
          Task('Fazendo o Curso'),
          Task('Finalizando o curso'),
          Task('Iniciando o Curso'),
          Task('Fazendo o Curso'),
          Task('Finalizando o curso'),
          Task('Iniciando o Curso'),
          Task('Fazendo o Curso'),
          Task('Finalizando o curso'),
          Task('Iniciando o Curso'),
          Task('Fazendo o Curso'),
          Task('Finalizando o curso'),
          Task('Iniciando o Curso'),
          Task('Fazendo o Curso'),
          Task('Finalizando o curso'),
          Task('Iniciando o Curso'),
          Task('Fazendo o Curso'),
          Task('Finalizando o curso'),
          Task('Iniciando o Curso'),
          Task('Fazendo o Curso'),
          Task('Finalizando o curso'),
         ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ), // Scaffold - Estrutura onde conseguimos ter uma divisão com começo, meio e fim. Um Containner não permite ter essa estrutura de começo, meio e fim.
    );
  }
}


//Classe que usaremos para ficar repetindo a estrutua das linhas que foi criada no inicio.
class Task extends StatelessWidget {
  final String frase; // criando um parêmetro final do tipo String, o que pode ser alterado é a "frase"
  const Task(this.frase,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        

    );
  }
}