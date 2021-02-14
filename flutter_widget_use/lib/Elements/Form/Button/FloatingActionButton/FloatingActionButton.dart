import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Code/FloatingActionButton.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _floatingActionText0 = """### **简介**
> FloatingAction Button “浮动动作按钮”
- FloatingActionButton 按钮是一个圆形图标按钮，悬停在内容上以提升应用程序中的主要操作。浮动操作按钮最常用于Scaffold.floatingActionButton字段中;
- 每个屏幕最多使用一个浮动操作按钮。浮动操作按钮应用于积极操作，例如“创建”，“共享”或“导航”;
- 一般用来处理界面中最常用，最基础的用户动作。它一般出现在屏幕内容的前面，通常是一个圆形，中间有一个图标。 FAB有三种类型：regular, mini, extended。不要强行使用FAB，只有当使用场景符合FAB功能的时候使用才最为恰当;
""";

const String _floatingActionText1 = """### **基本用法**
> 默认参数的 button 和禁用 button 
- 如果 onPressed 回调为null，则该 button 将被禁用，并且不会对触摸作出反应,不会变成灰色;
""";

const String _floatingActionText2 = """### **进阶用法1**
> 更改项参数的自定义,比如:边框，点击效果，内容文字,颜色,圆角等
""";

const String _floatingActionText3 = """### **进阶用法2**
> 更改项参数的自定义,比如:边框，点击效果，内容文字,颜色,圆角等
""";

class FloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "FloatingActionButton",
      next: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButtonDefault(),
          FloatingActionButtonDefault(false),
          FloatingActionButtonCustom('主要按钮'),
          FloatingActionButtonCustom2('主要按钮')
        ],
      ),
      nextPath: "lib/Code/FloatingActionButton.dart",
      markdown: _floatingActionText0 + _floatingActionText1 + _floatingActionText2 + _floatingActionText3,
      url: 'https://docs.flutter.io/flutter/material/FloatingActionButton-class.html',
    );
  }
}
