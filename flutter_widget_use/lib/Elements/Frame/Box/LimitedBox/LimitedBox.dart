import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/LimitedBox.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String Text0 = """
### **LimitedBox**
> 对最大宽高进行限制的控件（前提是LimitedBox不受约束）
- 即：将child限制在指定的最大宽高中
- 这就使得child自身没有约束大小的时候具有了外部约束，依然控制了其大小
- 例如：通过给LimitedBox最大高度(maxHeight)，widget通常会调整其自身的大小去适应父窗体，但是，当放置在竖直（cloumn）列表中时，它将采用给定的高度
""";

const String Text1 = """
### **基本用法**
> widget 限制child最大宽高，如下：
- 如果LimitedBox外部宽度没有被约束，child的宽受到LimitedBox最大宽度（maxWidth）属性限制
- 同理，LimitedBox外部高度没有约束，child的高受到LimitedBox最大高度（maxHeight）属性限制


""";

class MyLimitedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "LimitedBox",
      next: Column(
        children: [
          LimitedBoxDemo(),
          SizedBox(height: 30),
          LimitedBoxColumnDemo(),
        ],
      ),
      nextPath: "lib/Code/LimitedBox.dart",
      markdown: Text0 + Text1,
      url: 'https://docs.flutter.io/flutter/widgets/LimitedBox-class.html',
    );
  }
}
