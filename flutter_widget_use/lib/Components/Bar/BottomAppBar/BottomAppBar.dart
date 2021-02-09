import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

import '../../../Code/BottomAppBarCode.dart';

const String _Text0 = """### **简介**
> BottomAppBar “底部应用栏”
- 一个通常与 Scaffold.bottomNavigationBar 一起使用的容器，可以在顶部有一个凹口，为重叠的FloatingActionButton腾出空间;
""";

const String _Text1 = """### **基本用法**
> 通常与 Scaffold 和 FloatingActionButton 一起使用;
""";

class MyBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "BottomAppBar",
      next: AppBarLessDefaultSimple(),
      nextPath: "lib/Code/BottomAppBarCode.dart",
      markdown: _Text0 + _Text1,
      url: 'https://docs.flutter.io/flutter/material/BottomAppBar-class.html',
    );
  }
}