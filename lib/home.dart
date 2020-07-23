//2
import 'package:flutter/material.dart';

import 'body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // first create a Scaffold and then call the Body methode
    return Scaffold(body: Body());
  }
}
