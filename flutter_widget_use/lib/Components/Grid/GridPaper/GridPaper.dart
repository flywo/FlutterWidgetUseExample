import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/GridPaperCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """
### **简介**
> GridViewPaper是GridView中的item的一种展现形式, 会在上层浮现一层网络.

""";

class MyGridPager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "GridPaper",
      next: GridPaperDemo(),
      nextPath: "lib/Code/GridPaperCode.dart",
      markdown: _Text0,
    );
  }
}
