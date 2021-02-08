import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Components/Bar/Bar.dart';
import 'Common/MyListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static const types = ["Components", "Elements", "Themes"];
  static const components = ["Bar"];
  static const elements = [""];
  static const themes = [""];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListView(
        title: "Flutter Widget",
        content: types,
        next: (index) {
          List<String> next;
          if (index == 0) {
            next = components;
          } else if (index == 1) {
            next = elements;
          } else {
            next = themes;
          }
          return MyListView(
            title: types[index],
            content: next,
            next: (index) {
              if (index == 0) {
                return MyBar();
              }
              return MyBar();
            },
          );
        },
      ),
    );
  }
}




