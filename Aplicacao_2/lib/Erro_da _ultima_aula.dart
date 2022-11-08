// Erro da ultima aula, não consegui resolver o código
// vou preferir resolver o erro depois,
// vou copiar o código da última aula, da professora e continuar deste ponto.
// Depois vou comparar os codigos



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
class Task extends StatefulWidget {
  final String frase; // criando um parêmetro final do tipo String, o que pode ser alterado é a "frase"
  const Task(this.frase,{super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0; // Adicionando variável para usar no incremento do level.
  @override

  // Adicionando espaço entre os containes.
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
              child: Stack( // Destro da estruta Stack "pilha" é possível colocar vários filhos, vários containes dentro.
                children: [
                  Container(
                    color: Colors.blue,
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
                        ),
                        
                        // Criando um novo container para colocar o texto dentro e tratar o Overflow p/ o texto não quebrar.
                        Container(
                          width: 200,
                          child: Text(
                            widget.frase,
                            style: TextStyle(
                              fontSize: 24, overflow: TextOverflow.ellipsis),
                            ),
                          ),
                        //Text('Conhecendo Flutter'),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              level++;
                            });
                            print(level);
                          },
                          child: Icon(Icons.arrow_drop_up)),
                        
                      ],
                    ),
                  ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adicionando alinhamento.
                        children: [
                          Container(
                            child: LinearProgressIndicator(
                              color: Colors.white,
                              value: level / 10,
                            ),
                            width: 200,
                          ),
                          Text(
                            'Nível:$level',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),              
                ],
              ),
        ),
      ),
    );
  }
}
//teste