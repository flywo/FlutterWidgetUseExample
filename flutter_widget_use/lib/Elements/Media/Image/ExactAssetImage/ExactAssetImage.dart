import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ExactAssetImage.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentText0 = '''
### **简介**
> 类似带有scale属性的AssetImage

从```Image.asset```源码中可以看到

''';

const contentText1 = '''
### **基本使用**
- 使用方法与AssetImage类似
- 可以理解为带有scale属性的AssetImage
''';

class MyExactAssetImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ExactAssetImage",
      next: ExactAssetImageDemo(),
      nextPath: "lib/Code/ExactAssetImage.dart",
      markdown: contentText0 + contentText1,
      url: 'https://docs.flutter.io/flutter/painting/ExactAssetImage-class.html',
    );
  }
}
