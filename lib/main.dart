//1
import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // create a material app
    return MaterialApp(
      theme: ThemeData.dark(),
      // call the homepage methode
      home: HomePage(),
    );
  }
}
