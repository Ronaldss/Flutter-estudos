import 'package:flutter/material.dart';

void main() => runApp(
  Column(
    children:  <Widget>[
      const Text('Ronald Santos', textDirection: TextDirection.ltr),
      const Text('Curso de Flutter', textDirection: TextDirection.ltr),
      const Text('Ifal', textDirection: TextDirection.ltr),
      /*Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: FlutterLogo(),
          ),
        ),teste*/
        Column(
          children: const<Widget>[
            Text('Outro texto', textDirection: TextDirection.ltr),
          ],
        )
    ],  
  ),
);

