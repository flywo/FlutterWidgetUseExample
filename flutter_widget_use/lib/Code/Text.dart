import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TextDemo extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<TextDemo> {
  int index = 0;
  Duration timer = new Duration(minutes: 50);
  @override
  Widget build(BuildContext context) {
    return Text("i'm a text");
  }
}