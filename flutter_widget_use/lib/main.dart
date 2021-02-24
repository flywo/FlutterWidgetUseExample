import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Components/Bar/Bar.dart';
import 'package:flutter_widget_use/Components/Card/Card.dart';
import 'package:flutter_widget_use/Components/Chip/Chip.dart';
import 'package:flutter_widget_use/Components/Dialog/Dialog.dart';
import 'package:flutter_widget_use/Components/Grid/Grid.dart';
import 'package:flutter_widget_use/Components/List/List.dart';
import 'package:flutter_widget_use/Components/List/ListView/ListView.dart' as my;
import 'package:flutter_widget_use/Components/Menu/Menu.dart';
import 'package:flutter_widget_use/Components/Navigation/Navigation.dart';
import 'package:flutter_widget_use/Components/Panel/Panel.dart';
import 'package:flutter_widget_use/Components/Pick/Pick.dart';
import 'package:flutter_widget_use/Components/Progress/Progress.dart';
import 'package:flutter_widget_use/Components/Scaffold/Scaffold.dart';
import 'package:flutter_widget_use/Components/Scroll/Scroll.dart';
import 'package:flutter_widget_use/Components/Tab/Tab.dart' as my;
import 'package:flutter_widget_use/Elements/Form/Form.dart' as my;
import 'package:flutter_widget_use/Elements/Frame/Frame.dart';
import 'package:flutter_widget_use/Elements/Media/Media.dart';
import 'Common/MyListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _current = 0;
  List pages = [WidgetHome(), MoreHome()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pages[_current],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "组件"),
            BottomNavigationBarItem(icon: Icon(Icons.more), label: "更多"),
          ],
          currentIndex: _current,
          onTap: (index) {
            setState(() {
              _current = index;
            });
          },
        ),
      ),
    );
  }
}

class WidgetHome extends StatelessWidget {

  static const types = ["Components", "Elements", "Themes"];
  static const components = ["Bar", "Card", "Chip", "Dialog", "Grid", "List", "Menu", "Navigation", "Panel", "Pick", "Progress", "Scaffold", "Scroll", "Tab"];
  static const elements = ["Form", "Frame", "Media"];
  static const themes = [""];

  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Flutter Widget",
      content: types,
      next: (index) {
        List<String> next;
        if (index == 0) {
          next = components;
        } else if (index == 1) {
          next = elements;
          return MyListView(
              title: types[index],
              content: next,
              next: (index) {
                if (index == 0) {
                  return my.Form();
                } else if (index == 1) {
                  return MyFrame();
                } else if (index == 2) {
                  return MyMedia();
                }
                return my.Form();
              }
          );
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
            } else if (index == 6) {
              return MyMenu();
            } else if (index == 7) {
              return MyNavigation();
            } else if (index == 8) {
              return MyPanel();
            } else if (index == 9) {
              return MyPicker();
            } else if (index == 10) {
              return MyProgress();
            } else if (index == 11) {
              return MyScaffold();
            } else if (index == 12) {
              return Scroll();
            } else if (index == 13) {
              return my.Tab();
            }
            return MyBar();
          },
        );
      },
    );
  }
}


class MoreHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("More"),);
  }
}






