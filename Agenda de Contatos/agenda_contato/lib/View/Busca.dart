import 'package:agenda_contato/Model/contato.dart';
import 'package:agenda_contato/Model/contatoService.dart';
import 'package:agenda_contato/View/Recursos/barraSuperior.dart';
import 'package:agenda_contato/View/Recursos/menu.dart';
import 'package:agenda_contato/View/perfil.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Busca extends StatefulWidget {
  @override
  State createState() => new BuscaState();
}

class BuscaState extends State<Busca> {
  // Objeto da classe ContatoService (Model)
  ContatoService service = new ContatoService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra de Título
      appBar: new BarraSuperior(),

      // Menu (hamburguer)
      drawer: new MenuDrawer(),

      //Corpo do App
      body: ListView.builder(
          padding: EdgeInsets.fromLTRB(8, 8, 8, 75),
          itemCount: service.listarContatos().length, // Ajustar
          itemBuilder: (BuildContext context, int index) {
            // Guarda o retorno da lista no objeto da classe
            Contato contato = service.listarContatos().elementAt(index);

            return Container(
              color: Colors.blue,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Foto (miniatura)
                    new ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        contato.foto,
                        width: 75,
                        height: 75,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Nome e Fone
                    new Column(
                      children: [
                        new Text(
                          contato.nome + " " + contato.sobrenome,
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 24),
                        ),
                        new Text(
                          contato.fone,
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    )
                  ],
                ),
                trailing: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.chevronCircleRight,
                    color: Colors.grey,
                    size: 15,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new Perfil(
                                  id: contato.id,
                                )));
                  },
                ),
              ),
            );
          }),

      // Botão Flutuante
      floatingActionButton: FloatingActionButton(
          child: FaIcon(
            FontAwesomeIcons.plus,
            size: 32,
          ),
          onPressed: () {
            //
          }),
    );
  }
}
