import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/SliverPadding.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentDesc0 = '''
### **简介**
> SliverPadding 属于 Flutter Slivers大家族中的一个
- SliverPadding 是 Slivers 大家族中的一类padding
- 可以配合各种 Sliver成员使用
''';

const contentDesc1 = '''
### **基本用法**
> 这里我们结合Slivers家族中的 SliverList 来演示使用
- Flutter 中的Slivers大家族基本都是配合CustomScrollView来实现一些自定义滚动效果
- padding作用于每一个item
- 对于有些特殊的sliver可能会有副作用，比如对于 ```pinned:true``` 的 SliverPersisitentHeader 设置可能会导致 APPBar与之前的sliver重叠
''';

class MySliverPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "SliverPadding",
      next: SliverPaddingDemo(),
      nextPath: "lib/Code/SliverPadding.dart",
      markdown: contentDesc0 + contentDesc1,
      url: "https://docs.flutter.io/flutter/widgets/SliverPadding-class.html",
    );
  }
}
