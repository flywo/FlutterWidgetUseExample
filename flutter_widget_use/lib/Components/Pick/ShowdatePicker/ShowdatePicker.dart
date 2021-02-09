import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ShowdatePicker.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 日期选择器的对话框
- 返回为Futer，为用户关闭对话框时用户选择的日期。如果用户取消该对话框，则返回为null
''';
const String content1 = '''
### **基本用法**
- selectableDayPredicate可以传入自定义选择的天数。
- 可选initialDatePickerMode参数可用于最初在年或月+日选择器模式中显示日期选择器。默认为月+日，且不能为空。
- 可选locale参数可用于设置日期选择器的区域设置
''';

class MyShowDatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ShowdatePicker",
      next: ShowDatePickerDemo(),
      nextPath: "lib/Code/ShowdatePicker.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/material/showDatePicker.html',
    );
  }
}
