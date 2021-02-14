import 'package:flutter/material.dart';

class RichTextDemo extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<RichTextDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff000000),
      width: 750.0,
      child: RichText(
        text: TextSpan(
          text: 'Hello ',
          children: <TextSpan>[
            TextSpan(
                text: 'bold',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xfffffc42))),
            TextSpan(
                text: ' world!', style: TextStyle(fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }
}
