import 'dart:io';

import 'package:carniceria/Drawer/drawer.dart';
import 'package:carniceria/galeria/carniceria.dart';
import 'package:flutter/material.dart';
import 'package:carniceria/Drawer/drawer.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imageRuta:
          'https://images.unsplash.com/photo-1624749731632-55baff07f18c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=326&q=80',
      producto: 'Bistek',
      nombre: 'Carniceria Hermanos Martinez',
      precio: '\$180.00',
      descripcionTitulo: '1 kg de bistek',
      descripcionDetallada:
          'En esta Carniceria Ofrecemos productos de calidad. --Bienvenidos--.'),
  ImageDetails(
      imageRuta:
          'https://images.unsplash.com/photo-1612871689353-cccf581d667b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      producto: 'Carne para Azar',
      nombre: 'Carniceria Hermanos Martinez',
      precio: '\$180.00',
      descripcionTitulo: '1 Kg de carne ',
      descripcionDetallada:
          'En esta Carniceria Ofrecemos productos de calidad. --Bienvenidos--.'),
  ImageDetails(
      imageRuta:
          'https://images.unsplash.com/photo-1501200291289-c5a76c232e5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      producto: 'Pollo',
      nombre: 'Carniceria Hermanos Martinez',
      precio: '\$150.00',
      descripcionTitulo: '1 kg de pollo',
      descripcionDetallada:
          'En esta Carniceria Ofrecemos productos de calidad. --Bienvenidos--.'),
  ImageDetails(
      imageRuta:
          'https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      producto: 'Costilla',
      nombre: 'Carniceria Hermanos Martinez',
      precio: '\$180.00',
      descripcionTitulo: '1 kg costilla',
      descripcionDetallada:
          'En esta Carniceria Ofrecemos productos de calidad. --Bienvenidos--.'),
  ImageDetails(
      imageRuta:
          'https://images.pexels.com/photos/776314/pexels-photo-776314.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      producto: 'Carne para hamburgesa',
      nombre: 'Carniceria Hermanos Martinez',
      precio: '\$150.00',
      descripcionTitulo: '1 kg de carne',
      descripcionDetallada:
          'En esta Carniceria Ofrecemos productos de calidad. --Bienvenidos--.'),
  ImageDetails(
      imageRuta:
          'https://images.pexels.com/photos/12062740/pexels-photo-12062740.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      producto: 'Chorizo',
      nombre: 'Carniceria Hermanos Martinez',
      precio: '\$130.00',
      descripcionTitulo: '1 kg de chorizo',
      descripcionDetallada:
          'En esta Carniceria Ofrecemos productos de calidad. --Bienvenidos--.'),
  ImageDetails(
      imageRuta:
          'https://images.pexels.com/photos/306801/pexels-photo-306801.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      producto: 'Queso',
      nombre: 'Carniceria Hermanos Martinez',
      precio: '\$80.00',
      descripcionTitulo: '1 kg de Queso',
      descripcionDetallada:
          'En esta Carniceria Ofrecemos productos de calidad. --Bienvenidos--.'),
  ImageDetails(
      imageRuta:
          'https://images.pexels.com/photos/10292080/pexels-photo-10292080.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      producto: 'Alitas de Pollo',
      nombre: 'Carniceria Hermanos Martinez',
      precio: '\$120.00',
      descripcionTitulo: '1 kg de alitas',
      descripcionDetallada:
          'En esta Carniceria Ofrecemos productos de calidad. --Bienvenidos--.'),
  ImageDetails(
      imageRuta:
          'https://images.pexels.com/photos/128401/pexels-photo-128401.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      producto: 'Carne Molida',
      nombre: 'Carniceria Hermanos Martinez',
      precio: '\$170.00',
      descripcionTitulo: '1 kg de carne molida',
      descripcionDetallada:
          'En esta Carniceria Ofrecemos productos de calidad. --Bienvenidos--.'),
];

class Galerias extends StatelessWidget {
  const Galerias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Carniceria Hermanos Martinez',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: ((context, index) {
                  return RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Carniceria(
                                    imageRuta: _images[index].imageRuta,
                                    producto: _images[index].producto,
                                    nombre: _images[index].nombre,
                                    precio: _images[index].precio,
                                    descripcionTitulo:
                                        _images[index].descripcionTitulo,
                                    descripcionDetallada:
                                        _images[index].descripcionDetallada,
                                  )));
                    },
                    child: Hero(
                      tag: 'logo',
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(_images[index].imageRuta),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  );
                }),
                itemCount: _images.length,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class ImageDetails {
  final String imageRuta;
  final String producto;
  final String nombre;
  final String precio;
  final String descripcionTitulo;
  final String descripcionDetallada;
  ImageDetails({
    required this.imageRuta,
    required this.producto,
    required this.nombre,
    required this.precio,
    required this.descripcionTitulo,
    required this.descripcionDetallada,
  });
  Widget boton() {
    return Positioned(
        bottom: 0,
        child: FlatButton(
          color: Colors.orange,
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Text(
                "add to cart",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ));
  }
}
