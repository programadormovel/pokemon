import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final String? rota;
  final String? titulo;
  const ItemMenu({
    Key? key,
    required this.rota,
    required this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (GestureDetector(
      onTap: () => {Navigator.pushNamed(context, rota!)},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          titulo!,
          style: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 38.0,
            fontWeight: FontWeight.w800,
            fontFamily: "Roboto",
          ),
        ),
      ),
    ));
  }
}
