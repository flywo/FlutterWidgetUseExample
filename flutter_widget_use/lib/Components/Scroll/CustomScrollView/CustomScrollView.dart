import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/CustomScrollView.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 使用Slivers创建自定义滚动效果的ScrollView
- CustomScrollView 主要是配合Slivers大家族使用，创建自定义的滚动效果
- 如果需要创建可展开的AppBar，后跟list和grid，可使用这三种Slivers：SliverAppBar、SliverList和SliverGrid
- 这些Slivers必须生成RenderSliver对象
''';

const String content1 = '''
### **基本用法**
> 配合 Slivers使用
- slivers 属性中我们添加SliverAppBar
- SliverAppBar下方放置SliverFixedExtentList，注意此处并没有滚动冲突
''';


class CustomScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "CustomScrollView",
      next: CustomScrollViewDemo(),
      nextPath: "lib/Code/CustomScrollView.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/widgets/CustomScrollView-class.html',
    );
  }
}
