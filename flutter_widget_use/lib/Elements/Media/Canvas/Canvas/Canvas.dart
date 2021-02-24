import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/Canvas.dart' as demoBoxs;
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const Text = '''
### **简介**
> 用于操作图形的界面;
- canvas 对象用于创建图片对象，这些对象本身可以与 SceneBuilder 一起用于构建场景;
''';
const Text1 = '''
### **基本用法**
- 以下是绘制点，线，面的基本用法
''';

const Text2 = '''
> 绘制点
- 绘制点有三种模式, points（点），lines（线，隔点连接），polygon（线，相邻连接）
''';

const Text3 = '''
> 绘制直线
''';

const Text4 = '''
> 绘制圆
''';

const Text5 = '''
> 绘制椭圆
- 使用左上和右下角坐标来确定矩形的大小和位置,椭圆是在这个矩形之中内切的形状
''';

const Text6 = '''
> 绘制圆弧
- Rect 来确认圆弧的位置，还需要开始的弧度、结束的弧度、是否使用中心点绘制、以及 paint 弧度
''';

const Text7 = '''
> 绘制矩形，圆角矩形
- 用 Rect构建矩形
- 根据上面的矩形,构建一个圆角矩形
''';

const Text8 = '''
> 绘制两个相套矩形
''';

const Text9 = '''
> 绘制图片到canvas
''';

const Text10 = '''
> 绘制一个星形
- 它可以使用“平移”、“缩放”、“旋转”、“倾斜”和“变换”方法进行修改;
- 可以使用 clipRect、clipCorrect 和 clipPath 方法进行修改;
- 可以使用由 save、savelayer和 restore 方法管理的堆栈来保存和还原当前的转换和剪辑。
''';

class MyCanvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Canvas",
      next: ListView(
        children: [
          demoBoxs.CustomViewPage(type: 'drawPoints'),
          demoBoxs.CustomViewPage(type: 'drawLine'),
          demoBoxs.CustomViewPage(type: 'rawCircle'),
          demoBoxs.CustomViewPage(type: 'drawOval'),
          demoBoxs.CustomViewPage(type: 'drawArc'),
          demoBoxs.CustomViewPage(type: 'drawRRect'),
          demoBoxs.CustomViewPage(type: 'drawDRRect'),
          demoBoxs.CustomViewPage(type: 'drawImage'),
          demoBoxs.CustomViewPage(type: 'drawStar'),
        ],
      ),
      nextPath: "lib/Code/Canvas.dart",
      markdown: Text + Text1 + Text2 + Text3 + Text4 + Text5 + Text6 + Text7 + Text8 + Text9 + Text10,
      url: 'https://docs.flutter.io/flutter/dart-ui/Canvas-class.html',
    );
  }
}
