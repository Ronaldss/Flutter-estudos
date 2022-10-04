import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      body: Card(
        child: Column(
          children: <Widget>[
            Text('Ronald Santos 1'),
            Text('Ronald Santos 2'),
            Text('Ronald Santos 3'),
            Text('Ronald Santos 4'),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.camera_alt),
        ),
    )
  ),
);


// 