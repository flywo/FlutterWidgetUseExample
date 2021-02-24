import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Media/Icon/Icon/Icon.dart' as my;
import 'package:flutter_widget_use/Elements/Media/Icon/IconData/IconData.dart';

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Icon",
      content: ["Icon", "IconData"],
      next: (index) {
        if (index == 0) {
          return my.MyIcon();
        } else if (index == 1) {
          return MyIconData();
        }
        return my.MyIcon();
      },
    );
  }
}
