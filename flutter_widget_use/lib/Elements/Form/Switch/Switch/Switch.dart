import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/Switch.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentA = '''
### **简介**
> Switch 是一个切换按钮组件，通常用于设置的选项里。


### **基本用法**
通常用于Bool值参数的设置.

''';

const contentB = '''

ios 风格的实例

如果需要ios风格下的实例, 我们可以使用**Switch**的子类**adaptive**,参数使用与Switch相同, 实例如下:

''';

const contentC = '''
### **高级用法**

当默认的样式无法满足需求时, 我们可以通过自定义各部件样式.

- activeColor[**Color**] 当按钮状态通激活态时, 按钮的背景颜色
- activeThumbImage [**ImageProvider**] 当按钮状态处于激活态时, 按钮的背景图像
- activeTrackColor  [**Color**]  当按钮状态处于激活态时, 滑轨的颜色
- inactiveThumbColor [**Color**] 当按钮处于非激活状态时, 按钮的背景颜色, 与activeColor正好状态相反
- inactiveThumbImage  [**ImageProvider**] 当按钮状态处于非激活态时, 按钮的背景图像
- inactiveTrackColor  [**Color**] 当按钮状态处于非激活态时, 滑轨的颜色

下面是自定义, 更改了以上属性的实例

''';

class Switch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Switch",
      next: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchDemo(),
          SwitchHighDemo(),
          SwitchTypesDemo()
        ],
      ),
      nextPath: "lib/Code/Switch.dart",
      markdown: contentA + contentB + contentC,
      url: 'https://docs.flutter.io/flutter/material/Switch-class.html',
    );
  }
}
