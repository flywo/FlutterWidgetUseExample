import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/GridTileBarCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """
### **简介**
> GridTileBar 通常用来做GridTile的header与footer组件;


### **基本用法**

> GridTileBar含有五个属性

- backgroundColor 描述GridTileBar的背景颜色
- leading GridTileBar左侧的widget, 通常我们用图标来占位
- subtitle 次标题
- title 主标题
- trailing GridTileBar右侧的widgett, 通常我们用来做交互操作类的组件
""";

class MyGridTileBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "GridTileBar",
      next: GridTileDemo(),
      nextPath: "lib/Code/GridTileBarCode.dart",
      markdown: _Text0,
    );
  }
}
