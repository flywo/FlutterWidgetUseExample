import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/More/Icons/Icons.dart';
import 'package:flutter_widget_use/More/Native/Native.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

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
          itemCount: 2
      ),
    );
  }
}
