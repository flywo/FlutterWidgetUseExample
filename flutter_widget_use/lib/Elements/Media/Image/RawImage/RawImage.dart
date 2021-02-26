import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/RawImage.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentText0 = '''
### **简介**
> 一个直接显示dart:ui.Image的widget
''';

const contentText1 = '''
### **基本用法**
> RawIamge很少使用，推荐使用Image
- RawImage 是通过 paintImage 绘制出来的Image。这个方法更加详细的描述了各个字段的含义
- 传递给RawImage中的Image是dart：ui下的Image而不是Material下的Image，见Demo注释

''';

const contentText2 = '''
### **高级用法**
> 关于更多详细介绍，请看paintImage的属性说明
''';

class MyRawImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "RawImage",
      next: RawImageDemo(),
      nextPath: "lib/Code/RawImage.dart",
      markdown: contentText0 + contentText1 + contentText2,
      url: 'https://docs.flutter.io/flutter/widgets/RawImage-class.html',
    );
  }
}
