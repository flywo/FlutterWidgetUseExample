import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Panel/ExpansionPanel/ExpansionPanel.dart';
import 'package:flutter_widget_use/Components/Panel/ExpansionPanelList/ExpansionPanelList.dart';

class MyPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Panel",
      content: ["ExpansionPanel", "ExpansionPanelList"],
      next: (index) {
        if (index == 0) {
          return MyEP();
        } else if (index == 1) {
          return MyEPL();
        }
        return MyEP();
      },
    );
  }
}
