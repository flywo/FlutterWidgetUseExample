import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/DecoratedBox.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text = """### **简介**
> 在child绘制前或绘制后，添加额外的限制条件到child上的widget
- 根据边界的宽高，对其child进行插入绘制
""";

const String _Text1 = """### **基本用法**
> decoration → Decoration
- 常用于BoxDecoration
- BoxDecoration提供多种方式来绘制以一个框
- 盒子形状可以是圆形也可以是矩形，用borderRadius属性来绘制角度

> position → DecorationPosition
- position: DecorationPosition.foreground,
""";

class MyDecoratedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "DecoratedBox",
      next: Column(
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: DecoratedBoxCreate(),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            child: DecoratedBoxCreateTwo(),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            child: DecoratedBoxCreateShape(),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            child: DecoratedBoxCreateShapes(),
          )
        ],
      ),
      nextPath: "lib/Code/DecoratedBox.dart",
      markdown: _Text + _Text1,
      url: 'https://docs.flutter.io/flutter/widgets/DecoratedBox-class.html',
    );
  }
}
