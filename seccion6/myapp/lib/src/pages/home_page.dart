import 'package:flutter/material.dart';
import 'package:myapp/src/pages/providers/menu_provider.dart';
import 'package:myapp/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Home'),
      ),
      body: Center(
        child: _lista(),
      ),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargardata(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );

    // print('testHklsdfjh');
    // menuProvider.cargardata().then((opciones) {
    //   print("_lista");
    //   print(opciones);
    // });

    // print(menuProvider.opciones);
  }
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];

  data.forEach((opt) {
    final widgetTemp = ListTile(
      title: Text(opt['texto']),
      leading: getIcon(opt['icon']),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      onTap: () {
        Navigator.pushNamed(context, opt['ruta']);
        // final route = MaterialPageRoute(builder: (context) => AlertPage());
        // Navigator.push(context, route);
        //return null;
      },
    );
    opciones..add(widgetTemp)..add(Divider());
  });
  return opciones;
}
