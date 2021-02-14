import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/SliderTheme.dart' as my;
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const contentA = '''
### **简介**
> 用来更改Slider样式的上层部件

将滑块主题应用于后代Slider小部件。

### **基本用法**

> 通过更改sliderTheme.data, 修改Slider总体样式

基本属性参考以下代码: 

```
 SliderTheme(
  data: SliderThemeData({
    @required Color activeTrackColor,
    @required Color inactiveTrackColor,
    @required Color disabledActiveTrackColor,
    @required Color disabledInactiveTrackColor,
    @required Color activeTickMarkColor,
    @required Color inactiveTickMarkColor,
    @required Color disabledActiveTickMarkColor,
    @required Color disabledInactiveTickMarkColor,
    @required Color thumbColor,
    @required Color disabledThumbColor,
    @required Color overlayColor,
    @required Color valueIndicatorColor,
    @required SliderComponentShape thumbShape,
    @required SliderComponentShape valueIndicatorShape,
    @required ShowValueIndicator showValueIndicator,
    @required TextStyle valueIndicatorTextStyle
  }),
  child: anyWidgetContain(Slider) // 用来包含slider的widget容器窗口
),

```

### **基本实例**


''';

class SliderTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "SliderTheme",
      next: my.SliderThemeDemo(),
      nextPath: "lib/Code/SliderTheme.dart",
      markdown: contentA,
      url: 'https://docs.flutter.io/flutter/material/SliderTheme-class.html',
    );
  }
}
