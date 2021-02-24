import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Code/IconTheme.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const Text = '''
### **简介**
> 用于应用栏图标的颜色，不透明度和大小。
- 图标主题Icon和ImageIcon的依赖
''';
const Text1 = '''
### **基本用法**
- 通常，这与backgroundColor，brightness，textTheme一起设置。
默认为ThemeData.primaryIconTheme。
''';

class MyIconTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "IconTheme",
      next: Column(
        children: <Widget>[
          IconThemeDemo(),
          SizedBox(
            height: 20.0,
          ),
          IconThemeDemo(
            curColor: Colors.white,
          ),
          SizedBox(
            height: 20.0,
          ),
          IconThemeDemo(
            curColor: Colors.yellow,
          ),
          SizedBox(
            height: 20.0,
          ),
          IconThemeDemo2(
            curColor: Colors.white,
            curSize: 20.0,
          ),
        ],
      ),
      nextPath: "lib/Code/IconTheme.dart",
      markdown: Text + Text1,
      url: 'https://docs.flutter.io/flutter/widgets/IconTheme-class.html',
    );
  }
}
