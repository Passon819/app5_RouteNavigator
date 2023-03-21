import 'package:flutter/material.dart';

Widget Head() {
  return Row(
    children: <Widget>[
      SizedBox(
        width: 20,
      ),
      Container(
        width: 100,
        height: 100,
        //color: Colors.red,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile.jpg'),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "นายพัสสน แซ่โจว",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sriracha'),
          ),
          Row(
            children: [
              Icon(
                Icons.computer,
                size: 20,
              ),
              Text(
                " วศ.บ.คอมพิวเตอร์",
                style: TextStyle(fontFamily: 'Sriracha'),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.school,
                size: 20,
              ),
              Text(
                " มหาวิทยาลัยเทคโนโลยีราชมงคลล้านนา",
                style: TextStyle(fontFamily: 'Sriracha'),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
