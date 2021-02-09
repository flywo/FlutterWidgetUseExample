import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/YearPicker.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 运行选择一年的可滚动年份列表
- 年份选择器widget很少使用，相反，请考虑使用showDatePicker,它会创建一个日期选择器对话框
''';
const String content1 = '''
### **基本用法**
- 使用firstData,设置用户选择的最早日期
- 使用lastData,设置用户可选择的最晚日期
- 使用selectedDate，设置当前选择的日期
''';


class MyYearPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "YearPicker",
      next: YearPickerDemo(),
      nextPath: "lib/Code/YearPicker.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/material/YearPicker-class.html',
    );
  }
}
