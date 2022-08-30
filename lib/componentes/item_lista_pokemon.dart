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
        width: 100,
        height: 100,
      );

  @override
  Widget buildTitle(BuildContext context) =>  Text(
          titulo.toString(),
          style: TextStyle(
            color: Colors.red,
            fontSize: 36,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        
  );
}
