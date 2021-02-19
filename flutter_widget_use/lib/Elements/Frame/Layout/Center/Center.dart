import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/Center.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String Text0 = """### **简介**
> 一个将child 放置于中心
- 如果它的尺寸受到外界约束，并且widthFactor和heightFactor 为null，则widget将会尽可能的大。
- 如果它的尺寸不受外界约束，并且相应的大小为null，则widget将会匹配child widget的大小
- 如果相应尺寸不为null，则widget的相应尺寸将是child 尺寸和尺寸因子的乘积（例如：widthFactor是2.0,那么widget的宽度始终是其child widget宽度的2倍）
""";

const String Text1 = """
### **基本用法**
> widthFacto/heightFactor 非null，将其宽/高度设置为子宽/高度乘以此系数
- 如果widthFactor是2.0，那么widget的宽度将始终是其子宽度的两倍。
- 如果heightFactor是2.0，那么widget的高度将始终是其子高度的两倍。

""";

class MyCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Center",
      next: CenterDemo(),
      nextPath: "lib/Code/Center.dart",
      markdown: Text0 + Text1,
      url: 'https://docs.flutter.io/flutter/widgets/Column-class.html',
    );
  }
}
