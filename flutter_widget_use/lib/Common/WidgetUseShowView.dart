import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:loading_indicator_view/loading_indicator_view.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class WidgetUseShowView extends StatelessWidget {

  final String title;
  final Widget next;
  final String nextPath;
  final String markdown;
  final String url;

  WidgetUseShowView({Key key, this.title, this.next, this.nextPath, this.markdown, this.url}) : super(key: key);

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
                    body: SafeArea(
                      child: WidgetWithCodeView(
                        child: next,
                        sourceFilePath: nextPath,
                      ),
                    ),
                  );
                }));
              }
          ),
          IconButton(
              icon: Icon(Icons.web),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return WebviewScaffold(
                    url: url,
                    appBar: AppBar(title: Text(title)),
                    withZoom: true,
                    withLocalStorage: true,
                    hidden: true,
                    initialChild: Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LineSpinFadeLoaderIndicator(ballColor: Colors.blue,),
                            SizedBox(width: 10,),
                            Text(
                              "加载中...",
                              style: TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
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
