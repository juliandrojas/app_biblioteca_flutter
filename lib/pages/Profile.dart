import 'package:flutter/material.dart';

//Cambiamos el contenido de la segunda página
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Mi perfil",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
