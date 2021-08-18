import 'package:agenda_contato/View/Home.dart';
import 'package:agenda_contato/View/Recursos/estilo.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "Agenda de Contatos",
      home: new Home(),
      debugShowCheckedModeBanner: false,
      theme: estilo(),
    ));
