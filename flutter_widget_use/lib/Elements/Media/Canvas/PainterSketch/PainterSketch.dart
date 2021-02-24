import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/PainterSketch.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const Text = '''
### **简介**
> 操作图形的界面;

''';
const Text1 = '''
### **基本用法**
- canvas + paint + GestureDetector 实现一个 简易的画板;
''';

class MyPainterSketch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "PainterSketch",
      next: PainterSketchDome(),
      nextPath: "lib/Code/PainterSketch.dart",
      markdown: Text + Text1,
      url: 'https://docs.flutter.io/flutter/dart-ui/Paint-class.html',
    );
  }
}
