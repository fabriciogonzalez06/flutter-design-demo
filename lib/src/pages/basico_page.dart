import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final stiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final stiloSubtitulo = TextStyle(fontSize: 20.0, color: Colors.grey);

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearImagen(),
              _crearTitulo(),
              _crearAcciones(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        height: 190.0,
        image: NetworkImage(
            'https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: <Widget>[
            Expanded(
              //expande todo lo que tiene su contenido
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con un puente',
                    style: stiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Un lago en alemania',
                    style: stiloSubtitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'share')
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
        child: Text(
          'Sunt ex quis do commodo cillum aliquip tempor excepteur veniam sit exercitation duis. Id ex excepteur voluptate commodo nulla aliqua mollit veniam do consectetur sit in cillum laborum. Veniam enim dolor amet pariatur do ullamco veniam cupidatat. Officia non reprehenderit fugiat minim cupidatat irure do. Proident in deserunt nostrud culpa exercitation exercitation ex est in occaecat. Nisi ipsum eiusmod labore exercitation ullamco do et cillum occaecat fugiat est sit. Aliqua eiusmod nulla aliqua eiusmod ',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
