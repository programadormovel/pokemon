import 'package:flutter/material.dart';
import 'package:pokemon/componentes/item_lista.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    var tamanhoTela = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: tamanhoTela.width,
        height: tamanhoTela.height,
        child: Container(
          height: tamanhoTela.height * 0.2,
          color: Colors.redAccent,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: (Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
                ItemLista(),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
