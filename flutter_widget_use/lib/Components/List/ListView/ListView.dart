import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ListViewCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """### **简介**
> ListView “滚动列表”
- 一个非常常用的控件，涉及到数据列表展示的，一般情况下都会选用该控件。
- 跟GridView相似，基本上是一个slivers里面只包含一个SliverList的CustomScrollView。
""";

const String _Text1 = """### **基本用法**
> 布局行为

- ListView在主轴方向可以滚动，在交叉轴方向，则是填满ListView。
- 一个组合控件。ListView跟GridView类似，都是继承自BoxScrollView。
- ### 在Flutter中有几种构建ListView的方式,分别是: **默认List，ListView.builder， ListView.separated，ListView.custom**。
""";

const String _Text2 = """
> ListView() 
- 默认 List 方式，是把数据 Iterable 添加到列表中，之后直接添加到 ListView 即可。
- Tips: 如果需要设置分割线，需要对列表 item 添加处理，ListTile.divideTiles。
- 仅适用于内容较少的情形，因为它是一次性渲染所有的 items ，当 items 的数目较多时，很容易出现卡顿现象的，导致滑动不流畅。
""";

const String _Text3 = """
> ListView.builder()
- 设置单个item的属性，懒加载的，假如有 1000 个列表，初始渲染时并不会所有都渲染，而只会特定数量的 item ，这对于性能和用户体验来说，是很好的提升。
""";

const String _Text4 = """
> 官方示例 ListView.separated()
- 带分割线的item，separated 相比较于 builder，又多了一个参数 separatorBuilder ，用于控制列表各个元素的间隔如何渲染。
""";

const String _Text5 = """
> 官方示例 ListView.custom()
- 必须的参数就是 childrenDelegate , 然后传入一个 实现了 SliverChildDelegate 的组件，如 SliverChildListDelegate 和 SliverChildBuilderDelegate。
""";

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ListView",
      next: ListViewLessDefault(0),
      nextPath: "lib/Code/ListViewCode.dart",
      markdown: _Text0 + _Text1 + _Text2 + _Text3 + _Text4 + _Text5,
      url: "https://docs.flutter.io/flutter/widgets/ListView-class.html",
    );
  }
}
