import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Frame/Stack/Stack/Stack.dart' as my;

import 'IndexedStack/IndexedStack.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Stack",
      content: ["IndexedStack", "Stack"],
      next: (index) {
        if (index == 0) {
          return MyIndexedStack();
        } else if (index == 1) {
          return my.MyStack();
        }
        return MyIndexedStack();
      },
    );
  }
}
