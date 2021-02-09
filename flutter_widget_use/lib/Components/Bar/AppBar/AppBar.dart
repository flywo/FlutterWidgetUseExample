import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import '../../../Code/AppBarCode.dart';

const String _Text0 = """### **简介**
> AppBar “应用栏”
- 应用栏由工具栏组成，或者是工具栏和其他 widget 组合形成，例如 TabBar和FlexibleSpaceBar;
- 应用栏通常用于 Scaffold.appBar 属性，该属性将应用栏放置在屏幕顶部的固定高度小部件中;
- 对于可滚动的应用栏，请参阅SliverAppBar，它将AppBar嵌入 sliver 中以便在CustomScrollView中使用;
""";

const String _Text1 = """### **基本用法**
> AppBar
- AppBar 在底部上方显示工具栏 widget，前导 leading ，标题 title 和操作 actions;
""";

const String _Text2 = """### **进阶用法**
> AppBar
- 一个完整的 AppBar 的例子, 增加 PopupMenuButton,TabBar 的示例子;
- 所述底部通常用于一个的 TabBar;
- 如果指定了 flexibleSpace 窗口 widget，则它将堆叠在工具栏和底部窗口 widget 后面;
""";

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "AppBar",
      next: Column(
        children: [
          AppBarLessDefaultComplex(),
          Expanded(child: AppBarLessDefaultSimple())
        ],
      ),
      nextPath: "lib/Code/AppBarCode.dart",
      markdown: _Text0 + _Text1 + _Text2,
      url: 'https://docs.flutter.io/flutter/material/AppBar-class.html',
    );
  }
}
