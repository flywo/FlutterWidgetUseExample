import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/food05.jpeg',
        fit: BoxFit.contain,
      ),
      height: 300.0,
      width: 300.0,
    );
  }
}