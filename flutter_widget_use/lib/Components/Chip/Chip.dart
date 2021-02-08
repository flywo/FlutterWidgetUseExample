import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Chip/Chip/Chip.dart' as MyCustomChip;
import 'package:flutter_widget_use/Components/Chip/ChipTheme/ChipTheme.dart';
import 'package:flutter_widget_use/Components/Chip/ChipThemeData/ChipThemeData.dart';
import 'package:flutter_widget_use/Components/Chip/ChoiceChip/ChoiceChip.dart';
import 'package:flutter_widget_use/Components/Chip/FilterChip/FilterChip.dart';
import 'package:flutter_widget_use/Components/Chip/InputChip/InputChip.dart';
import 'package:flutter_widget_use/Components/Chip/RawChip/RawChip.dart';

class MyChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Chip",
      content: ["Chip", "ChipTheme", "ChipThemeData", "ChoiceChip", "FilterChip", "InputChip", "RawChip"],
      next: (index) {
        if (index == 0) {
          return MyCustomChip.MyChip();
        } else if (index == 1) {
          return MyChipTheme();
        } else if (index == 2) {
          return MyChipThemeData();
        } else if (index == 3) {
          return MyChoiceChip();
        } else if (index == 4) {
          return MyFilterChip();
        } else if (index == 5) {
          return MyInputChip();
        } else if (index == 6) {
          return MyRawChip();
        }
        return MyCustomChip.MyChip();
      },
    );
  }
}
