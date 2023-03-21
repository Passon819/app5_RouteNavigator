// Run Without Debugging
// App Resume+Cal+Form3Field

import 'package:flutter/material.dart';
import 'Car.dart';
import 'app1resume/MainResume.dart';
import 'app2calrebate/CalRebate.dart';

void main() {
  runApp(const MyApp());
}

// This is the type used by the popup menu below.
enum SortItem { item1, item2, item3, item4, item5, item6 }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MyHomePage(),
        '/resume': (context) => const MainResumePage(),
        '/calrebate': (context) => const CalRebatePage(),
      },
    );
  }
}

//List of Object Car
List<Car> menu = [
  Car(num: 1, Brand: 'Toyota', Type: 'Manual', Price: '10000'),
  Car(num: 2, Brand: 'Isuzu', Type: 'Manual', Price: '20000'),
  Car(num: 3, Brand: 'Mazda', Type: 'Auto', Price: '30000'),
  Car(num: 4, Brand: 'Honda', Type: 'Auto', Price: '40000'),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _deleteItem(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 250, 249, 244),
          elevation: 100,
          title: Text('Delete'),
          content: Text('Are you sure you want to delete this item?'),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 223, 0, 0), // Background color
              ),
              child: Text(
                'Delete',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  menu.removeAt(index);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Car List',
          style: TextStyle(color: Colors.white),
        ),
        //shadowColor: Colors.black,
        toolbarHeight: 60,
        backgroundColor: Color.fromARGB(255, 19, 18, 18),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 114, 225, 255)),
        //สร้างปุ่มเรียงข้อมูล
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.arrow_drop_down),
              onSelected: (value) {
                if (value == SortItem.item1) {
                  setState(() {
                    menu.sort((a, b) => b.num.toString()
                        .compareTo(a.num.toString())); // มากไปน้อย
                  });
                } else if (value == SortItem.item2) {
                  setState(() {
                    menu.sort((a, b) => a.num.toString()
                        .compareTo(b.num.toString())); // น้อยไปมาก
                  });
                } else if (value == SortItem.item3) {
                  setState(() {
                    menu.sort((a, b) => b.Brand.toString()
                        .compareTo(a.Brand.toString())); // มากไปน้อย
                  });
                } else if (value == SortItem.item4) {
                  setState(() {
                    menu.sort((a, b) => a.Brand.toString()
                        .compareTo(b.Brand.toString())); // น้อยไปมาก
                  });
                } else if (value == SortItem.item5) {
                  setState(() {
                    menu.sort((a, b) => b.Price.toString()
                        .compareTo(a.Price.toString())); // มากไปน้อย
                  });
                } else if (value == SortItem.item6) {
                  setState(() {
                    menu.sort((a, b) => a.Price.toString()
                        .compareTo(b.Price.toString())); // น้อยไปมาก
                  });
                }
              },
              itemBuilder: (context) => const [
                    PopupMenuItem(
                        value: SortItem.item1, child: Text('Code  DESC')),
                    PopupMenuItem(
                        value: SortItem.item2, child: Text('Code  ASC')),
                    PopupMenuItem(
                        value: SortItem.item3, child: Text('Brand  Z-A')),
                    PopupMenuItem(
                        value: SortItem.item4, child: Text('Brand  A-Z')),
                    PopupMenuItem(
                        value: SortItem.item5, child: Text('Price  DESC')),
                    PopupMenuItem(
                        value: SortItem.item6, child: Text('Price  ASC')),
                  ]),
        ],
      ),
      //หน้าต่างนำทาง
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, //โชวส่วนที่เกินขอบจอด้วย
          children: [
            //ส่วนหัวหน้าต่างเมนูนำทาง
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient:
                    LinearGradient(end: Alignment(0.7, 1), colors: <Color>[
                  Color.fromARGB(255, 39, 0, 116),
                  Color(0xff5b0060),
                  Color(0xff870160),
                  Color(0xffac255e),
                  Color(0xffca485c),
                  Color(0xffe16b5c),
                  Color(0xfff39060),
                  Color(0xffffb56b),
                ]),
                //color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'MyApp',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    'Passon Saejow',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, //ให้รูปอยู่ตรงกลาง
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('App1 Resume'),
              onTap: () {
                // Update the state of the app
                Navigator.pushNamed(context, '/resume');
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: const Text('App2 Cal Rebate'),
              onTap: () {
                // Update the state of the app
                Navigator.pushNamed(context, '/calrebate');
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: menu.length,
                itemBuilder: (BuildContext context, int index) {
                  //เอาข้อมูลใน list object มาโชว์
                  Car Cars = menu[index];
                  return ListTile(
                    leading: Text('${Cars.num}'), //แสดงเลข
                    title: Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          '${Cars.Brand}',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Text(
                            '\$ ${Cars.Price}',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ), //แสดงชื่อ Brand, Price
                    subtitle: Row(
                      children: [
                        SizedBox(width: 25),
                        Text('${Cars.Type}'),
                      ],
                    ), //แสดงชนิดรถยนต์
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.edit_note),
                          onPressed: () async {
                            Car editcar = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditForm(),
                                  settings:
                                      RouteSettings(arguments: menu[index])),
                            );

                            //_editItem(index);
                            menu[index].num = editcar.num;
                            menu[index].Brand = editcar.Brand;
                            menu[index].Type = editcar.Type;
                            menu[index].Price = editcar.Price;
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            _deleteItem(index);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            //ปุ่ม Add Data ข้างล่าง
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Material(
                elevation: 5,
                color: Color(0xff345C67),
                borderRadius: BorderRadius.circular(15.0),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 1,
                  height: 55,
                  onPressed: () async {
                    Car newcar = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddForm()),
                    );
                    menu.add(
                        newcar); //เมื่อข้อมูล return กลับมาให้เพิ่มลงในลิสต์
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(
                        'Add Data',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//ฟอร์มเพิ่มข้อมูล
class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  //
  final textController_num = TextEditingController();
  final textController_Brand = TextEditingController();
  final textController_Price = TextEditingController();
  final textController_Typee = TextEditingController();
  final _formKey = GlobalKey<FormState>(); //key ที่ใช้เข้าถึง form เพิ่ม

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80, //ความสูง Appbar
        title: const Text(
          'ADD Car',
          style: TextStyle(color: Colors.white),
        ),
        //shadowColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 19, 18, 18),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              //ช่องเพิ่ม CarCode
              TextFormField(
                controller: textController_num,
                decoration: InputDecoration(
                  hintText: 'CarCode',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),

              //ช่องเพิ่มชื่อBrand
              TextFormField(
                controller: textController_Brand,
                decoration: InputDecoration(
                  hintText: 'Brand Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              //ช่องเพิ่มชนิดรถ
              TextFormField(
                controller: textController_Typee,
                decoration: InputDecoration(
                  hintText: 'Car Type',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              //ช่องเพิ่มราคา
              TextFormField(
                controller: textController_Price,
                decoration: InputDecoration(
                  hintText: 'Price',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              //แถวของสองปุ่ม Cancel Submit
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //ปุ่มยกเลิก
                  ElevatedButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 15),

                  //ปุ่มบันทึกข้อมูล
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //เก็บค่าที่ผู้ใช้กรอกในตัวแปลใหม่ เพื่อเตรียม Return ค่า
                        final itemNo = int.parse(textController_num.text);
                        final itemName = textController_Brand.text;
                        final itemTypee = textController_Typee.text;
                        final itemPrice = textController_Price.text;

                        //สร้างเป็นวัตถุก้อนใหม่เพื่อ return
                        Car answer = Car(
                            num: itemNo,
                            Brand: itemName,
                            Type: itemTypee,
                            Price: itemPrice);

                        // Clear the text controller
                        textController_num.clear();
                        textController_Brand.clear();
                        textController_Typee.clear();
                        textController_Price.clear();

                        _formKey.currentState!.reset();

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Add Data to your list')),
                        );
                        Navigator.pop(context, answer); //return answer
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          Color.fromARGB(255, 59, 97, 75), // Background color
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//ฟอร์มแก้ไขข้อมูล
class EditForm extends StatefulWidget {
  const EditForm({super.key});

  @override
  State<EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  final _formKey = GlobalKey<FormState>(); //key ที่ใช้เข้าถึง form แก้ไข

  @override
  Widget build(BuildContext context) {
    Car item = ModalRoute.of(context)!.settings.arguments
        as Car; //item รับวัตถุตำแหน่งที่จะแก้ไขจากที่ส่งมา
    final textController_num = TextEditingController(text: item.num.toString());
    final textController_Brand = TextEditingController(text: item.Brand);
    final textController_Type = TextEditingController(text: item.Type);
    final textController_Price = TextEditingController(text: item.Price);
    //
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80, //ความสูง Appbar
        title: const Text(
          'Edit Car',
          style: TextStyle(color: Colors.white),
        ),
        //shadowColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 19, 18, 18),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              //ช่องแก้ไข CarCode
              TextFormField(
                controller: textController_num,
                decoration: InputDecoration(
                  hintText: 'New Code',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              //ช่องแก้ไขชื่อBrand
              TextFormField(
                controller: textController_Brand,
                decoration: InputDecoration(
                  hintText: 'New Car name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              //ช่องแก้ไขชนิดรถ
              TextFormField(
                controller: textController_Type,
                decoration: InputDecoration(
                  hintText: 'Car Type',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              //ช่องแก้ไขราคา
              TextFormField(
                controller: textController_Price,
                decoration: InputDecoration(
                  hintText: 'New Price',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              //แถวของสองปุ่ม Cancel Submit
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //ปุ่มยกเลิก
                  ElevatedButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 15),

                  //ปุ่มยืนยันบันทึกข้อมูล
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //เก็บค่าที่ผู้ใช้กรอกในตัวแปลใหม่ เพื่อเตรียม Return ค่า
                        final itemNo = int.parse(textController_num.text);
                        final itemName = textController_Brand.text;
                        final itemTypee = textController_Type.text;
                        final itemPrice = textController_Price.text;

                        //สร้างเป็นวัตถุก้อนใหม่เพื่อ return
                        Car answer = Car(
                            num: itemNo,
                            Brand: itemName,
                            Type: itemTypee,
                            Price: itemPrice);

                        // Clear the text controller
                        textController_num.clear();
                        textController_Brand.clear();
                        textController_Type.clear();
                        textController_Price.clear();

                        _formKey.currentState!.reset();

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Add Data to your list')),
                        );
                        Navigator.pop(context, answer); //return answer
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          Color.fromARGB(255, 60, 161, 60), // Background color
                    ),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
