import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Components/Bar/AppBar/AppBar.dart';
import 'package:flutter_widget_use/Components/Bar/BottomAppBar/BottomAppBar.dart';
import 'package:flutter_widget_use/Components/Bar/ButtonBar/ButtonBar.dart';
import 'package:flutter_widget_use/Components/Bar/FlexibleSpaceBar/FlexibleSpaceBar.dart';
import 'package:flutter_widget_use/Components/Bar/SliverAppBar/SliverAppBar.dart';
import '../../Common/MyListView.dart';

/*
* 添加步骤：
* 1.创建出code文件，复制进代码
* 2.创建出widget文件，写出界面代码
* 3.在Bar.dart中根据点击跳转widget界面
* */

class MyBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Bar",
      content: ["AppBar", "BottomAppBar", "ButtonBar", "FlexibleSpaceBar", "SliverAppBar", "SnackBar", "SnackBarAction", "Tabbar"],
      next: (index) {
        if (index == 0) {
          return MyAppBar();
        } else if (index == 1) {
          return MyBottomAppBar();
        } else if (index == 2) {
          return MyButtonBar();
        } else if (index == 3) {
          return MyFlexibleSpaceBar();
        } else if (index == 4) {
          return MySliverAppBar();
        }
        return MyAppBar();
      },
    );
  }
}
