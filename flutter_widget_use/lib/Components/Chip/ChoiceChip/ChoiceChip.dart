import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ChoiceChipCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 允许从一组选项中进行单一的选择
- ChoiceChip包含相关的描述性文本或者类别

''';
const String content1 = '''
### **基本用法**
- onSelected : 选择或者取消选择状态间切换调用
''';

class MyChoiceChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ChoiceChip",
      next: ChoiceChipDemo(),
      nextPath: "lib/Code/ChoiceChipCode.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/material/ChoiceChip-class.html',
    );
  }
}
