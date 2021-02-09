import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/BoxScrollView.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 使用单个子布局模型的ScrollView
- ListView：一个使用的线性布局的BoxScrollView
- GridView：一个使用二维布局模型的BoxScrollView
- CustomScrollView：可以将多个子布局模型组合到一个滚动视图中
''';
const String content1 = '''
### **基本用法**
> 由于是抽象类，所以不能直接实例化
- 如上简介，我们可以写一个类继承BoxScrollView
- Demo中，演示ListView的部分源码，用以实现继承BoxScrollView的代码编写，效果和ListView并无两样
''';

class BoxScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "BoxScrollView",
      nextPath: "lib/Code/BoxScrollView.dart",
      next: BoxScrollViewDemo(),
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/widgets/BoxScrollView-class.html',
    );
  }
}
