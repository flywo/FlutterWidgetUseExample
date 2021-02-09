import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/List/AnimatedList/AnimatedList.dart';
import 'package:flutter_widget_use/Components/List/ListBody/ListBody.dart';
import 'package:flutter_widget_use/Components/List/ListView/ListView.dart' as NewListView;

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "List",
      content: ["AnimatedList", "ListBody", "ListView"],
      next: (index) {
        if (index == 0) {
          return MyAnimatedList();
        } else if (index == 1) {
          return MyListBody();
        } else if (index == 2) {
          return NewListView.MyListView();
        }
        return MyAnimatedList();
      },
    );
  }
}
