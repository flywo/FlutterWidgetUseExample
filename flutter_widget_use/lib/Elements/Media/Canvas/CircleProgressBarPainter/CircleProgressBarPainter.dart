import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/CircleProgressBarPainter.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const Text = '''
### **简介**
> 操作图形的界面;

''';
const Text1 = '''
### **基本用法**
- canvas + Animation 实现一个 loading 效果;
''';

class MyCircleProgressBarPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "CircleProgressBarPainter",
      next: CustomViewPage(),
      nextPath: "lib/Code/CircleProgressBarPainter.dart",
      markdown: Text + Text1,
      url: 'https://docs.flutter.io/flutter/dart-ui/Canvas-class.html',
    );
  }
}
