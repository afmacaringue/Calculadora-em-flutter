import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'botao.dart';

class botaorow extends StatelessWidget {
  final List<botao> butoes;
  botaorow(this.butoes);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: butoes,
      ),
    );
  }
}
