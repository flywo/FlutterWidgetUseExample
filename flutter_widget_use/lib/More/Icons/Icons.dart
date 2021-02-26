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
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _names.sort();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabs: [Tab(text: "列表",), Tab(text: "网格")],
          ),
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
            Text("网格")
          ],
        ),
      ),
    );
  }
}
