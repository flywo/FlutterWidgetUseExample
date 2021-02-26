import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/FileImage.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentText0 = '''
### **简介**
> 用于展示本地的文件
- 将给定的File对象解码为图片
- 可以指定缩放scale
''';

const contentText1 = '''
### **基本用法**
> 简写形式和Image也都非常相似
- Image.file 是ImageFile 的一种简写形式
''';

class MyFileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "FileImage",
      next: FileImageDemo(),
      nextPath: "lib/Code/FileImage.dart",
      markdown: contentText0 + contentText1,
      url: 'https://docs.flutter.io/flutter/painting/FileImage-class.html',
    );
  }
}
