import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Components/Grid/GridPaper/GridPaper.dart';
import 'package:flutter_widget_use/Components/Grid/GridTile/GridTile.dart';
import 'package:flutter_widget_use/Components/Grid/GridTileBar/GridTileBar.dart';
import 'package:flutter_widget_use/Components/Grid/GridView/GridView.dart';
import 'package:flutter_widget_use/Components/Grid/SliverGrid/SliverGrid.dart';

class MyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Grid",
      content: ["GridPaper", "GridTile", "GridTileBar", "GridView", "SliverGrid"],
      next: (index) {
        if (index == 0) {
          return MyGridPager();
        } else if (index == 1) {
          return MyGridTile();
        } else if (index == 2) {
          return MyGridTileBar();
        } else if (index == 3) {
          return MyGridView();
        } else if (index == 4) {
          return MySliverGrid();
        }
        return MyGridPager();
    });
  }
}
