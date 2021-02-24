import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Media/Canvas/Canvas.dart';
import 'package:flutter_widget_use/Elements/Media/Icon/Icon.dart';

class MyMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Media",
      content: ["Canvas", "Icon"],
      next: (index) {
        if (index == 0) {
          return MyCanvas();
        } else if (index == 1) {
          return MyIcon();
        }
        return MyCanvas();
      },
    );
  }
}
