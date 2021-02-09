import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/TabbarCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """
### **简介**
> SnackBarAction 来实现并行界面的横向滑动展示

- TabBar，是材料设计中很常用的一种横向标签. 来实现并行界面的横向滑动展示，在Flutter的世界中，TabBar有着相同的作用。通常，我们会在AppBar的底部部分结合TabBarView来使用TabBar;



### **基本用法**

> 在容器顶部或者底部配置, TabBar组件, 横向切换视口窗口中的内容


**TabBar** 有以下几项属性

- tabs 一般使用Tab对象,当然也可以是其他的Widget
- controller TabController对象
- isScrollable 是否可滚动
- indicatorColor 指示器颜色
- indicatorWeight 指示器厚度
- indicatorPadding 底部指示器的Padding
- indicator 指示器decoration，例如边框等
- indicatorSize 指示器大小计算方式
- labelColor 选中Tab文字颜色
- labelStyle 选中Tab文字Style
- unselectedLabelColor 未选中Tab中文字颜色
- unselectedLabelStyle 未选中Tab中文字style

**TabBarView** 有以下几项属性
- children tabBar中对象分别对应的视图窗口内容, children的长度通常与tabs中的tab对象长度相同
- controller TabController对象
""";


class MyTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "TabBar",
      next: TabBarDemo(),
      nextPath: "lib/Code/TabbarCode.dart",
      markdown: _Text0,
      url: 'https://docs.flutter.io/flutter/material/SnackBarAction-class.html',
    );
  }
}

