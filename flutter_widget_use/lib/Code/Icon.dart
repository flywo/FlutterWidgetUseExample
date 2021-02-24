import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  final Color curColor;

  IconDemo({Key key, this.curColor}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.favorite,
        color: this.curColor,
        size: 30.0,
      ),
    );
  }
}
