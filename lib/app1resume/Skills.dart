import 'package:flutter/material.dart';

Widget Skills() {
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
            const Text(
              "SKILLS",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 3),
            Container(
              //เส้นสีขาวยาว
              height: 2,
              color: Colors.white,
            ),
            SizedBox(height: 15),
            buildSkillRow("Adobe Photoshop", 0.6),
            SizedBox(height: 9),
            buildSkillRow("Adobe Illustrator", 0.4),
            SizedBox(height: 9),
            buildSkillRow("Microsoft Program", 0.8),
            SizedBox(height: 9),
            buildSkillRow("C programming", 0.8),
            SizedBox(height: 9),
            buildSkillRow("Flutter", 0.6),
          ],
        ),
      ),
    ],
  );
}

Row buildSkillRow(String skill, double level) {
  return Row(
    children: [
      //Icon(Icons.phone),
      Expanded(
        flex: 1,
        child: Text(
          skill.toUpperCase(),
          style: TextStyle(
              fontSize: 11,
              //fontWeight: FontWeight.bold,
              color: Color.fromARGB(235, 255, 255, 255)),
        ),
      ),
      SizedBox(width: 9),
      Expanded(
          flex: 2,
          child: LinearProgressIndicator(
            value: level,
          )),
      SizedBox(width: 10),
    ],
  );
}
