import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Media/Icon/Icon/Icon.dart' as my;
import 'package:flutter_widget_use/Elements/Media/Icon/IconData/IconData.dart';
import 'package:flutter_widget_use/Elements/Media/Icon/IconTheme/IconTheme.dart';
import 'package:flutter_widget_use/Elements/Media/Icon/IconThemeData/IconThemeData.dart';
import 'package:flutter_widget_use/Elements/Media/Icon/ImageIcon/ImageIcon.dart';

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Icon",
      content: ["Icon", "IconData", "IconTheme", "IconThemeData", "ImageIcon"],
      next: (index) {
        if (index == 0) {
          return my.MyIcon();
        } else if (index == 1) {
          return MyIconData();
        } else if (index == 2) {
          return MyIconTheme();
        } else if (index == 3) {
          return MyIconThemeData();
        } else if (index == 4) {
          return MyImageIcon();
        }
        return my.MyIcon();
      },
    );
  }
}
