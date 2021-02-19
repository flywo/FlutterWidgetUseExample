import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/RotatedBox.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text = '''
### **简介**
> 可以将子widget旋转整数的四分之一
 - 和Transform不同，该对象在布局之前应用其旋转，整个旋转的范围仅消耗旋转的子widget所需要的空间
''';

const String _Text1 = '''
### **基本用法**
> 旋转widget
- 通过quarterTurns，设置child的顺时针四分之一的转数
- ex:quarterTurns=3/8
''';

class MyRotatedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "RotatedBox",
      next: RotatedDemo(),
      nextPath: "lib/Code/RotatedBox.dart",
      markdown: _Text + _Text1,
      url: 'https://docs.flutter.io/flutter/widgets/RotatedBox-class.html',
    );
  }
}
