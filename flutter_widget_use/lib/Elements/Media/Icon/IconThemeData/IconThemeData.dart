import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Code/IconThemeData.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const Text = '''
### **简介**
> IconThemeData为图标提供属性，必须是Icon的父级
- 图标主题Icon和ImageIcon的依赖,获取当前主题，是用IconTheme.of
''';
const Text1 = '''
### **基本用法**
- 部分widget无法管理大小，IconThemeData的size属性失效。
- 通过opacity属性，修改widget透明度，如下图
''';

class MyIconThemeData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "IconThemeData",
      next: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconThemeDemo(
                curColor: Colors.red,
                curOpacity: 1.0,
              ),
              IconThemeDemo(
                curColor: Colors.red,
                curOpacity: 0.5,
              ),
              IconThemeDemo(
                curColor: Colors.red,
                curOpacity: 0.2,
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          IconThemeDemo2(curColor: Colors.white),
        ],
      ),
      nextPath: "lib/Code/IconThemeData.dart",
      markdown: Text + Text1,
      url: 'https://docs.flutter.io/flutter/widgets/IconThemeData-class.html',
    );
  }
}
