import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/Align.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _flatText0 = """
### **简介**
> Align控件即对齐控件，能将子控件所指定方式对齐，并根据子控件的大小调整自己的大小。
- 根据自己需求，进行控件对齐
### **基本用法**
> alignment → AlignmentGeometry
- 要对齐右下方的框，那么对这个框对要求会比对子控件更加严肃的约束，使用：Alignment.bottomRight
- 同理：Alignment.center，Alignment.bottomLeft，Alignment.topLeft等
""";

const String _flatText1 = """
>  widthFactor / heightFactor → double
- 如果widthFactor / heightFactor 为空，并且外部无任何约束，child控件大小默认，那么这个控件将根据自身尺寸最大化
- 如果widthFactor / heightFactor 不为空，并且外部无约束，align将匹配对应的child尺寸
- ex：widthFactor/ heightFactor 为2.0；那么widget的宽高为child宽高的两倍
- 如果widthFactor / heightFactor 为空，并且外部无约束，child控件将会设置自身大小
""";

class MyAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Align",
      next: Column(
        children: <Widget>[
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AlignAlignment(Alignment.center, 'center'),
              AlignAlignment(Alignment.centerLeft, 'centerLeft'),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AlignAlignment(Alignment.centerRight, 'centerRight'),
              AlignAlignment(Alignment.bottomCenter, 'btCenter'),
              AlignAlignment(Alignment.topCenter, 'topCenter'),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AlignAlignment(Alignment.topLeft, 'topLeft'),
              AlignAlignment(Alignment.topRight, 'topRight'),
              AlignAlignment(Alignment.bottomLeft, 'bottomLeft'),
            ],
          ),
          SizedBox(height: 10.0),
        ],
      ),
      nextPath: "lib/Code/Align.dart",
      markdown: _flatText0 + _flatText1,
      url: 'https://docs.flutter.io/flutter/widgets/Align-class.html',
    );
  }
}
