import 'package:flutter/material.dart';

//Cambiamos el contenido de la tercera página
class Return extends StatelessWidget {
  const Return({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Devolver libros",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
