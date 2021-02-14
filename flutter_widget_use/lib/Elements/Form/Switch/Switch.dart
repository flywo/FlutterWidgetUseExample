import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Form/Switch/AnimatedSwitcher/AnimatedSwitcher.dart' as my;
import 'package:flutter_widget_use/Elements/Form/Switch/Switch/Switch.dart' as my;
import 'package:flutter_widget_use/Elements/Form/Switch/SwitchListTile/SwitchListTile.dart';

class Switch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Switch",
      content: ["AnimatedSwitcher", "Switch", "SwitchListTile"],
      next: (index) {
        if (index == 0) {
          return my.AnimatedSwitcher();
        } else if (index == 1) {
          return my.Switch();
        } else if (index == 2) {
          return SwitchListTile();
        }
        return my.AnimatedSwitcher();
      },
    );
  }
}
