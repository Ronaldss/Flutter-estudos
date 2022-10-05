import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      body: Column(
        children: <Widget>[
        Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('100.0'),
          subtitle: Text('1000'),
        ),
      ),
      Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('200.0'),
          subtitle: Text('1000'),
        ),
      ),
        ]
      ), 
      appBar: AppBar(
        // Alterando a cor do Título
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 193, 4, 20),
        ),

        title: Text('Transferências'),
        backgroundColor: Colors.deepOrange [200],
      ),

      floatingActionButtonLocation: 
        FloatingActionButtonLocation.centerDocked,

      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.red,

              child: Icon(Icons.remove),
              ),
              const Spacer(),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
                ),
        ],
        ),
        ),
    )
  ),
);




// 