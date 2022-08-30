import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class ItemListaPokemon {
  // foto do pokemon
  Widget buildImage(BuildContext context);
  // nome do pokemon
  Widget buildTitle(BuildContext context);
}

class ItemPokemon implements ItemListaPokemon {
  final String foto;
  final String titulo;

  ItemPokemon(this.foto, this.titulo);

  @override
  Widget buildImage(BuildContext context) => Image.network(
        this.foto.toString(),
        width: 50,
        height: 50,
      );

  @override
  Widget buildTitle(BuildContext context) => Text(
        titulo.toString(),
        style: TextStyle(
          color: Colors.black,
          fontSize: 36,
        ),
        textAlign: TextAlign.center,
      );
}
