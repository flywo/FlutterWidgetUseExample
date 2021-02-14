import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Form/Text/RichText/RichText.dart' as my;
import 'package:flutter_widget_use/Elements/Form/Text/Text/Text.dart' as my;

class Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Text",
      content: ["RichText", "Text"],
      next: (index) {
        if (index == 0) {
          return my.RichText();
        } else if (index == 1) {
          return my.Text();
        }
        return my.RichText();
      },
    );
  }
}
