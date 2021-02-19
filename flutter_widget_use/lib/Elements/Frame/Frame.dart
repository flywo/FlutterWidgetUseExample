import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Frame/Align/Align.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/Box.dart';
import 'package:flutter_widget_use/Elements/Frame/Expanded/Expanded.dart';
import 'package:flutter_widget_use/Elements/Frame/Layout/Layout.dart';

class MyFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Frame",
      content: ["Align", "Box", "Expanded", "Layout"],
      next: (index) {
        if (index == 0) {
          return MyAlign();
        } else if (index == 1) {
          return MyBox();
        } else if (index == 2) {
          return MyExpanded();
        } else if (index == 3) {
          return MyLayout();
        }
        return MyAlign();
      },
    );
  }
}
