import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/ConstrainedBox/ConstrainedBox.dart';

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Box",
      content: ["ConstrainedBox"],
      next: (index) {
        if (index == 0) {
          return MyConstrainedBox();
        }
        return MyConstrainedBox();
      },
    );
  }
}
