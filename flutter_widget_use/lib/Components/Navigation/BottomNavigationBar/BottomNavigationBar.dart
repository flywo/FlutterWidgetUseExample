import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/BottomNavigationBar.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _text0 = """### **简介**
> BottomNavigationBar “底部导航栏”
- 显示在应用程序底部的导航栏,由文本标签，图标或两者形式的多个项目组成;
- 它提供了应用程序顶级视图之间的快速导航;
""";

const String _text1 = """### **基本用法**
> BottomNavigationBar 底部导航栏通常与Scaffold结合使用
- 它作为 Scaffold.bottomNavigationBar 参数;
- BottomNavigationBar 3-5个之间个底部按钮数量是合理的，理论上 icon 大小合适，可以支持更多;
- 默认0-3个底部按钮数量时，BottomNavigationBar采用fixed的模式摆放底部按钮，当有4个时默认使用 BottomNavigationBarType.shifting 模式摆放底部按钮;
- 大多数人可能不需要选中文字被放大，可以通过 设置 selectedFontSize 与 unselectedFontSize 同等大小覆盖默认效果;
- 下面的底部导航即是效果;
""";

class MyBNB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "BottomNavigationBar",
      next: BottomNavigationBarFullDefault(),
      nextPath: "lib/Code/BottomNavigationBar.dart",
      markdown: _text0 + _text1,
      url: 'https://docs.flutter.io/flutter/material/BottomNavigationBar-class.html',
    );
  }
}
