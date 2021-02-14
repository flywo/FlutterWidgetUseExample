import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/PopupMenuButtonButton.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _titleText0 = """
### **简介**
> 按下时显示菜单
- 当菜单因为选择了项目而被解除时调用onSelected。传递给onSelected的值是所选菜单项的值;
- 可以提供 `child` 或 `icon` 中的一个，但不是能同时设置两者。如果提供了 `icon` ，则 `PopupMenuButton` 的行为类似于 `IconButton`;
- 如果两者都为null，则创建一个标准 overflow icon（取决于平台）;
""";
const String _titleText1 = """
### **基本用法**
> 此示例显示一个包含四个项目的菜单
- 在枚举值之间进行选择，并_selection根据选择设置字段;
""";

const String _titleText2 = """
### **进阶用法**
> 此示例尝试调整所有属性，展示出效果
- 默认选择第二个;
- 再次打开,`PopupMenuItem` 保留上次的选择结果;
""";

class PopupMenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "PopupMenuButton",
      next: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PopupMenuButtonDefault("default1")
        ],
      ),
      nextPath: "lib/Code/PopupMenuButtonButton.dart",
      markdown: _titleText0 + _titleText1 + _titleText2,
      url: 'https://docs.flutter.io/flutter/material/PopupMenuButton-class.html',
    );
  }
}
