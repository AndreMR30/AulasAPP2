//import 'package:contagem_pessoas/QiFaculdade.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Contador extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ContadorState();
}

class ContadorState extends State<Contador> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            title: new Text("Contagem de Pessoas")),
        body: new Container(
          padding: const EdgeInsets.all(45),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new TextField(
                //controller: campoEmpresa,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.apartment),
                  hintText: ("Informe a empresa"),
                ),
              ),
              Padding(padding: const EdgeInsets.all(5)),

              // new Container(
              //  child: QiFaculdade(),
              // )

              new Text(
                "Empresa ABERTA agora \n Capacidade de 300 pessoas \n Agora $pessoas pessoas no local.",
                style: new TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              Padding(padding: const EdgeInsets.all(40)),
              //new Text("Bluetooth Não Conectado",
              //    style: new TextStyle(
              //    fontSize: 16,
              //   fontWeight: FontWeight.normal,
              //   color: Colors.redAccent)),
            ],
          ),
        ),
      ),
    );
  }
}

var pessoas = 120;
