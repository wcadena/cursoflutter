import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> opciones = <String>['Uno', "Dos", 'Tres', "Cuatro"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componente Temp'),
        ),
        body: ListView(
          //children: _crearItems(),
          children: _crearListaCorta(),
        ));
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];
    for (String opt in opciones) {
      final tempwidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempwidget)..add(new Divider());
    }
    return lista;
  }

  List<Widget> _crearListaCorta() {
    var widget = opciones.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e),
            subtitle: Text(e + e + e),
            leading: Icon(Icons.account_tree_outlined),
            trailing: Icon(Icons.add_shopping_cart_rounded),
          ),
          Divider()
        ],
      );
    }).toList();
    return widget;
  }
}
