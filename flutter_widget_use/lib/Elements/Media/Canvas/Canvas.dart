import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Media/Canvas/Canvas/Canvas.dart' as my;
import 'package:flutter_widget_use/Elements/Media/Canvas/CircleProgressBarPainter/CircleProgressBarPainter.dart';
import 'package:flutter_widget_use/Elements/Media/Canvas/PainterPath/PainterPath.dart';
import 'package:flutter_widget_use/Elements/Media/Canvas/PainterSketch/PainterSketch.dart';

class MyCanvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Canvas",
      content: ["Canvas", "CircleProgressBarPainter", "PainterPath", "PainterSketch"],
      next: (index) {
        if (index == 0) {
          return my.MyCanvas();
        } else if (index == 1) {
          return MyCircleProgressBarPainter();
        } else if (index == 2) {
          return MyPainterPath();
        } else if (index == 3) {
          return MyPainterSketch();
        }
        return my.MyCanvas();
      },
    );
  }
}
