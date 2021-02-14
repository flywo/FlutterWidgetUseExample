import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Form/Slider/Slider/Slider.dart' as my;
import 'package:flutter_widget_use/Elements/Form/Slider/SliderTheme/SliderTheme.dart';
import 'package:flutter_widget_use/Elements/Form/Slider/SliderThemeData/SliderThemeData.dart';

class Slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Slider",
      content: ["Slider", "SliderTheme", "SliderThemeData"],
      next: (index) {
        if (index == 0) {
          return my.Slider();
        } else if (index == 1) {
          return SliderTheme();
        } else if (index == 2) {
          return SliderThemeData();
        }
        return my.Slider();
      },
    );
  }
}
