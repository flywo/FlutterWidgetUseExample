import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/RaisedButton.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _raisedText0 = """### **简介**
> Raised button “凸起按钮”
- Raised button 基于  a Material widget 窗口widget，按下 button 时，Material.elevation 会增加;
- 使用 Raised button 可将尺寸添加到大多数平面布局中;
- 例如在复杂的内容列表中，或在宽阔的空间中。避免在已经提出的内容（例如对话框或卡片）上使用 Raised button;
""";

const String _raisedText1 = """### **基本用法**
> 参数的默认的 button 和禁用 button;
- 如果onPressed回调为null，则该按钮将被禁用，不会对触摸做出反应，并且将按 disabledColor 属性而不是color属性指定的颜色进行着色;
- 如果您尝试更改按钮的颜色并且没有任何效果，请检查您是否正在传递非null onPressed处理程序;""";

const String _raisedText2 = """### **进阶用法1**
> RaisedButton.icon 的用方法，按钮图标和标签的widget创建文本按钮;""";

const String _raisedText3 = """### **进阶用法2**
> 更改项参数的自定义,比如:边框，点击效果，内容文字,颜色,圆角等
- 如果您想要 ink-splash  的墨水效果，但又不想使用按钮，请考虑直接使用InkWell;
- Raised buttons 的最小尺寸为88.0×36.0，可以用 ButtonTheme 覆盖;
- 通过 shape 属性的设置，改变边框样式和圆角;
""";

class RaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "RaisedButton",
      next: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButtonDefault(),
          RaisedButtonIconDefault(),
          RaisedButtonCustom()
        ],
      ),
      nextPath: "lib/Code/RaisedButton.dart",
      markdown: _raisedText0 + _raisedText1 + _raisedText2 + _raisedText3,
      url: 'https://docs.flutter.io/flutter/material/RaisedButton-class.html',
    );
  }
}
