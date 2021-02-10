import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ScrollbarPainter.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String contentText0 = '''
### **简介**
> 用于绘制滚动条的CustomPainter。
- 与CustomPainter子类化的CustomPainters不同，只有当shouldRepaint返回true时才重绘
- 当滚动条消失和滚动位置发生变化的时候painter需要重绘而不是重新构建
''';

const String contentText1 = '''
### **基本使用**
> 当ScrollbarPainter不再使用的时候，必须在ScrollbarPainter上调用dispose
- 除非自定制Scrollbar的需求，基本上我们都可以使用Scrollbar
- Scrollbar的源码其实就是基于ScrollbarPainter封装的
- demo中将Scrollbar源码进行提取使用
- CupertinoScrollbar 同样也是使用ScrollbarPainter的最好学习示例
''';

class ScrollbarPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ScrollbarPainter",
      next: PaintDemo(),
      nextPath: "lib/Code/ScrollbarPainter.dart",
      markdown: contentText0 + contentText1,
      url: "https://docs.flutter.io/flutter/widgets/ScrollbarPainter-class.html",
    );
  }
}
