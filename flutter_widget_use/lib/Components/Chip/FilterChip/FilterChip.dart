import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/FilterChipCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 通过使用标签或者描述性词语来过滤内容
- FilterChip 是 checkbox 或 switch widget 的替换品。

''';
const String content1 = '''
### **基本用法**
''';

class MyFilterChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "FilterChip",
      next: FilterChipDemo(),
      nextPath: "lib/Code/FilterChipCode.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/material/FilterChip-class.html',
    );
  }
}
