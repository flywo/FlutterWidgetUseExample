import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Form/Radio/Radio/Radio.dart' as my;
import 'package:flutter_widget_use/Elements/Form/Radio/RadioListTile/RadioListTile.dart';

class Radio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Radio",
      content: ["Radio", "RadioListTile"],
      next: (index) {
        if (index == 0) {
          return my.Radio();
        } else if (index == 1) {
          return RadioListTile();
        }
        return my.Radio();
      },
    );
  }
}
