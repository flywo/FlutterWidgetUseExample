import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ImageIcon.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const Text = '''
### **简介**
> 来自ImageProvider的图标，例如AssetImage。
- 图标由其名称标示
''';
const Text1 = '''
### **基本用法**
- 创建图像图标,在size和color默认为当前给定的值IconTheme
- 当你用一个图片时，这个图片会被填充你设置的颜色，只保留图片的形状，
- 即填充图片像素所在的所有位置
''';

class MyImageIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ImageIcon",
      next: ImageIconDemo(),
      nextPath: "lib/Code/ImageIcon.dart",
      markdown: Text + Text1,
      url: 'https://docs.flutter.io/flutter/widgets/ImageIcon-class.html',
    );
  }
}
