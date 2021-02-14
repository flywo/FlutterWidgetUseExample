import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/Radio.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const content1 = """
### **简介**
> material design 风格的单选按钮

Radio widget 代表表单中的单选按钮, 当groupValue = value时代表组件被选中。

在表单中, 单选按钮是表示一组互斥选项按钮中的一个。当一个按钮被选中，之前选中的按钮就变为非选中的。

### **基本用法**
以下是Radio的属性主产明
- activeColor → Color - 激活时的颜色。
- groupValue → T - 选择组的值。
- onChanged → ValueChanged - 改变时触发。
- value → T - 单选的值。
""";

class Radio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Radio",
      next: RadioADemo(),
      nextPath: "lib/Code/Radio.dart",
      markdown: content1,
      url: 'https://docs.flutter.io/flutter/material/Radio-class.html',
    );
  }
}
