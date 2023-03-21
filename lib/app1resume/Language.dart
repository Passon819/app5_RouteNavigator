import 'package:flutter/material.dart';

Widget Language() {
  return //..................เริ่มกล่องแถวสีเขียว............
      Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        width: 385,
        height: 245,
        padding:
            //เว้นระยะห่างจากกล่องด้านบนและซ้าย
            const EdgeInsets.fromLTRB(22, 20, 0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            //ขอบโค้งกล่อง
            topLeft: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
          //สีของกล่อง
          color: Color.fromARGB(235, 0, 75, 63),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "LANGUAGE",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 2,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "ภาษาไทย",
                  style: TextStyle(
                    fontSize: 14,
                    //fontWeight: FontWeight.bold,
                    color: Color.fromARGB(235, 255, 255, 255),
                    fontFamily: 'Sriracha',
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ฟัง          ดีมาก",
                        style: TextStyle(color: Colors.yellow)),
                    Text("พูด         ดี",
                        style: TextStyle(color: Colors.yellow)),
                    Text("อ่าน       ดีมาก",
                        style: TextStyle(color: Colors.yellow)),
                    Text("เขียน     ดีมาก",
                        style: TextStyle(color: Colors.yellow)),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "ภาษาอังกฤษ",
                  style: TextStyle(
                    fontSize: 14,
                    //fontWeight: FontWeight.bold,
                    color: Color.fromARGB(235, 255, 255, 255),
                    fontFamily: 'Sriracha',
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ฟัง          พอใช้",
                        style: TextStyle(color: Colors.yellow)),
                    Text("พูด         พอใช้",
                        style: TextStyle(color: Colors.yellow)),
                    Text("อ่าน       ดี",
                        style: TextStyle(color: Colors.yellow)),
                    Text("เขียน     ดี",
                        style: TextStyle(color: Colors.yellow)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
