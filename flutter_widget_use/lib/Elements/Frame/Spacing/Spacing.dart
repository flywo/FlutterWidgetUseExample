import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Frame/Spacing/AnimatedPadding/AnimatedPadding.dart';

class MySpacing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Spacing",
      content: ["AnimatedPadding"],
      next: (index) {
        if (index == 0) {
          return MyAnimatedPadding();
        }
        return MyAnimatedPadding();
      },
    );
  }
}
