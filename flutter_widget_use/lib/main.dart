import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Components/Bar/Bar.dart';
import 'package:flutter_widget_use/Components/Card/Card.dart';
import 'package:flutter_widget_use/Components/Chip/Chip.dart';
import 'package:flutter_widget_use/Components/Dialog/Dialog.dart';
import 'package:flutter_widget_use/Components/Grid/Grid.dart';
import 'package:flutter_widget_use/Components/List/List.dart';
import 'Common/MyListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static const types = ["Components", "Elements", "Themes"];
  static const components = ["Bar", "Card", "Chip", "Dialog", "Grid", "List"];
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
              } else if (index == 1) {
                return MyCard();
              } else if (index == 2) {
                return MyChip();
              } else if (index == 3) {
                return MyDialog();
              } else if (index == 4) {
                return MyGrid();
              } else if (index == 5) {
                return MyList();
              }
              return MyBar();
            },
          );
        },
      ),
    );
  }
}




