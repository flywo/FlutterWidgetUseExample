import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ChipCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> chip是表示属性，文本，实体或动作的元素
- 需要在Material wedige 中。 
''';
const String content1 = '''
### **基本用法**
- 需要Material widget.
- 这个label和clipBehavior参数不能为空
''';

class MyChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Chip",
      next: ChipDemo(),
      nextPath: "lib/Code/ChipCode.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/material/Chip-class.html',
    );
  }
}
