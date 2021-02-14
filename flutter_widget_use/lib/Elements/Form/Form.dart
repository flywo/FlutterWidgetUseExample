import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Form/Button/Button.dart';

class Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Form",
      content: ["Button", "CheckBox", "Input", "Radio", "Slider", "Switch", "Text"],
      next: (index) {
        if (index == 0) {
          return Button();
        }
        return Button();
      },
    );
  }
}