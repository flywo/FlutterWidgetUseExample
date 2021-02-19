import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/SizedOverflowBox.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """### **简介**
> 一个特定大小的窗口小部件,将其原始约束传递给其子节点,可能会溢出。
### **基本用法**
> alignment：对齐
> size： 设置部件大小
- ex:为方便看效果，现设置幕布大小为(Container)200*50。图一

- ex:图一，基础上添加一个不设置size属性的SizeOverflowBox。图二

- ex:图二，添加size属性，100*20,图三

- ex:图三，添加 alignment: Alignment.center,
""";

class MySizedOverflowBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "SizedOverflowBox",
      next: Column(
        children: <Widget>[
          SizeBoxDefault(
            curWidth: 200.0,
            curHeight: 50.0,
          ),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xffd81b60),
            width: 200.0,
            height: 50.0,
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xffd81b60),
            alignment: Alignment.topCenter,
            width: 200.0,
            height: 50.0,
            child: SizeOverflowBoxDefault(
              text: "SizeBox",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xffd81b60),
            width: 200.0,
            height: 50.0,
            child: SizeOverflowBoxDefault(
              text: "box",
              curSizeWidth: 100.0,
              curSizeHeight: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xffd81b60),
            width: 200.0,
            height: 50.0,
            alignment: Alignment.center,
            child: SizeOverflowBoxDefault(
              text: "box",
              curSizeWidth: 100.0,
              curSizeHeight: 20.0,
            ),
          ),
        ],
      ),
      nextPath: "lib/Code/SizedOverflowBox.dart",
      markdown: _Text0,
      url: 'https://docs.flutter.io/flutter/widgets/SizedBox-class.html',
    );
  }
}
