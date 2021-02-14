import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/SliderThemeData.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentA = '''
### **简介**
> SliderTheme的data修饰属性 **SliderThemeData**



### **基本用法**

> 配合SliderTheme, 修改slider组件各个部件的样式, 参照@Slider的各组件命名, 修改各部件样式



''';

class SliderThemeData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "SliderThemeData",
      next: Center(
        child: SliderThemeDemo(),
      ),
      nextPath: "lib/Code/SliderThemeData.dart",
      markdown: contentA,
      url: 'https://docs.flutter.io/flutter/material/SliderThemeData-class.html',
    );
  }
}
