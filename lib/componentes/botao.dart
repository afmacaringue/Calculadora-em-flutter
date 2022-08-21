import 'package:flutter/material.dart';

class botao extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final bool cor;
  final void Function(String) result;

  botao(
      {required this.text,
      this.big = false,
      this.cor = true,
      required this.result});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: cor ? DARK : DEFAULT,
        onPressed: () => result(text),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
