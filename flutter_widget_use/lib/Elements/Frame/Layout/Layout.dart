import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Frame/Layout/Center/Center.dart';
import 'package:flutter_widget_use/Elements/Frame/Layout/Column/Column.dart';
import 'package:flutter_widget_use/Elements/Frame/Layout/Container/Container.dart';
import 'package:flutter_widget_use/Elements/Frame/Layout/Row/Row.dart';

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Layout",
      content: ["Center", "Column", "Container", "Row"],
      next: (index) {
        if (index == 0) {
          return MyCenter();
        } else if (index == 1) {
          return MyColumn();
        } else if (index == 2) {
          return MyContainer();
        } else if (index == 3) {
          return MyRow();
        }
        return MyCenter();
      },
    );
  }
}
