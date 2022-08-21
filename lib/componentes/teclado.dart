import 'package:flutter/material.dart';
import 'botao.dart';
import 'botao_row.dart';

class teclado extends StatelessWidget {
  final void Function(String) result;

  teclado(this.result);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          botaorow([
            botao(text: 'AC', big: true, result: result),
            botao(text: '%', result: result),
            botao(text: '/', cor: false, result: result)
          ]),
          botaorow([
            botao(text: '7', result: result),
            botao(text: '8', result: result),
            botao(text: '9', result: result),
            botao(text: 'x', cor: false, result: result),
          ]),
          botaorow([
            botao(text: '4', result: result),
            botao(text: '5', result: result),
            botao(
              text: '6',
              result: result,
            ),
            botao(text: '-', cor: false, result: result),
          ]),
          botaorow([
            botao(text: '1', result: result),
            botao(text: '2', result: result),
            botao(text: '3', result: result),
            botao(text: '+', cor: false, result: result),
          ]),
          botaorow([
            botao(text: '0', big: true, result: result),
            botao(text: '.', result: result),
            botao(text: '=', cor: false, result: result),
          ]),
        ],
      ),
    );
  }
}
