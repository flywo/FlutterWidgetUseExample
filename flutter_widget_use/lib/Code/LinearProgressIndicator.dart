import 'package:flutter/material.dart';

class LinearProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.0,
        height: 4,
        child: LinearProgressIndicator(),
      ),
    );
  }
}
