import 'package:flutter/material.dart';

class GridTileDemo extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<GridTileDemo> {
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        color: Color(0xffc91b3a),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 4.0,
          padding: const EdgeInsets.all(4.0),
          childAspectRatio: 1.3,
          children: <Widget>[
            GridTile(
              header: Text("GridTile header",
                  style: TextStyle(color: Colors.white)),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text("GridTile child",
                    style: TextStyle(color: Colors.white)),
              ),
              footer: Text("GridTile footer",
                  style: TextStyle(color: Colors.white)),
            ),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
            Image.network(
                'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                scale: 1,
                fit: BoxFit.cover),
          ],
        ));
  }
}
