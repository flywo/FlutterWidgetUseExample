import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/SwitchListTile.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentA = '''
### **简介**
> Switch 的一个衍生组件

基本用法与Switch相同.具体参考@Switch, 支持各种自定义样式.



### **基本实例**

''';

class SwitchListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "SwitchListTile",
      nextPath: "lib/Code/SwitchListTile.dart",
      next: Center(
        child: SwitchListTileDemo(),
      ),
      markdown: contentA,
      url: "https://docs.flutter.io/flutter/material/Switch-class.html",
    );
  }
}
