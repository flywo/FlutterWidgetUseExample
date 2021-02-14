import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/DropdownButton.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _dropdownText0 = """### **简介**
> Dropdown button “用于从项目列表中进行选择的按钮”
- 参数类型 T 是下拉菜单表示的值的类型。给定菜单中的所有条目必须表示具有一致类型的值。通常，使用枚举。每个DropdownMenuItem在项目必须专门与同类型的说法；
""";

const String _dropdownText1 = """### **基本用法**
> 此示例显示一个包含四个项目的菜单
""";

const String _dropdownText2 = """### **进阶用法**
> 此示例尝试调整所有属性，展示出效果
""";

class DropdownButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "DropdownButton",
      next: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButtonDefault(),
          DropdownButtonCustom()
        ],
      ),
      nextPath: "lib/Code/DropdownButton.dart",
      markdown: _dropdownText0 + _dropdownText1 + _dropdownText2,
      url: "https://docs.flutter.io/flutter/material/DropdownButton-class.html",
    );
  }
}
