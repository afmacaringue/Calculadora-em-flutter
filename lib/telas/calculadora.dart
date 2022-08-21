import 'package:calculadora/models/memoria.dart';
import 'package:flutter/material.dart';
import '../componentes/display.dart';
import '../componentes/teclado.dart';

class calculadora extends StatefulWidget {
  @override
  State<calculadora> createState() => _calculadoraState();
}

class _calculadoraState extends State<calculadora> {
  final memoria Memoria = memoria();

  _onPressed(String command) {
    setState(() {
      Memoria.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(children: <Widget>[
        display(Memoria.value),
        teclado(_onPressed),
      ]),
    );
  }
}
