//6
import 'package:flutter/material.dart';
import 'package:medical_app/description.dart';
import 'package:medical_app/medicines_list.dart';

class Medicines extends StatelessWidget {
  final MedicineList object;
  Medicines({this.object});
  @override
  Widget build(BuildContext context) {
    // create a card widget
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 10.0),
      elevation: 3,
      color: Colors.cyan,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      // create InkWell widget to get onTap property
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  // create Hero animation
                  Hero(
                    tag: object.pic,
                    // create circleAvatar
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/${object.pic}'),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  // create the Text Widget
                  Text(
                    object.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ],
          ),
        ),
        // create onTap property to invoke next next page (Description page)
        onTap: () => {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Description(
                objectOne: object,
              ),
            ),
          ),
        },
      ),
    );
  }
}
