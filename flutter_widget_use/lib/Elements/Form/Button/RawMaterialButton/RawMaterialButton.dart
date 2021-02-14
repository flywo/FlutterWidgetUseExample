import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/RawMaterialButton.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _rawMaterialText0 = """### **简介**
> RawMaterial button “RawMaterial 按钮”
- 基于 Semantics，Material 和InkWell 小部件创建按钮;
- 此类不使用当前 Theme 或 ButtonTheme 来计算未指定参数的默认值。它旨在用于自定义 Material button，可选择包含主题或特定于应用程序源的默认值;
""";

const String _rawMaterialText1 = """### **基本用法**
> 参数的默认的 button 和禁用 button
""";

const String _rawMaterialText2 = """### **进阶用法**
> 更改项参数的自定义
""";

class RawMaterialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "RawMaterialButton",
      next: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RawMaterialButtonDefault(),
          RawMaterialButtonCustom()
        ],
      ),
      nextPath: "lib/Code/RawMaterialButton.dart",
      markdown: _rawMaterialText0 + _rawMaterialText1 + _rawMaterialText2,
      url: 'https://docs.flutter.io/flutter/material/RawMaterialButton-class.html',
    );
  }
}
