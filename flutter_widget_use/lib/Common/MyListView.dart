import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {

  final String title;
  final List<String> content;
  final Widget Function(int) next;

  MyListView({Key key, this.title, this.content, this.next}) : super(key: key);

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(widget.content[index]),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return widget.next(index);
                }));
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 1,
              color: Colors.grey[500],
            );
          },
          itemCount: widget.content.length),
    );
  }
}