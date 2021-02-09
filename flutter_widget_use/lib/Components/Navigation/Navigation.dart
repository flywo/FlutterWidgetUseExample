import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Navigation/BottomNavigationBar/BottomNavigationBar.dart';
import 'package:flutter_widget_use/Components/Navigation/BottomNavigationBarItem/BottomNavigationBarItem.dart';

class MyNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Navigation",
      content: ["BottomNavigationBar", "BottomNavigationBarItem"],
      next: (index) {
        if (index == 0) {
          return MyBNB();
        } else if (index == 1) {
          return MyBNBI();
        }
        return MyBNB();
      },
    );
  }
}
