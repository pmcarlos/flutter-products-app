import 'package:flutter/material.dart';

import 'package:flutter_products_app/pages/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.red,
            accentColor: Colors.deepOrange[400]),
        home: AuthPage());
  }
}
