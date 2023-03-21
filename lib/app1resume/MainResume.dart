import 'package:flutter/material.dart';
import 'Head.dart';
import 'Personal.dart';
import 'Contact.dart';
import 'Skills.dart';
import 'Language.dart';
import 'Education.dart';

void main() {
  runApp(const MainResumePage());
}

class MainResumePage extends StatelessWidget {
  const MainResumePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //primarySwatch: Colors.blueGrey,
          ),
      home: const MyMainResume(title: 'Resume'),
    );
  }
}

// This widget is the home page of your application.
class MyMainResume extends StatefulWidget {
  const MyMainResume({super.key, required this.title});
  final String title;
  @override
  State<MyMainResume> createState() => _MyMainResumeState();
}

class _MyMainResumeState extends State<MyMainResume> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    //
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://png.pngtree.com/background/20210710/original/pngtree-chinese-style-ancient-culture-h5-background-picture-image_1011744.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 15,
          elevation: 0.0, //เงาใต้บาร์
          backgroundColor: Color.fromARGB(255, 228, 214, 176),
          //   title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Head(),
              SizedBox(height: 20),
              //..................เริ่มกล่องสีเขียวแถว 1............
              Personal(),
              SizedBox(height: 20),
              //..................เริ่มกล่องสีเขียวแถว 2............
              Contact(),
              SizedBox(height: 20),
              //..................เริ่มกล่องสีเขียวแถว 3............
              Skills(),
              SizedBox(height: 20),
              //..................เริ่มกล่องสีเขียวแถว 4............
              Language(),
              SizedBox(height: 20),
              //..................เริ่มกล่องสีเขียวแถว 5............
              Education(),
            ],
          ),
        ),
      ),
    );
  }
}
