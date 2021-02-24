import 'package:flutter/material.dart';

class IconDataDemo extends StatelessWidget {
  final Color curColor;

  IconDataDemo({Key key, this.curColor}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        //参考 icon constans
        IconData(0xe567, fontFamily: 'MaterialIcons', matchTextDirection: true),
        color: this.curColor,
        size: 30.0,
      ),
    );
  }
}