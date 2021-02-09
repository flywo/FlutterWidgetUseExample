import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ListBodyCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """### **简介**
> ListBody “列表组件”
- 作用是按给定的轴方向，按照顺序排列子节点。
- 是一个不常直接使用的控件，一般都会配合ListView或者Column等控件使用。
""";

const String _Text1 = """### **基本用法**
> 布局行为
- 在主轴上，子节点按照顺序进行布局，在交叉轴上，子节点尺寸会被拉伸，以适应交叉轴的区域。
- 在主轴上，给予子节点的空间必须是不受限制的（unlimited），使得子节点可以全部被容纳，ListBody不会去裁剪或者缩放其子节点。
- ListBody的布局代码非常简单，根据主轴的方向，对子节点依次排布。
""";

class MyListBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ListBody",
      next: ListBodyLessDefault(),
      nextPath: "lib/Code/ListBodyCode.dart",
      markdown: _Text0 + _Text1,
      url: "https://docs.flutter.io/flutter/widgets/ListBody-class.html",
    );
  }
}
