import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ChipThemeCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 保存chip主题的颜色，形状和文本样式
- 使用它配置chipTheme widget，或者为Theme widget小部件设置 ThemeData.chipTheme。
 
''';
const String content1 = '''
### **基本用法**
- 创建ChipThemeData最简单的方法是使用copyWith您从得到一个ChipTheme.of，
或创建一个全新的一个具有 ChipThemeData..fromDefaults
''';

class MyChipThemeData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ChipThemeData",
      next: ChipThemeDemo(),
      nextPath: "lib/Code/ChipThemeDataCode.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/material/ChipThemeData-class.html',
    );
  }
}
