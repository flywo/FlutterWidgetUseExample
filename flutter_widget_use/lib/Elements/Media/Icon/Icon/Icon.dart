import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Code/Icon.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const Text = '''
### **简介**
> 使用IconData中描述的字体（ 例如素材中预定义的IconDatas） 中的字形绘制的图形图标。 
- 该图标不是交互示， 只是展示图标样式。 如果对于有交互要求， 可以使用IconButton
''';
const Text1 = '''
### **基本用法**
- 多用于图标的使用选择 
- 可对图标设置大小， 颜色， 标签等
''';

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Icon",
      next: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconDemo(
            curColor: Colors.redAccent,
          ),
          IconDemo(
            curColor: Colors.yellow,
          )
        ],
      ),
      nextPath: "lib/Code/Icon.dart",
      markdown: Text + Text1,
      url: 'https://docs.flutter.io/flutter/material/Icons-class.html',
    );
  }
}
