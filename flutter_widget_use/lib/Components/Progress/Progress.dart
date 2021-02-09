import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Progress/CircularProgressIndicator/CircularProgressIndicator.dart';
import 'package:flutter_widget_use/Components/Progress/LinearProgressIndicator/LinearProgressIndicator.dart';
import 'package:flutter_widget_use/Components/Progress/RefreshProgressIndicator/RefreshProgressIndicator.dart';

class MyProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Progress",
      content: ["CircularProgressIndicator", "LinearProgressIndicator", "RefreshProgressIndicator"],
      next: (index) {
        if (index == 0) {
          return MyCircularProgressIndicator();
        } else if (index == 1) {
          return MyLinearProgressIndicator();
        } else if (index == 2) {
          return MyRefreshProgressIndicator();
        }
        return MyCircularProgressIndicator();
      },
    );
  }
}
