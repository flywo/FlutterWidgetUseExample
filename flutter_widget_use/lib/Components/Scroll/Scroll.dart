import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Scroll/BoxScrollView/BoxScrollView.dart' as my;
import 'package:flutter_widget_use/Components/Scroll/CustomScrollView/CustomScrollView.dart' as my;

class Scroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Scroll",
      content: ["BoxScrollView", "CustomScrollView"],
      next: (index) {
        if (index == 0) {
          return my.BoxScrollView();
        } else if (index == 1) {
          return my.CustomScrollView();
        }
        return my.BoxScrollView();
      },
    );
  }
}
