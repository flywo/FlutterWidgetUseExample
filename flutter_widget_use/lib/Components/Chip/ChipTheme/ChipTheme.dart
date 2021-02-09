import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ChipThemeCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 基于 RawChip-based widgets，如chip，inputChip,ChoiceChip,FilterChip等
- chipTheme描述了应用它的chip的颜色，形状和文本样式
 
''';
const String content1 = '''
### **基本用法**
- 可通过chipTheme.of获取当前主题的ChipThemeData对象
- 当widget使用ChipTheme.of时，如果主题稍后更改，则会自动重建。
''';

class MyChipTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ChipTheme",
      next: ChipThemeDemo(),
      nextPath: "lib/Code/ChipThemeCode.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/material/ChipTheme-class.html',
    );
  }
}
