import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Code/SizeBox.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text = """### **SizeBox简介**
> 常用的一个控件，设置具体尺寸。
- sizebox设置width，height时候，强制child宽高为该设置，
- sizebox的width，heigh为null，child自身设置
### **属性**
> width：宽
> height：高
- ex:200*50 sizebox
""";

class MySizeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "SizeBox",
      next: Column(
        children: <Widget>[
          Text("SizedBox",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )),
          Row(
            children: <Widget>[
              SizeBoxDefault(),
              SizedBox(
                width: 130.0,
                height: 80.0,
                child: const Card(
                    child: Text(
                      'SizedBox',
                      textAlign: TextAlign.center,
                    ),
                    margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    color: Color(0xFFE57373)),
              ),
            ],
          ),
          SizedBox(
            width: 900.0,
            height: 50.0,
            child: const Card(
                child: Text(
                  'SizedBox',
                  textAlign: TextAlign.center,
                ),
                color: Color(0xFFEF5350)),
          ),
        ],
      ),
      nextPath: "lib/Code/SizeBox.dart",
      markdown: _Text,
      url: 'https://docs.flutter.io/flutter/widgets/SizedBox-class.html',
    );
  }
}
