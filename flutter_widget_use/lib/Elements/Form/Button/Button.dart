import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Form/Button/DropdownButton/DropdownButton.dart';
import 'package:flutter_widget_use/Elements/Form/Button/FlatButton/FlatButton.dart';
import 'package:flutter_widget_use/Elements/Form/Button/FloatingActionButton/FloatingActionButton.dart';
import 'package:flutter_widget_use/Elements/Form/Button/IconButton/IconButton.dart';
import 'package:flutter_widget_use/Elements/Form/Button/OutlineButton/OutlineButton.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Button",
      content: ["DropdownButton", "FlatButton", "FloatingActionButton", "IconButton", "OutlineButton", "PopupMenuButton", "RaisedButton", "RawMaterialButton"],
      next: (index) {
        if (index == 0) {
          return DropdownButton();
        } else if (index == 1) {
          return FlatButton();
        } else if (index == 2) {
          return FloatingActionButton();
        } else if (index == 3) {
          return IconButton();
        } else if (index == 4) {
          return OutlineButton();
        }
        return DropdownButton();
      },
    );
  }
}
