import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Frame/Spacing/AnimatedPadding/AnimatedPadding.dart';
import 'package:flutter_widget_use/Elements/Frame/Spacing/Padding/Padding.dart';
import 'package:flutter_widget_use/Elements/Frame/Spacing/SliverPadding/SliverPadding.dart';

class MySpacing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Spacing",
      content: ["AnimatedPadding", "Padding", "SliverPadding"],
      next: (index) {
        if (index == 0) {
          return MyAnimatedPadding();
        } else if (index == 1) {
          return MyPadding();
        } else if (index == 2) {
          return MySliverPadding();
        }
        return MyAnimatedPadding();
      },
    );
  }
}
