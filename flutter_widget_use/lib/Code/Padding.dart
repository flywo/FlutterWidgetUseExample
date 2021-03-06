import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.all(18.0), //通过 EdgeInsets 来设置 padding的值
        child: Container(
          height: 100.0,
          width: 100.0,
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}
