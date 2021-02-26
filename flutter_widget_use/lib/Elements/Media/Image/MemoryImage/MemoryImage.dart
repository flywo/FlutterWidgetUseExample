import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/MemoryImage.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _contentText0 = '''
### **简介**
> 将给定的Uint8List 缓冲区解码为图像的widget
- 甚至我们也可以利用的来实现将Base64编码的图片展示出来（利用 Uint8List.fromtList 构造函数） 
''';

const String _contentText1 = '''
### **基本用法**
> demo中我们作为读取内存图片来展示
- 提供给MemoryImage的字节不应该再有更改
- 如果需要经常改变的图片，请使用ImageProvider下的子类
''';


class MyMemoryImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "MemoryImage",
      next: MemoryImageDemo(),
      nextPath: "lib/Code/MemoryImage.dart",
      markdown: _contentText0 + _contentText1,
      url: 'https://docs.flutter.io/flutter/painting/MemoryImage-class.html',
    );
  }
}
