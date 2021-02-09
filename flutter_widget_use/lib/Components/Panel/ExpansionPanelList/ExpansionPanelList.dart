import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ExpansionPanel.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 扩展列表

 
''';
const String content1 = '''
### **基本用法**

''';

class MyEPL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ExpansionPanelList",
      next: ExpansionPanelsDemo(),
      nextPath: "lib/Code/ExpansionPanelList.dart",
      markdown: content0 + content1,
      url: 'https://api.flutter.dev/flutter/material/ExpansionPanelList-class.html',
    );
  }
}
