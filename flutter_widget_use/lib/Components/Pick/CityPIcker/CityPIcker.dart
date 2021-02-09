import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/CityPIcker.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 显示中国的省市县地区，需先导入第三方：city_pickers: ^0.0.1
通过函数 **showCityPicker** 调用, 在容器窗口上弹出遮罩层
''';
const String content1 = '''
### **基本用法**
- locationCode 初始化地区选择
- height 弹出层高度
- context 上下文对象
''';

class MyCityPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "CityPicker",
      next: CityPickerDemo(),
      nextPath: "lib/Code/CityPIcker.dart",
      markdown: content0 + content1,
      url: "https://pub.flutter-io.cn/packages/city_pickers",
    );
  }
}
