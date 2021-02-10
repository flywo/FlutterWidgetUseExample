import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ScrollMetrics.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 包含当前ViewPort及滚动位置等信息
- pixels：当前滚动位置
- maxScrollExtent：最大可滚动长度。
- extentBefore：滑出ViewPort顶部的长度；
- extentInside：ViewPort内部长度；此示例中屏幕显示的列表部分的长度
- extentAfter：列表中未滑入ViewPort部分的长度；此示例中列表底部未显示到屏幕范围部分的长度
- atEdge：是否滑到了Scrollable Widget的边界
''';

const String content1 = '''
### **基本用法**
> 抽象类，不可被实例化
- FixedScrollMetrics，它是实现此接口的不可变对象
- 下方Demo中，在接收到滚动事件时，参数类型为ScrollNotification，它包括一个metrics属性，它的类型是ScrollMetrics
''';

class ScrollMetrics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ScrollMetrics",
      nextPath: "lib/Code/ScrollMetrics.dart",
      next: ScrollMetricsDemo(),
      markdown: content0 + content1,
      url: "https://docs.flutter.io/flutter/widgets/ScrollMetrics-class.html",
    );
  }
}
