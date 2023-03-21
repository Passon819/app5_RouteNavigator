// class Car {
//   //?ยอมให้เป็น null
//   late int num;
//   late String Brand;
//   late String Type;
//   late String Price;

//   Car(
//       {required this.num,
//       required this.Brand,
//       required this.Type,
//       required this.Price});
// }
class Car {
  //?ยอมให้เป็น null
  int? num;
  late String Brand;
  String? Type;
  String? Price;

  Car({this.num, required this.Brand, this.Type, this.Price});
}
