//7
import 'package:flutter/material.dart';
import 'package:medical_app/medicines_list.dart';

class Description extends StatelessWidget {
  final MedicineList objectOne;

  Description({this.objectOne});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[700],
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // create Hero animation
                  Hero(
                    tag: objectOne.pic,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/${objectOne.pic}'),
                      maxRadius: 100.0,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                '--: ${objectOne.name} :--',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic),
              ),
              Divider(
                thickness: 3,
                height: 50,
                color: Colors.white,
                endIndent: 40,
                indent: 40,
              ),
              Text(
                objectOne.about,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),

        // 1st create a floationgActionButton
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),

        // 2nd set the location of that button
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // 3rd create a bottomNavigationBar
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.yellow,
          child: Container(
            height: 50,
          ),
        ),
      ),
    );
  }
}
