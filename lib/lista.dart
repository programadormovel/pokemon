import 'package:flutter/material.dart';
import 'package:pokemon/componentes/item_lista.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:pokemon/componentes/item_lista_pokemon.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  var listaItens = ['Pokemon1', 'Pokemon2', 'Pokemon3'];
  var lista2 = List<String>.generate(100, (i) => 'Pokemon $i');
  var listaPesquisada = [];
  List<ItemListaPokemon> items = [];

  // Carregar lista de pokemons
  Future<List> fetchPokemon() async {
    var uri = Uri.parse('https://pokeapi.co/api/v2/pokemon');
    final response = await http.get(uri,
        headers: {'Content-Type': 'aplication/json; charset=ISO-8859-1'});

    var listaPokemons = new List.empty(growable: true);

    if (response.statusCode == 200) {
      // print(response.body);
      Map<String, dynamic> values = json.decode(response.body);
      // print(values.entries.elementAt(3));

      List<dynamic> valores = values.entries.elementAt(3).value;
      print(valores);
      if (valores.length > 0) {
        for (int i = 0; i < valores.length; i++) {
          if (valores[i] != null) {
            Map<String, dynamic> map = valores[i];
            listaPokemons.add(map['name']);
            //print('${map['name']}');
            print(listaPokemons[i]);
          }
        }
      }
    }

    return listaPokemons;
  }

  montaLista() async {
    listaPesquisada = await fetchPokemon();
    // print(listaPesquisada.length);
    items = List<ItemListaPokemon>.generate(
      listaPesquisada.length,
      (i) => ItemPokemon(
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" +
              (i + 1).toString() +
              ".png",
          listaPesquisada[i]),
    );

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    montaLista();
  }

  @override
  Widget build(BuildContext context) {
    var tamanhoTela = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: tamanhoTela.width * 0.90,
        height: tamanhoTela.height * 0.80,
        decoration: BoxDecoration(color: Colors.amber),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Padding(
              padding: const EdgeInsets.all(32.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
                color: Colors.white,
                child: ListTile(
                  title: item.buildImage(context),
                  subtitle: item.buildTitle(context),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
