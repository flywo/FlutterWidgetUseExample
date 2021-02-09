import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/PopupMenuDivider.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> Material 中窗口弹出的菜单
- 如果需要创建一个显示弹出菜单的按钮，请考虑使用 PopupMenuButton.
''';

const String content1 = '''
### **基本用法**
- PopupMenuDivider 是一条水平分割线，注意数组要使用父类 PopupMenuEntry，配合其他 item 样式共同使用
''';


class MyPMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "PopupMenuItem",
      next: PopupMenuDividerDemo(),
      nextPath: "lib/Code/PopupMenuDivider.dart",
      markdown: content0 + content1,
      url: "https://docs.flutter.io/flutter/material/PopupMenuItem-class.html",
    );
  }
}
