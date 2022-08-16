import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemon/componentes/item_menu.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tam = MediaQuery.of(context).size;
    return (Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Pokemon'),
        ),
        elevation: 8,
        flexibleSpace: FlutterLogo(size: 248),
        toolbarHeight: tam.height * 0.25,
        
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: Column(
          children: [
            ItemMenu(rota: "/lista", titulo: "Pokemons"),
            ItemMenu(rota: "/poderes", titulo: "Poderes"),
          ],
        ),
      ),
    ));
  }
}
