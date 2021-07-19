import 'package:flutter/material.dart';
import 'package:myapp/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print("Usal la ruta: ${settings.name}");
        return null;
      },
    );
  }
}
