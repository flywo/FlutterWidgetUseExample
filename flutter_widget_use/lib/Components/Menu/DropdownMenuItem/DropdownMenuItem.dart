import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/DropdownMenuItem.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> DropdownButton 创建的一个菜单项
- DropdownButton 是 Material 设计风格中的一个从列表中选择某一个item的按钮
- DropdownButton 按钮显示选定的Item的值以及打开用于选择其他item的菜单箭头
- DropdownMenuItem<T> 这里面的T代表入参的类型，注意在给定菜单中，所有的item的类型要保持一致
''';

const String content1 = '''
### **基本用法**
> 配合 DropdownButton 使用
- value 选中返回的值
- child 子Widget项
''';


class MyDMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "DropdownMenuItem",
      next: DropdownMenuItemDemo(),
      nextPath: "lib/Code/DropdownMenuItem.dart",
      markdown: content0 + content1,
      url: "https://docs.flutter.io/flutter/material/DropdownMenuItem-class.html",
    );
  }
}
