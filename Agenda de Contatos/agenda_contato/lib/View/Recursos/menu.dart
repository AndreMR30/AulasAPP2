import 'package:agenda_contato/View/Busca.dart';
import 'package:agenda_contato/View/Home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuDrawer extends StatelessWidget {
  // Atributos vindos do Banco de Dado (simulação)
  final String usuario = "André Marques";
  final String email = "andrerysdyk@gmail.com";
  final String fotoPerfil = "img/foto.png";

  Text mostrarTitulo(String texto) {
    return Text(texto, style: TextStyle(fontSize: 18));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      // Foto e Informações do Usuário
      UserAccountsDrawerHeader(
          accountName: Text(usuario),
          accountEmail: Text(email),
          currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                  child: Image.asset(fotoPerfil),
                  borderRadius: BorderRadius.circular(50)))),
      // Home
      ListTile(
          title: mostrarTitulo("Home"),
          subtitle: Text("Pagina Inicial"),
          trailing: FaIcon(FontAwesomeIcons.chevronRight),
          leading: FaIcon(
            FontAwesomeIcons.home,
            color: Colors.orange,
            size: 32,
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          }),

      ListTile(
          title: mostrarTitulo("Contatos"),
          subtitle: Text("Gerenciar contatos"),
          trailing: FaIcon(FontAwesomeIcons.chevronRight),
          leading: FaIcon(
            FontAwesomeIcons.userFriends,
            color: Colors.blueAccent,
            size: 32,
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Busca()));
          }),

      ListTile(
          title: mostrarTitulo("Perfil"),
          subtitle: Text("Editar Informações"),
          trailing: FaIcon(FontAwesomeIcons.chevronRight),
          leading: FaIcon(
            FontAwesomeIcons.addressCard,
            color: Colors.red.shade400,
            size: 32,
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          }),

      ListTile(
          title: mostrarTitulo("Configurações"),
          subtitle: Text("Ajustes de sistemas"),
          trailing: FaIcon(FontAwesomeIcons.chevronRight),
          leading: FaIcon(
            FontAwesomeIcons.cog,
            color: Colors.teal.shade400,
            size: 32,
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          }),

      ListTile(
          title: mostrarTitulo("Logout"),
          subtitle: Text("Sair do Sistema"),
          trailing: FaIcon(FontAwesomeIcons.chevronRight),
          leading: FaIcon(
            FontAwesomeIcons.signOutAlt,
            color: Colors.grey,
            size: 32,
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          }),
    ]));
  }
}
