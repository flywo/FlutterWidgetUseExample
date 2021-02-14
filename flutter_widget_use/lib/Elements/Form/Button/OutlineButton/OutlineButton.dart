import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/OutlineButton.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _outlineText0 = """### **简介**
> Outline button “边框按钮”
- RaisedButton和FlatButton之间的交叉：一个有边框的按钮，当按下按钮时，其高度增加，背景变得不透明；
- 高程最初为0.0，其背景颜色 为透明。按下按钮时，其背景变为不透明，然后其高程增加到highlightElevation；
""";

const String _outlineText1 = """### **基本用法**
> 参数的默认的 button 和禁用 button
- 如果onPressed回调为null，则该按钮将被禁用，不会对触摸做出反应，并且将按 disabledColor 属性而不是color属性指定的颜色进行着色；
- 如果您尝试更改按钮的颜色并且没有任何效果，请检查您是否正在传递非null onPressed处理程序；""";

const String _outlineText2 = """### **进阶用法1**
> OutlineButton.icon 的用法，按钮图标和标签的widget创建文本按钮""";

const String _outlineText3 = """### **进阶用法2**
> 更改参数的自定义,比如:边框，点击效果，内容文字,颜色,圆角等；
- Outline buttons 按钮有一个边框，其形状由形状定义 ，其外观由borderSide，disabledBorderColor 和 highlightedBorderColor 定义；
- 如果您想要 ink-splash 效果，但又不想使用 button ，请考虑直接使用 InkWell；
- Outline buttons 的最小尺寸为88.0×36.0，可以用 ButtonTheme 覆盖；
- 通过 shape 属性的设置，改变边框样式和圆角;
- 可以尝试长按按钮，button 突出显示;
""";

class OutlineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "OutlineButton",
      next: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlineButtonDefault(),
          OutlineButtonIconDefault(),
          OutlineButtonCustom()
        ],
      ),
      nextPath: "lib/Code/OutlineButton.dart",
      markdown: _outlineText0 + _outlineText1 + _outlineText2 + _outlineText3,
      url: 'https://docs.flutter.io/flutter/material/OutlineButton-class.html',
    );
  }
}
