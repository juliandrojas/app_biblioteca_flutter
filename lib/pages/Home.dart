import 'package:flutter/material.dart';

//Cambiamos el contenido de la primera página
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Inicio"),
          backgroundColor: Color.fromRGBO(197, 217, 50, 1),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Bienvenidos a nuestra app oficial",
              style: TextStyle(fontSize: 50),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
