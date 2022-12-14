import 'package:carniceria/Drawer/drawer.dart';
import 'package:carniceria/Paginas/Principal.dart';
import 'package:carniceria/Paginas/favoritos.dart';
import 'package:carniceria/galeria/galeria.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Creamos los botones
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.orangeAccent,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (value) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PrincipalPage()));
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
      backgroundColor: Colors.black,
      drawer: drawer1(),
      appBar: AppBar(
        title: const Text('Carniceria'),
        backgroundColor: Colors.black,
      ),
      body: Galerias(),
    );
  }
}
