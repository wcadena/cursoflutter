import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    cargardata();
  }

  void cargardata() {
    rootBundle.loadString('data/menu_opts.json').then((data) {
      Map dataMap = json.decode(data);
      print(data);
    });
  }
}

final menuProvider = new _MenuProvider();
