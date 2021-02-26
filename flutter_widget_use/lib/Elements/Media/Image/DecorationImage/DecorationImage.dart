import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/DecorationImage.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentText0 = '''
### **简介**

> 修饰Box的图片
''';

const contentText1 = '''
### **基本用法**

> demo演示作为背景图片的样例

- 一般配合BoxDecoration的img属性使用,设置背景图片
- 也可以配合paintImage使用
''';

class MyDecorationImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "DecorationImage",
      next: DecorationImageDemo(),
      nextPath: "lib/Code/DecorationImage.dart",
      markdown: contentText0 + contentText1,
      url: 'https://docs.flutter.io/flutter/painting/DecorationImage-class.html',
    );
  }
}
