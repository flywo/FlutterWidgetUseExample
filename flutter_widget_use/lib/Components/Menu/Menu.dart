import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Menu/CheckedPopupMenulItem/CheckedPopupMenuItem.dart';
import 'package:flutter_widget_use/Components/Menu/DropdownMenuItem/DropdownMenuItem.dart';
import 'package:flutter_widget_use/Components/Menu/PopupMenuButton/PopupMenuButton.dart';
import 'package:flutter_widget_use/Components/Menu/PopupMenuDivider/PopupMenuDivider.dart';
import 'package:flutter_widget_use/Components/Menu/PopupMenuEntry/PopupMenuEntry.dart';
import 'package:flutter_widget_use/Components/Menu/PopupMenuItem/PopupMenuItem.dart';
import 'package:flutter_widget_use/Components/Menu/PopupMenuItemState/PopupMenuItemState.dart';

class MyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Menu",
      content: ["CheckedPopupMenuItem", "DropdownMenuItem", "PopupMenuButton", "PopupMenuDivider", "PopupMenuEntry", "PopupMenuItem", "PopupMenuItemState"],
      next: (index) {
        if (index == 0) {
          return MyCPMI();
        } else if (index == 1) {
          return MyDMI();
        } else if (index == 2) {
          return MyPMB();
        } else if (index == 3) {
          return MyPMD();
        } else if (index == 4) {
          return MyPME();
        } else if (index == 5) {
          return MyPMI();
        } else if (index == 6) {
          return MyPMIS();
        }
        return MyCPMI();
      },
    );
  }
}
