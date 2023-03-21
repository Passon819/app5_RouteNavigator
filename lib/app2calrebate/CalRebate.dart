// App Calculate Rebate
import 'package:flutter/material.dart';

void main() {
  runApp(const CalRebatePage());
}

class CalRebatePage extends StatelessWidget {
  const CalRebatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: const MyCalRebate(), //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyCalRebate extends StatefulWidget {
  const MyCalRebate({super.key});

  @override
  State<MyCalRebate> createState() => _MyCalRebateState();
}

class _MyCalRebateState extends State<MyCalRebate> {
  double origPrice = 0; //ราคาเดิม
  double percent = 0; //เปอร์เซนต์ส่วนลด
  double reduce = 0; //ส่วนลด
  double lastPrice = 0; //ราคาที่ลดแล้ว
  bool calStatus = false; //Check status onTap Calculate button for show result

  void calculatePrice() {
    setState(() {
      reduce = origPrice * (percent / 100);
      lastPrice = origPrice - reduce;
    });
  }

  void updateState() {
    calStatus = true; //เมื่อแตะปุ่มให้เปลี่ยนสถานะเพื่อโชว์ผลลัพธ์
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 227, 222, 235),
      appBar: AppBar(
        centerTitle: true, //ให้ title อยู่ตรงกลาง
        title: const Text(
          'โปรแกรมคำนวณส่วนลด',
          style: TextStyle(fontSize: 30, fontFamily: 'Sriracha'),
        ),
        backgroundColor: const Color.fromARGB(255, 10, 14, 33), //สีของ Appbar
        toolbarHeight: 180, //ความสูง Appbar
        elevation: 0.0, //เงาใต้บาร์
      ),
      //ใส่ SingleChildScrollView ครอบคอลัมน์ไม่ให้เกิดการ renderflex overflowed
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-----------------------------------------------------------------
            //ราคาเดิม ทั้งแถว
            Row(
              children: [
                const SizedBox(width: 30),
                const Expanded(
                  //flex: 0,
                  child: Text(
                    'ราคาเดิม',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(width: 60),
                Expanded(
                  //flex: 2,
                  child: Container(
                    height: 50,
                    //width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          origPrice = double.parse(
                              value); //แปลงข้อความvalueให้เป็นdouble
                          calStatus = false; //เปลี่ยนสถานะเพื่อเคลียร์ผลลัพธ์
                        });
                      },
                      textAlign: TextAlign.center, //ให้ป้อนข้อมูลอยู่ตรงกลาง
                      style: const TextStyle(color: Colors.black, fontSize: 24),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "ป้อนราคาเดิม",
                        hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12), //เว้นระยะส่วนท้ายของแถว
              ],
            ),
            const SizedBox(height: 20), //เว้นระยะห่างระหว่างแถว
            //-----------------------------------------------------------------
            //ส่วนลด (%) ทั้งแถว
            Row(
              children: [
                const SizedBox(width: 25),
                Expanded(
                  //flex: 0,
                  child: Text(
                    'ส่วนลด ($percent%)',
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(width: 60),
                Expanded(
                  //flex: 2,
                  child: Container(
                    height: 50,
                    //width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          percent = double.parse(
                              value); //แปลงข้อความvalueให้เป็นdouble
                          calStatus = false; //เปลี่ยนสถานะเพื่อเคลียร์ผลลัพธ์
                        });
                      },
                      textAlign: TextAlign.center, //ให้ป้อนข้อมูลอยู่ตรงกลาง
                      style: const TextStyle(color: Colors.black, fontSize: 24),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "เปอร์เซ็นต์ส่วนลด",
                        hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12), //เว้นระยะส่วนท้ายของแถว
              ],
            ),
            const SizedBox(height: 50), //เว้นระยะห่าง
            //Text('origPrice = $origPrice percent = $percent'),
            //-----------------------------------------------------------------
            //ปุ่มคำนวณ
            GestureDetector(
              onTap: () {
                setState(() {
                  calculatePrice();
                  updateState();
                });
                //debugPrint("Cal okkk");
                //debugPrint("$calStatus");
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.amber[600],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Calculate',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50), //เว้นระยะห่าง
            //----------------------------------------------------------------
            //ส่วนแสดงผล
            Column(
              children: [
                if (calStatus == true) ...[
                  const Text(
                    'ราคาสุดท้าย',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '$lastPrice',
                    style: TextStyle(fontSize: 28),
                  ),
                  SizedBox(height: 15),
                  const Text(
                    'ประหยัด',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '$reduce',
                    style: TextStyle(fontSize: 28),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // )
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}
