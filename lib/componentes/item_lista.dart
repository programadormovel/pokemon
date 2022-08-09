import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemLista extends StatelessWidget {
  const ItemLista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64.0),
      child: (Text(
        "POKEMON",
        style: TextStyle(fontSize: 32.0,
        backgroundColor: Colors.red),
      )),
    );
  }
}
