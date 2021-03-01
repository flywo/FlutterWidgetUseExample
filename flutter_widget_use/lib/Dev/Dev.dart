/// @ClassName Dev
/// @Description TODO
/// @Author YuHua
/// @Date 2021-03-01 11:55 AM

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Dev/GitProxy/GitProxy.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class Dev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("开发备忘"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
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
          itemCount: 1
      ),
    );
  }
}
