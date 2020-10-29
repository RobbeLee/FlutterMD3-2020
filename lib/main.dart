import 'package:flutter/material.dart';
import 'package:hello_md3/myWidget.dart';

class MyWidget extends StatefulWidget {
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  var text = "Hallo MD3";

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print("Button Pressed");
          this.setState(() {
            text = shuffleString(text);
          });
        },
        child: Container(
          height: 30,
          width: 200,
          color: Colors.yellow,
          child: Text(text),
        ));
  }

  String shuffleString(String str) {
    var list = str.split('');
    list.shuffle();
    str = '';
    for (var s in list) {
      str += s;
    }
    return str;
  }

  Widget buildMyWidget(var name, double height) {
    return Padding(
        padding: EdgeInsets.all(2),
        child: Container(
          height: height,
          width: 200,
          color: Colors.red,
          child: Text(name),
        ));
  }
}
