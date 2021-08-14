import 'dart:html';

import 'package:contagem_pessoas/contador.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MeuConatador());
}

class MeuConatador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contador de Pessoas",
      theme: new ThemeData(primarySwatch: Colors.red),
      home: Contador(),
    );
  }
}
