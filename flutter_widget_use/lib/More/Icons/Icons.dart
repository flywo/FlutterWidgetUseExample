import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/resources/widget_name_to_icon.dart';

class AllIcons extends StatefulWidget {

  @override
  _AllIconsState createState() => _AllIconsState();
}

class _AllIconsState extends State<AllIcons> with SingleTickerProviderStateMixin {

  static var _names = WidgetName2Icon.icons.keys.toList();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _TabBar(
          tabBar: TabBar(
            tabs: [Tab(text: "列表",), Tab(text: "网格")],
          ),
          color: Theme.of(context).primaryColor,
        ),
        body: TabBarView(
          children: [
            ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_names[index]),
                    trailing: Icon(WidgetName2Icon.icons[_names[index]]),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 1,
                    color: Colors.grey[500],
                  );
                },
                itemCount: _names.length),
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                  childAspectRatio: 1
                ),
                itemCount: _names.length,
                itemBuilder: (context, index) {
                  return IconButton(
                    icon: Icon(WidgetName2Icon.icons[_names[index]]),
                    onPressed: () {
                        showDialog(context: context,
                          builder: (context) {
                              return AlertDialog(
                                content: Row(
                                  children: [
                                    Text(_names[index]),
                                    Spacer(),
                                    Icon(WidgetName2Icon.icons[_names[index]])
                                  ],
                                ),
                              );
                          }
                        );
                    },
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}

class _TabBar extends Container implements PreferredSizeWidget {
  final Color color;
  final TabBar tabBar;

  _TabBar({Key key, @required this.color, @required this.tabBar})
      : super(key: key);

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Material(
    elevation: 4.0,
    color: color,
    child: tabBar,
  );
}
