import 'package:flutter/material.dart';
import 'package:carniceria/galeria/galeria.dart';

class Carniceria extends StatelessWidget {
  final String imageRuta;
  final String producto;
  final String nombre;
  final String precio;
  final String descripcionTitulo;
  final String descripcionDetallada;

  const Carniceria({
    Key? key,
    required this.imageRuta,
    required this.producto,
    required this.nombre,
    required this.precio,
    required this.descripcionTitulo,
    required this.descripcionDetallada,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Regresar'),
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                image: NetworkImage(imageRuta),
                fit: BoxFit.cover,
              ))),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  producto,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.3,
                  ),
                ),
                Text(
                  nombre,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.3,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  precio,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.3,
                  ),
                ),
                Text(
                  descripcionTitulo,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.3,
                  ),
                ),
                Text(
                  descripcionDetallada,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.3,
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }

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
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
        ));
  }
}
