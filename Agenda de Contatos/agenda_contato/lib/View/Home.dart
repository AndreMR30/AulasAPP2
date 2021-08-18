import 'package:agenda_contato/View/Recursos/barraSuperior.dart';
import 'package:agenda_contato/View/Recursos/menu.dart';
import 'package:agenda_contato/View/busca.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de título
      appBar: new BarraSuperior(),

      // Menu (hambúrguer)
      drawer: MenuDrawer(),

      // Corpo do App
      body: SingleChildScrollView(
        child: Column(
          children: [
            new Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  //Titulo
                  new Text(
                    "Buenas, o que vamos fazer?",
                    style: TextStyle(fontSize: 24, color: Colors.grey.shade300),
                  ),
                  new SizedBox(
                    height: 45,
                  ),
                  //Botão Buscar Contatos
                  new Builder(builder: (BuildContext context) {
                    return ElevatedButton(
                      child: Container(
                        width: 300,
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.search,
                              size: 24,
                              color: Colors.white,
                            ),
                            new Text(
                              "Buscar Contatos",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new Busca()));
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                    );
                  }),

                  SizedBox(
                    height: 15,
                  ),
                  // Botão cadastrar contato
                  new Builder(builder: (BuildContext context) {
                    return ElevatedButton(
                      child: Container(
                        width: 300,
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.plus,
                              size: 24,
                              color: Colors.white,
                            ),
                            new Text(
                              "Cadastrar Contatos",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                    );
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
