import 'package:agenda_contato/Model/contato.dart';
import 'package:agenda_contato/Model/contatoService.dart';
import 'package:agenda_contato/View/Recursos/barraSuperior.dart';
import 'package:agenda_contato/View/Recursos/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Perfil extends StatelessWidget {
  // Guarda o ID do Contato selecionado
  final int id;

  //Contrutor com o atributo obrigatório
  Perfil({required this.id});

  // Objeto da classe que contém a Busca dos contatos
  final ContatoService service = new ContatoService();

  @override
  Widget build(BuildContext context) {
    // Objeto da classe Contato
    Contato contato = service.listarContatos().elementAt(this.id - 1);
    return Scaffold(
      // Barra de Título
      appBar: new BarraSuperior(),

      //Menu (hamburguer)
      drawer: new MenuDrawer(),

      // Corpo do App
      body: new Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            // Foto
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Image.asset(
                  contato.foto,
                  width: 250,
                )
              ],
            ),
            // SizeBox (height: 30),

            // Nome
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Text(
                  contato.nome + " " + contato.sobrenome,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 3,
                    wordSpacing: 3,
                  ),
                )
              ],
            ),

            // Fone e e-mail
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // fone
                new Text(
                  contato.fone,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 3,
                    wordSpacing: 3,
                  ),
                ),

                // email
                new Text(
                  contato.email,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 3,
                    wordSpacing: 3,
                  ),
                ),
              ],
            ),

            // Divisor
            new Container(
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: Divider(height: 5),
            ),
            //Ações

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Ligar
                new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.phoneAlt,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),
                    SizedBox(height: 15),
                    new Text(
                      "Ligar",
                      style: TextStyle(
                          color: Colors.orange.shade400, fontSize: 18),
                    )
                  ],
                ),

                //Mensagem
                new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.solidCommentDots,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),
                    SizedBox(height: 15),
                    new Text(
                      "Mensagem",
                      style: TextStyle(
                          color: Colors.orange.shade400, fontSize: 18),
                    )
                  ],
                ),
                //video
                new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.video,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),
                    SizedBox(height: 15),
                    new Text(
                      "Video",
                      style: TextStyle(
                          color: Colors.orange.shade400, fontSize: 18),
                    )
                  ],
                ),

                // Email
                new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.solidEnvelope,
                      color: Colors.orange.shade400,
                      size: 28,
                    ),
                    SizedBox(height: 15),
                    new Text(
                      "Email",
                      style: TextStyle(
                          color: Colors.orange.shade400, fontSize: 18),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),

      // Botão Flutuante (Editar)

      floatingActionButton: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.pen),
        onPressed: () {
          //
        },
      ),
    );
  }
}
