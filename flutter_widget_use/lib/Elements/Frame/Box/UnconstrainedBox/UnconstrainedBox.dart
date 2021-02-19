import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/UnconstrainedBox.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String Text0 = """### **简介**
> 跟ConstrainedBox相反，是不添加任何约束条件到child上，让child按照其原始的尺寸渲染
- 它的作用就是给child一个尽可能大的空间，不加约束的让其显示。
- 如果该widget不能扩展到到足够容纳整个child的空间，child将被裁剪
""";

const String Text1 = """
### **基本用法**
- alignment  属性:控制child对齐方式
- textDirection 属性：控制文本对齐
- constrainedAxis 属性：如果有，就使用

""";

class MyUnconstrainedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "UnconstrainedBox",
      next: UnconstrainedBoxDemo(),
      nextPath: "lib/Code/UnconstrainedBox.dart",
      markdown: Text0 + Text1,
      url: 'https://docs.flutter.io/flutter/widgets/UnconstrainedBox-class.html',
    );
  }
}
