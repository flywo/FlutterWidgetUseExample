import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/MonthPicker.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 运行选择一个月的可滚动月份列表
- 年份选择器widget很少使用，相反，请考虑使用showDatePicker,它会创建一个日期选择器对话框
''';
const String content1 = '''
### **基本用法**
- firstData,设置用户选择的最早日期
- lastData,设置用户可选择的最晚日期
- selectedDate，设置当前选择的日期
- onchanged，当用户选择一个月的时候调用
''';

class MyMonthPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "MonthPicker",
      next: MothPickerDemo(),
      nextPath: "lib/Code/MonthPicker.dart",
      markdown: content0 + content1,
      url: "https://docs.flutter.io/flutter/material/MonthPicker-class.html",
    );
  }
}
