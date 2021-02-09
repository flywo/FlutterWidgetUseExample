import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/InputChipCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 输入型chip
- 以紧凑的形式表现复杂的信息，例如：实体（人，地点，或者事物）或者会话文本
 
''';
const String content1 = '''
### **基本用法**
- inputChip可以通过设置进行选择onSelected，通过设置onDeleted可以删除，并且可以通过OnPressed表现按压效果
- inputChip 有一个前导图标和尾随图标，填充颜色可以订制
- inputChip 可以和其他UI元素搭配使用，比如：wrap,ListView(scrollDirection为Axis.horizo​​ntal)
''';

class MyInputChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "InputChip",
      next: FilterChipDemo(),
      nextPath: "lib/Code/InputChipCode.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/material/InputChip-class.html',
    );
  }
}
