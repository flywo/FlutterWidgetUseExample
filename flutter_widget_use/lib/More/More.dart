import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Components/Bar/Tabbar/Tabbar.dart';
import 'package:flutter_widget_use/More/EventBus/EventBus.dart';
import 'package:flutter_widget_use/More/Icons/Icons.dart';
import 'package:flutter_widget_use/More/Native/Native.dart';
import 'package:flutter_widget_use/More/Pass/Pass.dart';
import 'package:flutter_widget_use/More/Radius/Radius.dart';
import 'package:flutter_widget_use/More/Router/Router.dart';
import 'package:flutter_widget_use/More/TabBar/MyTabBar.dart';
import 'package:flutter_widget_use/More/Theme/MyTheme.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'package:flutter_widget_use/More/BuildExist/BuildExist.dart';

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter更多"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            if (index == 1) {
              return ListTile(
                title: Text("iOS与Flutter交互"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("iOS与Flutter交互"),
                      ),
                      body: MyNative(),
                    );
                  }));
                },
              );
            } else if (index == 2) {
              return ListTile(
                title: Text("Flutter跳转页面"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("Flutter跳转页面"),
                      ),
                      body: MyRouter(),
                    );
                  }));
                },
              );
            } else if (index == 3) {
              return ListTile(
                title: Text("Flutter跳转页面时传递参数"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("Flutter跳转页面时传递参数"),
                      ),
                      body: MyPass(),
                    );
                  }));
                },
              );
            } else if (index == 4) {
              return ListTile(
                title: Text("event_bus使用指南"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("event_bus使用指南"),
                      ),
                      body: MyEventBus(),
                    );
                  }));
                },
              );
            } else if (index == 5) {
              return ListTile(
                title: Text("设置控件圆角"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("设置控件圆角"),
                      ),
                      body: MyRadius(),
                    );
                  }));
                },
              );
            } else if (index == 6) {
              return ListTile(
                title: Text("设置主题颜色"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("设置主题颜色"),
                      ),
                      body: MyTheme(),
                    );
                  }));
                },
              );
            } else if (index == 7) {
              return ListTile(
                title: Text("Tabbar和TabBarView配合"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("Tabbar和TabBarView配合"),
                      ),
                      body: MyTabBarView(),
                    );
                  }));
                },
              );
            } else if (index == 8) {
              return ListTile(
                title: Text("使用Cocoapods添加Flutter到已存在的iOS项目中"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("使用Cocoapods添加Flutter到已存在的iOS项目中"),
                      ),
                      body: MyBuildExist(),
                    );
                  }));
                },
              );
            }
            return ListTile(
              title: Text("Icons列表"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text("Icons列表"),
                    ),
                    body: WidgetWithCodeView(
                        child: AllIcons(),
                        sourceFilePath: "lib/More/Icons/Icons.dart"
                    ),
                  );
                }));
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1,
              color: Colors.grey[500],
            );
          },
          itemCount: 9
      ),
    );
  }
}
