import 'package:flutter/material.dart';

Widget Contact() {
  return //..................เริ่มกล่องแถวสีเขียว............
      Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        width: 385,
        height: 200,
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
              "CONTACT",
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
                Icon(Icons.phone),
                Text(
                  "  0932797663",
                  style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                      color: Color.fromARGB(235, 255, 255, 255)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.mail),
                Text(
                  "  plong5916@gmail.com",
                  style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                      color: Color.fromARGB(235, 255, 255, 255)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.location_on),
                Text(
                  "  Chiangmai, Thailand",
                  style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                      color: Color.fromARGB(235, 255, 255, 255)),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
