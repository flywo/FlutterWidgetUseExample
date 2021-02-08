import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/SimpleDialogCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """
### **简介**
> SimpleDialog 是一个用于向用户传递确定信息并提供选项的弹出层
- SimpleDialog 可为用户提供多个选项选择。有一个可选的标题，显示在选项上方



### **基本用法**

> 通常作为子窗口小部件传递给showDialog，后者显示对话框。
- 选择通常使用SimpleDialogOption表示
- 对于通知用户情况的对话框，请考虑使用 AlertDialog。

""";


class MySimpleDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "SimpleDialog",
      next: SimpleDialogDemo(),
      nextPath: "lib/Code/SimpleDialogCode.dart",
      markdown: _Text0,
    );
  }
}
