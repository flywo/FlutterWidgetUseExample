import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Scroll/BoxScrollView/BoxScrollView.dart' as my;
import 'package:flutter_widget_use/Components/Scroll/CustomScrollView/CustomScrollView.dart' as my;
import 'package:flutter_widget_use/Components/Scroll/NestedScrollView/NestedScrollView.dart' as my;
import 'package:flutter_widget_use/Components/Scroll/ScrollMetrics/ScrollMetrics.dart' as my;
import 'package:flutter_widget_use/Components/Scroll/ScrollPhysics/ScrollPhysics.dart' as my;
import 'package:flutter_widget_use/Components/Scroll/ScrollView/ScrollView.dart' as my;
import 'package:flutter_widget_use/Components/Scroll/Scrollable/Scrollable.dart' as my;
import 'package:flutter_widget_use/Components/Scroll/ScrollbarPainter/ScrollbarPainter.dart' as my;

class Scroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Scroll",
      content: ["BoxScrollView", "CustomScrollView", "NestedScrollView", "Scrollable", "ScrollbarPainter", "ScrollMetrics", "ScrollPhysics", "ScrollView"],
      next: (index) {
        if (index == 0) {
          return my.BoxScrollView();
        } else if (index == 1) {
          return my.CustomScrollView();
        } else if (index == 2) {
          return my.NestedScrollView();
        } else if (index == 3) {
          return my.Scrollable();
        } else if (index == 4) {
          return my.ScrollbarPainter();
        } else if (index == 5) {
          return my.ScrollMetrics();
        } else if (index == 6) {
          return my.ScrollPhysics();
        } else if (index == 7) {
          return my.ScrollView();
        }
        return my.BoxScrollView();
      },
    );
  }
}
