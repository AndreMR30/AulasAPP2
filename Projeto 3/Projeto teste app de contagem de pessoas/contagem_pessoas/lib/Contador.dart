import 'dart:ui';

import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ContadorState();
}

class ContadorState extends State<Contador> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:
            new AppBar(title: new Text("Pessoas dentro do Estabelecimento")),
        body: new Container(
          padding: const EdgeInsets.all(40),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  hintText: ("Informe a empresa"),
                ),
              ),
              Padding(padding: const EdgeInsets.all(40)),
              new Text(
                "Empresa com $pessoas pessoas agora.",
                style: new TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              Padding(padding: const EdgeInsets.all(40)),
              new Text("Bluetooth Não Conectado",
                  style: new TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.redAccent)),
            ],
          ),
        ),
      ),
    );
  }
}

var pessoas = 0;
