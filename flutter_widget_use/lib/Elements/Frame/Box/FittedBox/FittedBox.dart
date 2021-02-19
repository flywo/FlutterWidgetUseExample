import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/FittedBox.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String Text0 = """
### **FittedBox**
> 根据自己的需要，对child进行缩放和定位
- 可以看看变换，在绘制时任意变换应用在子窗口的widget
""";

const String Text1 = """
### **基本用法**
> 根据外部约束，调整child
- 如果外部没有约束，按照child的大小。
- 如果外部有约束，按照外部约束调整自身大小，然后缩放调整child，根据条件进行放置
- BoxFix 属性，可修改child写入布局时期分配的空间
- alignment修改child于父空间对齐方式，默认：Alignment.center,
""";

class MyFittedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "FittedBox",
      next: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FittedBoxDefault(
                //设置child写入布局期间分配空间
                curfit: BoxFit.contain,
                dec: 'contain',
              ),
              FittedBoxDefault(
                curfit: BoxFit.fill,
                dec: 'fill',
              ),
              FittedBoxDefault(
                curfit: BoxFit.cover,
                dec: 'cover',
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FittedBoxDefault(
                curfit: BoxFit.fitHeight,
                dec: 'fitHeight',
              ),
              FittedBoxDefault(
                curfit: BoxFit.fitWidth,
                dec: 'fitWidth',
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FittedBoxDefault(
                curfit: BoxFit.none,
                dec: 'none',
              ),
              FittedBoxDefault(
                curfit: BoxFit.scaleDown,
                dec: 'scaleDown',
              ),
            ],
          ),
        ],
      ),
      nextPath: "lib/Code/FittedBox.dart",
      markdown: Text0 + Text1,
      url: 'https://docs.flutter.io/flutter/widgets/FittedBox-class.html',
    );
  }
}
