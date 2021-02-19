import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/ConstrainedBox/ConstrainedBox.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/DecoratedBox/DecoratedBox.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/FittedBox/FittedBox.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/LimitedBox/LimitedBox.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/OverflowBox/OverflowBox.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/RotatedBox/RotatedBox.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/SizeBox/SizeBox.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/SizedOverflowBox/SizedOverflowBox.dart';
import 'package:flutter_widget_use/Elements/Frame/Box/UnconstrainedBox/UnconstrainedBox.dart';

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Box",
      content: ["ConstrainedBox", "DecoratedBox", "FittedBox", "LimitedBox", "OverflowBox", "RotatedBox", "SizeBox", "SizedOverflowBox", "UnconstrainedBox"],
      next: (index) {
        if (index == 0) {
          return MyConstrainedBox();
        } else if (index == 1) {
          return MyDecoratedBox();
        } else if (index == 2) {
          return MyFittedBox();
        } else if (index == 3) {
          return MyLimitedBox();
        } else if (index == 4) {
          return MyOverflowBox();
        } else if (index == 5) {
          return MyRotatedBox();
        } else if (index == 6) {
          return MySizeBox();
        } else if (index == 7) {
          return MySizedOverflowBox();
        } else if (index == 8) {
          return MyUnconstrainedBox();
        }
        return MyConstrainedBox();
      },
    );
  }
}
