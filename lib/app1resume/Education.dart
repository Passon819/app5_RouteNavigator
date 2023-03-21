import 'package:flutter/material.dart';

Widget Education() {
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
              "EDUCATION",
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
                  ".",
                  style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                      color: Color.fromARGB(235, 255, 255, 255)),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Santiwana school",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Text("Elementary & middle school  (2007-2015)",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
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
                  ".",
                  style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                      color: Color.fromARGB(235, 255, 255, 255)),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fang vocational education collect",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Text("Electronic department  (2015-2018)",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
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
                  ".",
                  style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                      color: Color.fromARGB(235, 255, 255, 255)),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fang vocational education collect",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Text("Computer network  (2018-2020)",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
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
                  ".",
                  style: TextStyle(
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                      color: Color.fromARGB(235, 255, 255, 255)),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rajamangala University of Technology Lanna.",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Text("Computer Engineering  (2020-Current)",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
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
