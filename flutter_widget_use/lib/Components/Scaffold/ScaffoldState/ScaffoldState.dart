import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ScaffoldState.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """
### **简介**
> Scaffold的State对象

通常用来控制**SnackBars**和**BottomSheets**和**Drawer**的显示与隐藏. 



### **基本用法**
- 通过为Scaffold定义key属性, 声明_scaffoldState, 通过_scaffoldState直接调用scaffoldState方法
- 当组件无法直接为Scaffold定义key属性时, 可以通过 **Context**与**Scaffold.of**获取父级scaffoldState

""";

class ScaffoldState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ScaffoldState",
      next: ScaffoldStateDemo(),
      nextPath: "lib/Code/ScaffoldState.dart",
      markdown: _Text0,
      url: 'https://docs.flutter.io/flutter/material/ScaffoldState-class.html',
    );
  }
}
