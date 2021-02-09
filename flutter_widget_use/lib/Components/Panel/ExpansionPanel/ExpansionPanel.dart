import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ExpansionPanel.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 扩展面板，包含一个标题和一个正文，可以展开或者折叠。面板展开，主体可见。

 
''';
const String content1 = '''
### **基本用法**

''';

class MyEP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ExpansionPanel",
      next: ExpansionPanelsDemo(),
      nextPath: "lib/Code/ExpansionPanel.dart",
      markdown: content0 + content1,
      url: 'https://api.flutter.dev/flutter/material/ExpansionPanel-class.html',
    );
  }
}
