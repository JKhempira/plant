import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget Showimage() {
        return Container(
          height: 250.0,
          child: Image.asset("images/2.jpg"),
        );
  }
  

  String Treename =  "ต้นก้ามปู";
  String Targad =    "จังหวัดมหาสารคาม";
  String Backgroud = "ซื้อมา";
  String Dete = "2/11/2554";
  String Treeage = "3546 วัน";
  String Name = "Jirawat khempira";

  Widget ShowName() {
    return Container(
      alignment: FractionalOffset.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListBody(
          children: [
            Text(
              "ชื่อต้นไม้           :  " + Treename,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "จังหวัดที่ปลูก    :  " + Targad,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "ความเป็นมา      :  " + Backgroud,
              style: TextStyle(fontSize: 20),
            ),
           SizedBox(
              height: 10,
            ),
            Text(
              "วันที่ปลูก           :  " + Dete,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "อายุของต้นไม้   :  " + Treeage,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "ชื่อผู้ปลูก           :  " + Name,
              style: TextStyle(fontSize: 20),
            ),

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mytree",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Showimage(),
          SizedBox(
            height: 20,
          ),
          ShowName(),
          //Spacer(flex: 3), //เว้นช่วง
        ],
      ),
    );
  }
}
