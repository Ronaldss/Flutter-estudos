import 'package:flutter/material.dart';

void main() => runApp(
  Column(
    children: const <Widget>[
      Text('Texto 01', textDirection: TextDirection.ltr),
      Text('Texto 02', textDirection: TextDirection.ltr),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: FlutterLogo(),
          ),
        ),
    ],
  ),
);

