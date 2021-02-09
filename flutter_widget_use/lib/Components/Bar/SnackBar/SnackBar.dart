import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/SnackBarCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """### **简介**
> SnackBar “屏幕底部消息”
- 带有可选操作的轻量级消息，短暂显示在屏幕底部
- SnackBar是用户操作后，显示提示信息的一个控件，类似Toast，会自动隐藏;
""";

const String _Text1 = """### **基本用法**
> Scaffold.of(context).showSnackBar()，传递描述消息的 SnackBar 实例;
- 要控制SnackBar保持可见的时间，请指定持续时间。
""";


class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "SnackBar",
      next: SnackBarLessDefault(),
      nextPath: "lib/Code/SnackBarCode.dart",
      markdown: _Text0 + _Text1,
      url: 'https://docs.flutter.io/flutter/material/SnackBar-class.html',
    );
  }
}
