import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/IconButton.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _iconText0 = """### **简介**
> Icon button “图标按钮”
- IconButton widget上的图片，通过填充颜色（墨水）来对触摸作出反应;
""";

const String _iconText1 = """### **基本用法**
> 参数的默认的按钮和禁用按钮
- 图标按钮通常在AppBar.actions字段中使用，但它们也可以在许多其他地方使用;
- 如果您尝试更改按钮的颜色并且没有任何效果，请检查您是否正在传递非null onPressed处理程序;""";

const String _iconText2 = """### **进阶用法**
> 更改项参数的自定义,比如:边框，点击效果，内容文字,颜色,圆角等;
- 如果可能，图标按钮的命中区域的大小至少为48.0像素，与实际的iconSize无关，以满足 Material Design规范中的触摸目标大小要求。的对准控制图标本身如何定位命中区域内;
- ** 长按可弹出 tip 文字 **
""";

class IconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "IconButton",
      next: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButtonDefault(),
          IconButtonCustom()
        ],
      ),
      nextPath: "lib/Code/IconButton.dart",
      markdown: _iconText0 + _iconText1 + _iconText2,
      url: 'https://docs.flutter.io/flutter/material/IconButton-class.html',
    );
  }
}
