import 'package:flutter/material.dart';
//Import the navigation
import 'package:app_biblioteca_flutter/components/Navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Biblioteca Uteista',
      //Configure theme
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(203, 212, 36, 1),
      ),
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}
