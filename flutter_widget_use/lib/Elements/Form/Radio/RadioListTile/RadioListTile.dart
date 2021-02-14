import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/RadioListTile.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const content1 = """
### **简介**
> material design 风格的单选按钮附加文字label

点击文字的同时 , 将会触发Radio的点击效果.

功能同 @Radio

### **基本用法**
Radio是单选框，和checkbox一样本身不包含状态，当groupValue = value时代表选中状态
""";

class RadioListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "RadioListTile",
      next: DemoA(),
      nextPath: "lib/Code/RadioListTile.dart",
      markdown: content1,
      url: 'https://docs.flutter.io/flutter/material/RadioListTile-class.html',
    );
  }
}
