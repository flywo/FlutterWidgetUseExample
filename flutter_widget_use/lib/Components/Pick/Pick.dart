import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Pick/CityPIcker/CityPIcker.dart';
import 'package:flutter_widget_use/Components/Pick/DayPicker/DayPicker.dart';
import 'package:flutter_widget_use/Components/Pick/MonthPicker/MonthPicker.dart';
import 'package:flutter_widget_use/Components/Pick/ShowdatePicker/ShowdatePicker.dart';
import 'package:flutter_widget_use/Components/Pick/YearPicker/YearPicker.dart';

class MyPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Picker",
      content: ["CityPicker", "DayPicker", "MonthPicker", "ShowdatePicker", "YearPicker"],
      next: (index) {
        if (index == 0) {
          return MyCityPicker();
        } else if (index == 1) {
          return MyDayPicker();
        } else if (index == 2) {
          return MyMonthPicker();
        } else if (index == 3) {
          return MyShowDatePicker();
        } else if (index == 4) {
          return MyYearPicker();
        }
        return MyCityPicker();
      },
    );
  }
}
