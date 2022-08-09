import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemon/componentes/item_menu.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
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
