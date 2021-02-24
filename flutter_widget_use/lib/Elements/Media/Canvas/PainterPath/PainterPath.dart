import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/PainterPath.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const Text = '''
### **简介**
> 在 canvas 上绘制的图案;
-  canvas + paint 的应用。
''';

const Text1 = '''
### **基本用法**
- canvas 的 painter 的自定义绘制线的方法;
''';

const Text2 = '''
> 绘制简单直线
''';

const Text3 = '''
> 绘制折线
''';

const Text4 = '''
> 二阶贝塞尔曲线
''';

const Text5 = '''
> 三阶贝塞尔曲线
''';

class MyPainterPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "PainterPath",
      next: ListView(
        children: [
          CustomViewPage(type: 'simpleline'),
          CustomViewPage(type: 'polyline'),
          CustomViewPage(type: 'Besizerline2'),
          CustomViewPage(type: 'Besizerline3'),
        ],
      ),
      nextPath: "lib/Code/PainterPath.dart",
      markdown: Text + Text1 + Text2 + Text3 + Text4 + Text5,
      url: 'https://docs.flutter.io/flutter/dart-ui/Paint-class.html',
    );
  }
}
