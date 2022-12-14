import 'package:carniceria/Drawer/drawer.dart';
import 'package:carniceria/menu/home.dart';
import 'package:flutter/material.dart';

class Ingreso extends StatelessWidget {
  const Ingreso({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carniceria Hermanos Martinez'),
        titleTextStyle: TextStyle(color: Colors.red),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: (cuerpo()),
    );
  } //fin del metodo build
} //fin de la clase Ingreso

Widget cuerpo() {
  return Container(
//Imagen de fondo de pantalla
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/carniceria.jpg"), fit: BoxFit.cover),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          inicio(),
          campoUsuario(),
          campoPass(),
          bottonEntrar(),
        ],
      ),
    ),
  );
} //fin del widget cuerpo

Widget inicio() {
  return Text(
    'Inicio de sesion',
    style: TextStyle(
        color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
  );
}

//fin del widget inicio
Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Ingresa tu Correo",
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
}

Widget campoPass() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Ingresa tu Clave",
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
}

Widget bottonEntrar() {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      "Ingresar al sistema",
    ),
  );
}
