import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ScrollPhysics.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 确定滚动组件的物理属性
- 例如，确定当用户达到最大滚动范围或者停止滚动时，Scrollable的一些滚动行为
- 当启动物理 [Simulation](https://docs.flutter.io/flutter/physics/Simulation-class.html) 时，当前滚动位置和速度将作为初始条件。
- 使用simulation中的模拟移动来确定widget的滚动位置
''';
const String content1 = '''
### **基本用法**
> 该widget不能赋值给参数类型为Widget的组件
- 下方Demo，我们设置PageView的physics属性，滑动感受下下方小字自定义的滚动
''';


class ScrollPhysics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ScrollPhysics",
      next: ScrollPhysicsDemo(),
      nextPath: "lib/Code/ScrollPhysics.dart",
      markdown: content0 + content1,
      url: "https://docs.flutter.io/flutter/widgets/ScrollPhysics-class.html",
    );
  }
}
