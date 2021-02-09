import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/CheckedPopupMenuItem.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 带有选中标记的 Material 设计风格的弹出菜单
- 默认高度为48px，水平布局使用 ListTile 复选标记是 Icons.done 图标，显示在 leading 位置
- 只有在状态为选中时才会显示图标
''';

const String content1 = '''
### **基本用法**
> 配合 PopupMenuButton 使用
- enabled 属性控制item是否为可点击
- checked 标识item是否为选中状态
''';

class MyCPMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "CheckedPopupMenulItem",
      next: CheckedPopupMenuItemDemo(),
      nextPath: "lib/Code/CheckedPopupMenuItem.dart",
      markdown: content0 + content1,
    );
  }
}
