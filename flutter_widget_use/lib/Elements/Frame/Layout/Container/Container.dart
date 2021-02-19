import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/Container.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String Text0 = """### **简介**
> 一个常用的widget，它结合了常见的绘画，定位和大小调整
- 该容器首先让child填充绘制，然后再将其他的约束应用于填充范围。
- 在绘画过程中，容器先应用给定的转换，再绘制装饰以填充的范围，然后绘制child，最后绘制前景，同时填充需要填充的范围
- 没有child的容器将尽可能的大，除非传入的约束是无限制的。child的大小会被width，height等约束覆盖。
""";

const String Text1 = """
### **基本用法**
> Container 可以结合多种其他widget，每个widget都有自己的布局行为，因此Container的布局行为有点复杂。
- 简单说，就是如果窗口小部件没有子窗口，没有height，没有width，没有约束，并且父窗口提供无限制约束，则Container会尝试尽可能小。
""";

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Container",
      next: Column(
        children: [
          ContainerDefaultA(),
          ContainerDefault(),
          ContainerDefaultB(),
        ],
      ),
      nextPath: "lib/Code/Container.dart",
      markdown: Text0 + Text1,
      url: 'https://docs.flutter.io/flutter/widgets/Column-class.html',
    );
  }
}
