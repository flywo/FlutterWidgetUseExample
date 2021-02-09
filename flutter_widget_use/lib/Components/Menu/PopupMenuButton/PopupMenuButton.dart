import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/PopupMenuButton.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 一个提供菜单栏弹出对话框的按钮
- 点击的时候弹出菜单栏对话框，当选择其中一项后会调用 onSelected方法。传递其所选的菜单项的值
- 可以提供一个child widget或者提供一个icon给它，但是并不能两者都提供
- 如果什么都没有提供给 PopupMenuButton ，则会根据运行平台创建一个overflow icon

''';

const String content1 = '''
### **基本用法**
> PopupMenuButton 通常配合 PopupMenuItem 一起使用
- enabled 标识当前item是否可点击
- PopupMenuItem 可以在child中传入带有Icon的widget
- 可以指定 PopupMenuButton 的 初始值 initialValue
''';

class MyPMB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "PopupMenuButton",
      next: PopupMenuButtonDemo(),
      nextPath: "lib/Code/PopupMenuButton.dart",
      markdown: content0 + content1,
      url: "https://docs.flutter.io/flutter/material/PopupMenuButton-class.html",
    );
  }
}
