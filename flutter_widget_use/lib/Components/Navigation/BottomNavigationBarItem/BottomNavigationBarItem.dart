import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/BottomNavigationBarItem.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """### **简介**
> BottomNavigationBarItem “底部导航应用栏”
- material 的 BottomNavigationBar 或带有图标和标题的 iOS主题 CupertinoTabBar 中的交互式按钮;
""";

const String _Text1 = """### **基本用法**
> 这个类很少单独使用。通常嵌入在上面的一个底部 bottom navigation widgets 中;
""";

class MyBNBI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "BottomNavigationBarItem",
      next: BottomNavigationBarItemLessDefault(),
      nextPath: "lib/Code/BottomNavigationBarItem.dart",
      markdown: _Text0 + _Text1,
      url: 'https://docs.flutter.io/flutter/widgets/BottomNavigationBarItem-class.html',
    );
  }
}
