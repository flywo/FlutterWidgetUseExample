import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/SnackBarActionCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """
### **简介**
> SnackBarAction “屏幕底部消息右侧可操作的行为”

- 带有可选操作的轻量级消息，短暂显示在屏幕底部, 并提供按钮交互。

### **基本用法**

> 为SnackBar加入action[SnackBarAction]显示按区, 默认下是隐藏的

""";

class MySnackBarAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "SnackBarAction",
      next: SnackBarActionDemo(),
      nextPath: "lib/Code/SnackBarActionCode.dart",
      markdown: _Text0,
      url: 'https://docs.flutter.io/flutter/material/SnackBarAction-class.html',
    );
  }
}
