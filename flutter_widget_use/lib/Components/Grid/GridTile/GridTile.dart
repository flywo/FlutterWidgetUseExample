import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/GridTileCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """
### **简介**
> GridTile 是GridList中的一种瓷片组件;包含header, body, footer三部份;


### **基本用法**

> 一个grid列表包含多个Item, 每个Item通常包含一些视觉丰富的内容(例如，图像), 我们可以用GridTileBar去定义他的页眉与页脚。

如下实例中, 第一个是item便是GridTile组件构成. 包含header, body, footer;
""";

class MyGridTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "GridTile",
      next: GridTileDemo(),
      nextPath: "lib/Code/GridTileCode.dart",
      markdown: _Text0,
      url: 'https://docs.flutter.io/flutter/material/Dialog-class.html',
    );
  }
}
