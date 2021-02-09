import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Scaffold/Scaffold/Scaffold.dart' as my;
import 'package:flutter_widget_use/Components/Scaffold/ScaffoldState/ScaffoldState.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Scaffold",
      content: ["Scaffold", "ScaffoldState"],
      next: (index) {
        if (index == 0) {
          return my.MyScaffold();
        } else if (index == 1) {
          return ScaffoldState();
        }
        return my.MyScaffold();
      },
    );
  }
}
