import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Menu/CheckedPopupMenulItem/CheckedPopupMenuItem.dart';

class MyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Menu",
      content: ["CheckedPopupMenuItem", "DropdownMenuItem", "PopupMenuButton", "PopupMenuDivider", "PopupMenuEntry", "PopupMenuItem", "PopupMenuItemState"],
      next: (index) {
        if (index == 0) {
          return MyCPMI();
        }
        return MyCPMI();
      },
    );
  }
}
