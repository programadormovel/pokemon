import 'package:flutter/material.dart';
import 'package:pokemon/componentes/item_lista.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  var listaItens = ['Pokemon1', 'Pokemon2', 'Pokemon3'];
  var lista2 = List<String>.generate(100, (i) => 'Pokemon $i');

  // Carregar lista de pokemons
  Future<List<String>> fetchPokemon() async {
    var uri = Uri.parse('https://pokeapi.co/api/v2/pokemon-species/aegislash');
    final response = await http.get(uri,
        headers: {'Content-Type': 'aplication/json; charset=ISO-8859-1'});

    var listaPokemons = new List.empty(growable: true);

    if (response.statusCode == 200) {
      List<dynamic> values = json.decode(response.body);

      if(values.length > 0){
        
      }
    }

    return null;
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
          // scrollDirection: Axis.horizontal,
          itemCount: listaItens.length,
          prototypeItem: ListTile(
            title: Text(listaItens.first),
          ),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                listaItens[index],
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 48,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
