import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/FadeInImage.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentText0 = '''
### **简介**
> placeHodler image到目标图片的一种过渡widget
- 使用FadeInImage可以类似网络加载的图片以一个更加优雅的形式出现在屏幕上
- 如果这个图片已经被加载了，或者已经存在内存中，那么placeholder图片将不会显示
''';

const contentText1 = '''
### **基本用法**
> FadeInImage的写法跟Image类似，有很多别的命名构造函数。
- fadeOutDuration和fadeOutCurve控制placeholder的淡出动画
- fadeInDuration和fadeInCurve控制目标图像的淡入动画
- 对于placeholder，更倾向于使用已经缓存的，以防止他也会突然的出现在屏幕上

''';

class MyFadeInImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "FadeInImage",
      next: FadeInImageDemo(),
      nextPath: "lib/Code/FadeInImage.dart",
      markdown: contentText0 + contentText1,
      url: 'https://docs.flutter.io/flutter/widgets/FadeInImage-class.html',
    );
  }
}
