import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/Tab.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 属于 Material 风格下的一个widget
- 如果同时给Tab传入icon和text，text将会被展现在icon的下面
''';

const String content1 = '''
### **基本用法**
> 通常需要配合TabBar TabBarView使用
- TabBar中的children和TabBarView中的数组成一一对应关系
- TabController 可以协调TabBarView和Tab之间的选择和个数等
''';


class Tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Tab",
      next: TabDemo(),
      nextPath: "lib/Code/Tab.dart",
      markdown: content0 + content1,
      url: "https://docs.flutter.io/flutter/material/Tab-class.html",
    );
  }
}
