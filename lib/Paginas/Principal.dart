import 'package:carniceria/galeria/carniceria.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import '../Drawer/drawer.dart';
import '../menu/home.dart';
import 'favoritos.dart';

class PrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.orangeAccent,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (value) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
            label: ('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: ('Favoritos'),
            icon: Icon(Icons.favorite_border_outlined),
          ),
          BottomNavigationBarItem(
            label: ('Menu'),
            icon: Icon(Icons.menu_book),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 10, 4, 4),
      drawer: drawer1(),
      appBar: AppBar(
        title: const Text(
          'Carniceria',
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: <Widget>[
          _fondo(),
          degradadonegro(),
          cuerpo(context),
        ],
      ),
    );
  }

  Widget _fondo() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80), bottomRight: Radius.circular(80)),
      child: Image(
        image: AssetImage('assets/images/carniceria.jpg'),
        height: 400,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget degradadonegro() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black54,
              Colors.transparent,
            ]),
      ),
    );
  }

  Widget cuerpo(BuildContext context) {
    return Column(
      children: <Widget>[
        menu(),
        titulo(),
        categorias(),
        descuentos(context),
      ],
    );
  }

  Widget menu() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[],
        ),
      ),
    );
  }

  Widget titulo() {
    return Container(
      height: 150,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Escoje el producto",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto')),
          Text(
            "que te guste",
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget categorias() {
    return Container(
      height: 250,
      child: PageView(
        pageSnapping: false,
        controller: PageController(viewportFraction: .4),
        children: <Widget>[
          tarjetaMenu(
              "Carne de res", "Carne de res", "assets/images/carne1.jpeg"),
          tarjetaMenu("Carne de puerco", "Cerdo", "assets/images/carne2.jpeg"),
          tarjetaMenu("Pollo", "Alitas", "assets/images/alitas.jpg"),
          tarjetaMenu(
              "Quesos", "Queso para quesadilla", "assets/images/queso.jpg"),
        ],
      ),
    );
  }

  Widget tarjetaMenu(String titulo, String comidas, String imagen) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
            child: Image(
              image: AssetImage(imagen),
              height: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5),
            child: Text(titulo,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 10,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5),
            child: Text(comidas,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5),
            child: Text("Tipos de comida",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget descuentos(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/tag.jpg"),
              width: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text("Mas barato",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 8,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text("Mirar mas",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
        Table(
          children: [
            TableRow(children: [
              carta("assets/images/carne2.jpeg", "e", "", context),
              carta("assets/images/carne3.jpeg", "r", "", context),
            ])
          ],
        ),
      ],
    );
  }

  Widget carta(
      String imagen, String comida, String nombreComida, BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image(
                      image: AssetImage(""),
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.orangeAccent,
                      child: Text(
                        "150",
                        style: TextStyle(color: Colors.blue, fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  nombreComida,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
