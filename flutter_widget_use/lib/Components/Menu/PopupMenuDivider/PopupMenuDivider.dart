import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/PopupMenuDivider.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 一个提供菜单栏弹出对话框中每一项的水平线
- 配合 PopupMenuItem 和 PopupMenuButton 使用
- PopupMenuDivider 可以调整高度，但无法调整颜色
''';

const String content1 = '''
### **基本用法**
> 此widget通过调整Divider widget 来适应于弹出菜单中
- 在 PopupMenuButton 中直接  PopupMenuDivider() 即可
''';

class MyPMD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "PopupMenuDivider",
      next: PopupMenuDividerDemo(),
      nextPath: "lib/Code/PopupMenuDivider.dart",
      markdown: content0 + content1,
      url: "https://docs.flutter.io/flutter/material/PopupMenuDivider-class.html",
    );
  }
}
