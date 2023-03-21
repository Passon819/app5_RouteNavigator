import 'package:flutter/material.dart';

Widget Personal() {
  return //..................เริ่มกล่องแถวสีเขียว............
      Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        width: 385,
        height: 240,
        padding:
            //เว้นระยะห่างจากกล่องด้านบนและซ้าย
            const EdgeInsets.fromLTRB(25, 20, 0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            //ขอบโค้งกล่อง
            topLeft: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
          //สีของกล่อง
          color: Color.fromARGB(235, 0, 75, 63),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "PERSOANL",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            height: 2,
            color: Colors.white,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "ชือ-นามสกุล                  นายพัสสน แซ่โจว",
            style: TextStyle(
                fontSize: 14,
                //fontWeight: FontWeight.bold,
                color: Color.fromARGB(235, 255, 255, 255),
                fontFamily: 'Sriracha'),
          ),
          Text(
            "ชือเล่น                           หลง",
            style: TextStyle(
                fontSize: 14,
                //fontWeight: FontWeight.bold,
                color: Color.fromARGB(235, 255, 255, 255),
                fontFamily: 'Sriracha'),
          ),
          Text(
            "เพศ                               ชาย",
            style: TextStyle(
                fontSize: 14,
                //fontWeight: FontWeight.bold,
                color: Color.fromARGB(235, 255, 255, 255),
                fontFamily: 'Sriracha'),
          ),
          Text(
            "วัน/เดือน/ปี เกิด            18/09/2000",
            style: TextStyle(
                fontSize: 14,
                //fontWeight: FontWeight.bold,
                color: Color.fromARGB(235, 255, 255, 255),
                fontFamily: 'Sriracha'),
          ),
          Text(
            "สัญชาติ                         ไทย",
            style: TextStyle(
                fontSize: 14,
                //fontWeight: FontWeight.bold,
                color: Color.fromARGB(235, 255, 255, 255),
                fontFamily: 'Sriracha'),
          ),
          Text(
            "ศาสนา                          พุุทธ",
            style: TextStyle(
                fontSize: 14,
                //fontWeight: FontWeight.bold,
                color: Color.fromARGB(235, 255, 255, 255),
                fontFamily: 'Sriracha'),
          ),
          Text(
            "เกรดเฉลี่ยสะสม(GPA)  3.77",
            style: TextStyle(
                fontSize: 14,
                //fontWeight: FontWeight.bold,
                color: Color.fromARGB(235, 255, 255, 255),
                fontFamily: 'Sriracha'),
          ),
        ]),
      ),
    ],
  );
}
