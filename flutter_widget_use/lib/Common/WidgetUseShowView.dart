import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class WidgetUseShowView extends StatelessWidget {

  final String title;
  final Widget next;
  final String nextPath;
  final String markdown;

  WidgetUseShowView({Key key, this.title, this.next, this.nextPath, this.markdown}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
              icon: Icon(Icons.preview),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Scaffold(
                    appBar: AppBar(title: Text(title),),
                    body: WidgetWithCodeView(
                      child: next,
                      sourceFilePath: nextPath,
                    ),
                  );
                }));
              }
          ),
        ],
      ),
      body: Markdown(
        data: markdown,
      ),
    );
  }
}
