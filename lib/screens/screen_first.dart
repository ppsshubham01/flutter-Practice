import 'dart:math';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.amberAccent,
      child: Center(
        child: Text(
          Grandomnumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black, fontSize: 40.0),
        ),
      ),
    );
  }
  String Grandomnumber(){
    var num = Random();
    int lnum = num.nextInt(10);

    return "Your luck num is ${lnum}";
  }
}
