import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Code/IconData.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const Text = '''
### **简介**
> 字体表示符合表示的图标说明
- 可参考图标
''';

const Text1 = '''
### **基本用法**
- 多用于图标的使用选择 
- 可对图标设置大小， 颜色， 标签等
''';

class MyIconData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "IconData",
      next: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconDataDemo(
            curColor: Colors.redAccent,
          ),
          IconDataDemo(
            curColor: Colors.yellow,
          )
        ],
      ),
      nextPath: "lib/Code/IconData.dart",
      markdown: Text + Text1,
      url: 'https://docs.flutter.io/flutter/widgets/IconData-class.html',
    );
  }
}
