import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/PopupMenuDivider.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 这个state 是 PopupMenuItem 子类
- 默认情况下，它实现了Material Design弹出菜单项的基本样式和布局，然而这个buidlChild方法可以重写，以调整放置在菜单中的位置。默认它返回PopupMenuItem.child。

''';

const String content1 = '''
### **基本用法**
- PopupMenuDivider 是一条水平分割线，注意数组要使用父类 PopupMenuEntry，配合其他 item 样式共同使用
''';

class MyPMIS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "PopupMenuItemState",
      next: PopupMenuDividerDemo(),
      nextPath: "lib/Code/PopupMenuDivider.dart",
      markdown: content0 + content1,
      url: "https://docs.flutter.io/flutter/material/PopupMenuItem-class.html",
    );
  }
}
