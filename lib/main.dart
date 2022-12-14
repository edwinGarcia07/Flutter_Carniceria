import 'package:carniceria/Paginas/Principal.dart';
import 'package:carniceria/galeria/carniceria.dart';
import 'package:carniceria/menu/login.dart';
import 'package:flutter/material.dart';
import 'Paginas/DetallesPage.dart';
import 'menu/home.dart';
import 'Paginas/Principal.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Carniceria Hermanos Martinez",
      initialRoute: '/',
      routes: {
        "/": (BuildContext context) => PrincipalPage(),
        "Detalles": (BuildContext context) => Detalles(),
      },
    );
  } //build

}//myapp
 