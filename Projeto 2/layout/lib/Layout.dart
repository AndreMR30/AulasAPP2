import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  State createState() => new LayoutState();
}

class LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
// Barra de Título
        appBar: AppBar(title: new Text("Layout - Flutter")),

// Menu  Laterial  (Hamburguer)
        drawer: new Drawer(
          // Itens do Menu
          child: new ListView(
            //padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text("Header")),

              //Item do menu
              ListTile(
                title: const Text("Item 1"),
                onTap: () {
                  // Adicionar Ações aqui
                  Navigator.pop(context);
                },
              ),
              //Item do menu
              ListTile(
                  title: const Text("Item 1"),
                  onTap: () {
                    // Adicionar Ações aqui
                    Navigator.pop(context);
                  })
            ],
          ),
        ),

// Corpo do App
        body: Center(
          child: new Container(
            child: new Text("Conhecendo o Material App"),
          ),
        ),

// Barra de Navegação
        bottomNavigationBar: new BottomNavigationBar(items: [
          // Botão Home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
// Botão Configurações
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Configurações"),
          // Botão Configurações
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
        ]),
      ),
    );
  }
}
