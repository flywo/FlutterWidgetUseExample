import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/AnimatedPadding.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentDesc0 = '''
### **简介**
> 属于Flutter动画成员的一部分
''';

const contentDesc1 = '''
### **基本用法**
> 动画版本的Padding
- 在给定的时间内，自动完成转换缩进到给定的padding值
- 通过设置curve 来指定动画的运行速率动画
''';

class MyAnimatedPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "AnimatedPadding",
      next: AnimatedPaddingDemo(),
      nextPath: "lib/Code/AnimatedPadding.dart",
      markdown: contentDesc0 + contentDesc1,
      url: 'https://docs.flutter.io/flutter/widgets/AnimatedPadding-class.html',
    );
  }
}
