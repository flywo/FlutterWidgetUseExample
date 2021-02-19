import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Frame/Align/Align.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/Box.dart';

class MyFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Frame",
      content: ["Align", "Box"],
      next: (index) {
        if (index == 0) {
          return MyAlign();
        } else if (index == 1) {
          return MyBox();
        }
        return MyAlign();
      },
    );
  }
}
