import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/Stack.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _stackText0 = """### **简介**
> 用于将多个childs相对于其框的边缘定位，多用于以简单方式重叠children
- 当第一个child置于底部时，堆栈按顺序绘制其子项。如果更改子项绘制顺序，可以使用新顺序重新建立堆栈
- 注意：stack的每一个子节点都已定位或未定位，定位子项必须至少一个非null属性的定位。

""";
const String _stackText1 = """### **基本用法**
> 1.alignment → AlignmentGeometry
- 对齐方式，默认是右上角,详情请点击Layout-row页面，类似
- 多个positioned叠加图层，Alignment.center事例
""";
const String _stackText2 = """### 
> fit → StackFit
- loose:放开了子节点宽高的约束，可以让子节点从0到最大尺寸
- expand: 子节点最大可能的占用空间，允许最大大小
- passthrough：不改变子节点约束

>textDirection → TextDirection
- 文本方向

> overflow → Overflow
- 超过的部分是否裁剪掉
- overflow: Overflow.clip/visible
""";

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Stack",
      next: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                width: 300.0,
                height: 100.0,
                color: Color(0xffe91e63),
                child: StackDefault(),
              ),
              Container(
                width: 300.0,
                height: 100.0,
                color: Color(0xffe91e63),
                //堆栈顺序替换掉
                child: StackDefault2(),
              ),
              StackPositioned(),
              StackLayout()
            ],
          ),
          SizedBox(height: 10.0),
        ],
      ),
      nextPath: "lib/Code/Stack.dart",
      markdown: _stackText0 + _stackText1 + _stackText2,
      url: 'https://docs.flutter.io/flutter/widgets/Stack-class.html',
    );
  }
}
