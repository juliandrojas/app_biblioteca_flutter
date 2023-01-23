import 'package:flutter/material.dart';
//Importamos todos los módulos
import 'package:app_biblioteca_flutter/pages/Home.dart';
import 'package:app_biblioteca_flutter/pages/Return.dart';
import 'package:app_biblioteca_flutter/pages/Profile.dart';

void main() => runApp(Navigation());

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  //Variable para cambiar de página
  int _paginaActual = 0;
  //Lista de Widgets: FORMA FACIL DE HACERLO SI SE TIENEN MAS DE UN ELEMENTO
  List<Widget> _paginas = [Home(), Return(), Profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quitamos logo de DEBUG
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        //Hacemos una revisión para saber en qué página estamos
        //Si la página actual es 0, que imprima el método PaginaHome
        //Si no, que imprima el método PaginaUsers
        //body: _paginaActual == 0 ? PaginaHome() : PaginaUsers(),
        body: _paginas[_paginaActual],
        //Configuramos los botones con la propiedad bottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          //Propiedad onTap para saber a que elemento se le ha hecho tap
          onTap: (index) {
            setState(() {
              //Cambiamos el valor de la variable _paginaActual
              _paginaActual = index;
            });
          },
          //Propiedad currentIndex especifica el elemento en un array ()
          currentIndex: _paginaActual,
          //Array de elementos (Páginas a mostrar)
          items: [
            //Recibe el widget icon
            //Icons.nombre es el nombre del icono
            //Dos propiedades: icon y label
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromRGBO(197, 217, 50, 1)),
              label: "Inicio",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(197, 217, 50, 1),
                ),
                label: "Buscar Libro"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.safety_check_outlined,
                  color: Color.fromRGBO(197, 217, 50, 1),
                ),
                label: "Devolver Libro"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.supervised_user_circle_outlined,
                  color: Color.fromRGBO(197, 217, 50, 1),
                ),
                label: "Perfil"),
          ],
        ),
      ),
    );
  }
}
