import 'dart:io';

import 'package:flutter/material.dart';
import 'package:carniceria/galeria/galeria.dart';
import 'package:carniceria/galeria/galeria.dart';

import '../menu/login.dart';

class drawer1 extends StatelessWidget {
  const drawer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Edwin Garcia",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.white),
            ),
            accountEmail: Text("EdwinG09@Gmail.com",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.white)),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
                    child: Image.network(
              'https://images.unsplash.com/photo-1628890920690-9e29d0019b9b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ))),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1625643269470-5d3e7b69fa34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text('Perfil'),
            onTap: () => print('Presionas favoritos'),
          ),
          ListTile(
            leading: Icon(
              Icons.menu_book_rounded,
              color: Colors.black,
            ),
            title: Text('Menu'),
            onTap: () => print('Presionaste favoritos'),
          ),
          ListTile(
            leading: Icon(
              Icons.line_style,
              color: Colors.black,
            ),
            title: Text('Carnes de res'),
            onTap: () => print('Presionaste favoritos'),
          ),
          ListTile(
            leading: Icon(
              Icons.list,
              color: Colors.black,
            ),
            title: Text('Carnes de cerdo'),
            onTap: () => print('Presionaste favoritos'),
          ),
          ListTile(
            leading: Icon(
              Icons.list_alt_rounded,
              color: Colors.black,
            ),
            title: Text('Otras opciones'),
            onTap: () => print('Presionaste favoritos'),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite_border_sharp,
              color: Colors.black,
            ),
            title: Text('Favoritos'),
            onTap: () => exit(0),
          ),
          ListTile(
            leading: Icon(
              Icons.person_add,
              color: Colors.black,
            ),
            title: Text('Iniciar Sesion'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Ingreso()));
            },
          ),
          ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text('Salir'),
              onTap: () {
                exit(0);
              }),
        ],
      ),
    );
  }
}
