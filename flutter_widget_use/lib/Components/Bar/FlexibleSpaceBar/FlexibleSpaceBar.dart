import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Code/FlexibleSpaceBarCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """### **简介**
> FlexibleSpaceBar “扩展和折叠的应用栏”
- AppBar 的一部分，可以扩展和折叠;
""";

const String _Text1 = """### **基本用法**
> 最常用于 SliverAppBar.flexibleSpace 字段
- 灵活的空格键随着应用滚动而扩展和收缩，以便 AppBar 从应用程序的顶部到达应用程序滚动内容的顶部;
- 要调整 AppBar 大小,必须将其包装在 FlexibleSpaceBar.createSettings 返回的 widget 中 ，以将大小调整信息传递给 FlexibleSpaceBar;
""";

class MyFlexibleSpaceBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "FlexibleSpaceBar",
      next: Center(child: FlexibleSpaceBarLessDefault()),
      nextPath: "lib/Code/FlexibleSpaceBarCode.dart",
      markdown: _Text0 + _Text1,
    );
  }
}
