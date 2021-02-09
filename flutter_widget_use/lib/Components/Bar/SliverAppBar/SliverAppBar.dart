import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Code/SliverAppBarCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """### **简介**
> SliverAppBar “应用栏”
- 它类似于Android中的toolbar;
""";

const String _Text1 = """### **基本用法**
> 虽然基本相同，构造方法也是非常的简单，但是却不能直接使用它，由官方文档可以看到通常结合 ScrollView 来使用它;
- AppBar 和 SliverAppBar 都是继承StatefulWidget 类，都代表 Toobar;
- 二者的区别在于 AppBar 位置的固定的应用最上面的;而 SliverAppBar 是可以跟随内容滚动的;
- 下面的示例,放在 NestedScrollView 实现上提到顶的悬停;
""";

class MySliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "SliverAppBar",
      next: Center(child: SliverAppBarLessDefault()),
      nextPath: "lib/Code/SliverAppBarCode.dart",
      markdown: _Text0 + _Text1,
      url: 'https://docs.flutter.io/flutter/widgets/SliverAppBar-class.html',
    );
  }
}
