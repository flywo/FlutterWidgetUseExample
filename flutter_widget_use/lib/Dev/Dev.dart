/// @ClassName Dev
/// @Description 开发备忘列表
/// @Author YuHua
/// @Date 2021-03-01 11:55 AM

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Dev/Button/MyFlatButton.dart';
import 'package:flutter_widget_use/Dev/GitProxy/GitProxy.dart';
import 'package:flutter_widget_use/Dev/KeepAlive/KeepAlive.dart';
import 'package:flutter_widget_use/Dev/ShrinkWrap/ShrinkWrap.dart';
import 'package:flutter_widget_use/Dev/TabBarKeepAlive/TabBarKeepAlive.dart';

class Dev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("开发备忘"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            if (index == 1) {
              return ListTile(
                title: Text("Flutter页面如何在切换时保持状态？"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("Flutter页面如何在切换时保持状态？"),
                      ),
                      body: MyKeepAlive(),
                    );
                  }));
                },
              );
            } else if (index == 2) {
              return ListTile(
                title: Text("Flutter设置button过小时，如何取消FlatButton的默认padding？"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("Flutter设置button过小时，如何取消FlatButton的默认padding？"),
                      ),
                      body: MyFloatButton(),
                    );
                  }));
                },
              );
            } else if (index == 3) {
              return ListTile(
                title: Text("ListView的ShrinkWrap属性作用？"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("ListView的ShrinkWrap属性作用？"),
                      ),
                      body: MyShrinkWrap(),
                    );
                  }));
                },
              );
            } else if (index == 4) {
              return ListTile(
                title: Text("Flutter页面如何在TabBar切换时保持状态？"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text("Flutter页面如何在TabBar切换时保持状态？"),
                      ),
                      body: MyTabBarKeepAlive(),
                    );
                  }));
                },
              );
            }
            return ListTile(
              title: Text("如何设置git走代理？"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text("如何设置git走代理？"),
                    ),
                    body: GitProxy(),
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
          itemCount: 5
      ),
    );
  }
}
