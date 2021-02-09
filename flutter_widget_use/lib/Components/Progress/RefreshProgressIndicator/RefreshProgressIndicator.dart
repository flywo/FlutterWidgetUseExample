import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/LinearProgressIndicator.dart';
import 'package:flutter_widget_use/Code/RefreshProgressIndicator.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 一个刷新指示

''';
const String content1 = '''
### **基本用法**
''';

class MyRefreshProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "RefreshProgressIndicator",
      next: RefreshProgressIndicatorDemo(),
      nextPath: "lib/Code/RefreshProgressIndicator.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/material/RefreshProgressIndicator-class.html',
    );
  }
}
