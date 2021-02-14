import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Form/Button/Button.dart';
import 'package:flutter_widget_use/Elements/Form/CheckBox/CheckBox.dart';
import 'package:flutter_widget_use/Elements/Form/Radio/Radio.dart';
import 'package:flutter_widget_use/Elements/Form/Slider/Slider.dart';
import 'package:flutter_widget_use/Elements/Form/Switch/Switch.dart';
import 'package:flutter_widget_use/Elements/Form/TextField/TextField.dart';

class Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Form",
      content: ["Button", "CheckBox", "Input", "Radio", "Slider", "Switch", "Text"],
      next: (index) {
        if (index == 0) {
          return Button();
        } else if (index == 1) {
          return CheckBox();
        } else if (index == 2) {
          return TextField();
        } else if (index == 3) {
          return Radio();
        } else if (index == 4) {
          return Slider();
        } else if (index == 5) {
          return Switch();
        }
        return Button();
      },
    );
  }
}
