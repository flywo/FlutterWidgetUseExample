import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/DayPicker.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> 显示给定月份的日期，并可以选择一天
- 该选择器widget很少使用，相反，请考虑使用showDatePicker,它会创建一个日期选择器对话框
''';
const String content1 = '''
### **基本用法**
- currentDate,设置显示器当前显示时间
- displayedMonth ,设置选择器显示天数的月份
- firstDate,设置选择的最早日期
- lastDate,设置可选择的最晚日期
- selectedDate，设置当前选择的日期
''';

class MyDayPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "DayPicker",
      next: DayPickerDemo(),
      nextPath: "lib/Code/DayPicker.dart",
      markdown: content0 + content1,
      url: "https://docs.flutter.io/flutter/material/DayPicker-class.html",
    );
  }
}
