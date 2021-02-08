import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Dialog/AboutDialog/AboutDialog.dart';
import 'package:flutter_widget_use/Components/Dialog/AlertDialog/AlertDialog.dart';
import 'package:flutter_widget_use/Components/Dialog/Dialog/Dialog.dart';
import 'package:flutter_widget_use/Components/Dialog/SimpleDialog/SimpleDialog.dart';

class MyDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Dialog",
      content: ["AboutDialog", "AlertDialog", "Dialog", "SimpleDialog"],
      next: (index) {
        if (index == 0) {
          return MyAboutDialog();
        } else if (index == 1) {
          return MyAlertDialog();
        } else if (index == 2) {
          return MyCustomDialog();
        } else if (index == 3) {
          return MySimpleDialog();
        }
        return MyAboutDialog();
      },
    );
  }
}
