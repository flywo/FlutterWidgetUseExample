import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/Column.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String Text0 = """### **简介**
> Column 是一个将其child显示在竖直方向数组的widget，于Row相对
- 将其child填充可用的竖直水平空间，默认竖直空间无法滚动，如有很多children，竖直空间饱和无法放置，你可以使用listView搭配使用
- 如果你只有一个child，只需要使用对齐（Align）或者居中（Center）来展示child
""";

const String Text1 = """
### **基本用法**
> 竖直布局，设置位置对齐方式

mainAxisSize 属性
- 一行的高度是有mainAxisSize属性控制，默认是max

mainAxisAlignment属性
- 将children放置在主轴某位置

CrossAxisAlignment 属性
- crossAxisAlignment: crossAxisAlignment.center/end/start,
- 即，根据设定的位置交叉对齐
""";

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Column",
      next: ColumnDefault(),
      nextPath: "lib/Code/Column.dart",
      markdown: Text0 + Text1,
      url: 'https://docs.flutter.io/flutter/widgets/Column-class.html',
    );
  }
}
