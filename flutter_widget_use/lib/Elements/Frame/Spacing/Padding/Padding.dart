import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/Padding.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentDesc0 = '''
### **简介**
> widget 内边距
- 类似于前端中的 div+css:padding 效果
- Container + padding = Padding
''';

const contentDesc1 = '''
### **基本用法**
> Padding widget 的padding必须设置，不能为null
- 通过给定的padding值来隔开子组件
- 通过EdgeInsets 类来计算 padding的大小
''';


class MyPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Padding",
      next: PaddingDemo(),
      nextPath: "lib/Code/Padding.dart",
      markdown: contentDesc0 + contentDesc1,
      url: 'https://docs.flutter.io/flutter/widgets/Padding-class.html',
    );
  }
}
