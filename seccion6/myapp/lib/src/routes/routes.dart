import 'package:flutter/material.dart';
import 'package:myapp/src/pages/alert_page.dart';
import 'package:myapp/src/pages/avatar_page.dart';
import 'package:myapp/src/pages/cart_page.dart';
import 'package:myapp/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
    "alert": (BuildContext context) => AlertPage(),
    "avatar": (BuildContext context) => AvatarPage(),
    "card": (BuildContext context) => CartPage(),
  };
}
