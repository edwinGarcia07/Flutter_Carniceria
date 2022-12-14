import 'package:flutter/material.dart';

void main() => runApp(const Favoritos());

class Favoritos extends StatelessWidget {
  const Favoritos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Comidas Favoritas"),
        ),
        body: const Center(
          child: Text('Favoritos'),
        ),
      ),
    );
  }
}