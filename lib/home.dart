import 'package:flutter/material.dart';

import 'lista.dart';
import 'menu.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula Pokemon",
      initialRoute: "/lista",
      routes: {
        "/menu": (context) => Menu(),
        "/lista": (context) => Lista(),
      },
    );
  }
}
