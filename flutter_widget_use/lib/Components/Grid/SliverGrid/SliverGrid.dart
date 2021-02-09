import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/SliverGridCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """
### **简介**
> SliverGrid 将多个item以每行二个的形式, 进行排列.

### **基本用法**

> 创建

在排列列表时，将基于现有的小部件, 延迟创建可见子项的元素、状态和呈现对象。 也就是只有视口中的元素, 才会被创建, 类似于我们网页中的懒加载.

> 销毁

当元素滚动到视图之外时，关联的元素子树、状态和渲染对象将被销毁, 进入视觉窗口的元素将以懒加载的形式进行创建。

""";

class MySliverGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "SliverGrid",
      next: SliverGridDemo(),
      nextPath: "lib/Code/SliverGridCode.dart",
      markdown: _Text0,
      url: 'https://docs.flutter.io/flutter/material/SliverGrid-class.html',
    );
  }
}
