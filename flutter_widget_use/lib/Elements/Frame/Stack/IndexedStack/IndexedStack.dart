import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/IndexedStack.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _stackText0 = """### **简介**
> 显示一个子项列表的单个子项。
- 只显示指定位置的widget，其他的位置的widget不会显示，所以indexedStack的尺寸永远和最大的子节点一样。
- 显示的子项widget是给到了具体的索引选择出来的widget
- 如果value 为null，将不显示任何内容
""";
const String _stackText1 = """### **基本用法**
> index → int
- 控制显示child的索引
- ex:可以通过多个图片转化表示状态（正确，错误，警告等）。
 """;

class MyIndexedStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "IndexedStack",
      next: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Color(0xffe91e63),
                child: StackDefault(0),
              ),
              Container(
                color: Color(0xffe91e63),
                child: StackDefault(1),
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StackIndex(0),
              StackIndex(1),
              StackIndex(2),
              StackIndex(3),
              StackIndex(4),
            ],
          ),
        ],
      ),
      nextPath: "lib/Code/IndexedStack.dart",
      markdown: _stackText0 + _stackText1,
      url: 'https://docs.flutter.io/flutter/widgets/IndexedStack-class.html',
    );
  }
}

