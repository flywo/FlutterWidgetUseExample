import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/AnimatedListCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """### **简介**
> AnimatedList “动画滚动容器”
- 一个滚动容器，可在插入或移除项目时为其设置动画
""";

const String _Text1 = """### **基本用法**
> AnimatedList
- AnimatedListState 可用于动态插入或删除项目。
- 下面示例展示效果:点击+号增加 card, 点击 card 保持激活状态，再点击-号，减少 card。
""";

class MyAnimatedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "AnimatedList",
      next: AnimatedListSample(),
      nextPath: "lib/Code/AnimatedListCode.dart",
      markdown: _Text0 + _Text1,
      url: "https://docs.flutter.io/flutter/widgets/AnimatedList-class.html",
    );
  }
}
