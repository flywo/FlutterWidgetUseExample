import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Themes/Cupertino/CupertinoApp/CupertinoApp.dart';

class MyCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Cupertino",
      content: ["CupertinoApp"],
      next: (index) {
        return MyCupertinoApp();
      },
    );
  }
}
