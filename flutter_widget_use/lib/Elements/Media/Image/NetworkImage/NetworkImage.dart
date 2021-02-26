import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/NetworkImage.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentText0 = '''
### **简介**
> 展示网络图片的widget
- 我们可以使用NetworkImage来获取网络图片并展示
''';

const contentText1 = '''
### **基本用法**
> Image.network 是 NetworkImage 提供给Image widget 的一种简写形式
- 支持scale属性进行图片的缩放
''';

class MyNetworkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "NetworkImage",
      next: NetworkImageDemo(),
      nextPath: "lib/Code/NetworkImage.dart",
      markdown: contentText0 + contentText1,
      url: 'https://docs.flutter.io/flutter/painting/NetworkImage-class.html',
    );
  }
}
