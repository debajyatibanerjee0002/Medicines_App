import 'package:flutter/material.dart';
import 'package:medical_app/list.dart';

import 'medicines.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: <Widget>[
        SliverAppBar(
          title: Text(
            'MEDICINES',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          floating: true,
          centerTitle: true,
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/medical1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            allList.map((object) => Medicines(object: object)).toList(),
          ),
        ),
      ],
    );
  }
}
