import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Form/CheckBox/CheckBox/CheckBox.dart' as my;
import 'package:flutter_widget_use/Elements/Form/CheckBox/CheckboxListTile/CheckboxListTile.dart';

class CheckBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "CheckBox",
      content: ["CheckBox", "CheckBoxListTile"],
      next: (index) {
        if (index == 0) {
          return my.CheckBox();
        } else if (index == 1) {
          return CheckboxListTile();
        }
        return my.CheckBox();
      },
    );
  }
}