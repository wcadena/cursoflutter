import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cartTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cartTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("Lista de prueba"),
            subtitle: Text(
                "Este es el valor de la variable mas corta que se debe cambiar con tílde"),
            leading: Icon(
              Icons.photo_album,
              color: Colors.red[200],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  child: Text("Cancelar"),
                  onPressed: () {
                    return null;
                  }),
              TextButton(
                  child: Text("Ok"),
                  onPressed: () {
                    return null;
                  })
            ],
          ),
        ],
      ),
    );
  }
}

_cardTipo2() {
  return Card(
    child: Column(
      children: [
        Image(
            image: NetworkImage(
                "https://i.blogs.es/4b321a/4l75tkwvdgktge7kfoegp6/450_1000.jpg")),
        Container(
            padding: EdgeInsets.all(10),
            child: Text("No tengo idea que poner en esta imagen."))
      ],
    ),
  );
}
