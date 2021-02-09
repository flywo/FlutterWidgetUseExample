import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/LinearProgressIndicator.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 一个线性进度条
- 有两种线性进度条：确定和不确定。
- 确定：确定进度条在每个时间点都有一个特定的值，并且该值应该是0.0递增到1.0。
- 不确定：不确定的进度条在每一个时间点都没有特定到值。只是表明此时取得的进度，没有表明多少未完成。

''';
const String content1 = '''
### **基本用法**
- 创建确定进度条，需要使用介于0.0和1.0的非空值
- 要创建不确定的进度条，需要使用空值
''';

class MyLinearProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "LinearProgressIndicator",
      next: LinearProgressIndicatorDemo(),
      nextPath: "lib/Code/LinearProgressIndicator.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/material/LinearProgressIndicator-class.html',
    );
  }
}
