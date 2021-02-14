import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/FlatButton.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _flatText0 = """### **简介**
> FlatButton 是显示在（零高程）material widget 上的文本标签
- 通过填充颜色对触摸作出反应在工具栏上；
- FlatButtons 故意不具有可见边框，因此必须依赖于它们相对于其他内容的位置以用于上下文；
- 在对话框和卡片中，它们应该组合在一个底角中。避免使用平面按钮，它们会与其他内容混合，例如在列表中间；""";

const String _flatText1 = """### **基本用法**
> 参数的默认的 button 和禁用 button
- 如果 onPressed 回调为null，则该按钮将被禁用，不会对触摸做出反应，并且将按 disabledColor 属性而不是color属性指定的颜色进行着色；
- 如果您尝试更改按钮的颜色并且没有任何效果，请检查您是否正在传递非null onPressed处理程序；。""";

const String _flatText2 = """### **进阶用法1**
> FlatButton.icon ，button 图标和标签的 widget 创建文本按钮；""";

const String _flatText3 = """### **进阶用法2**
> 更改参数的自定义,比如:边框，点击效果，内容文字颜色等；
- 要使应用程序的一部分具有交互式，使用 ink splashes，请考虑使用InkWell;
- Flat button 的最小尺寸为88.0×36.0，可以用 ButtonTheme 覆盖。该clipBehavior参数不能为空;""";

class FlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "FlatButton",
      next: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButtonDefault(),
          FlatButtonIconDefault(),
          FlatButtonCustom()
        ],
      ),
      nextPath: "lib/Code/FlatButton.dart",
      markdown: _flatText0 + _flatText1 + _flatText2 + _flatText3,
      url: "https://docs.flutter.io/flutter/material/FlatButton-class.html",
    );
  }
}
