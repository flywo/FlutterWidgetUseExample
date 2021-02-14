import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/CheckboxListTile.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _CheckboxListTileText0 = """### **简介**
> CheckboxListTile “下拉复选框”
- 带有复选框的 ListTile,带有标签的 ListTile；
- 整个列表图块是交互式的：点击图块中的任意位置可切换复选框；
""";

const String _CheckboxListTileText1 = """### **基本用法**
> CheckboxListTile 的属性特征
- 与 Checkbox 类似的命名属性，比如：onChanged 和 activeColor；
- 和 ListTile 类似的命名属性，比如：title, subtitle, isThreeLine，dense；
- selected 属性和 ListTile.selected 属性类似，但使用的颜色是 activeColor 属性，默认为当前 Theme 的颜色；
- onChanged 回调函数为 null,显示禁用；
""";

const String _CheckboxListTileText2 = """### **进阶用法**
> CheckboxListTile 单选和全选的示例 
""";

class CheckboxListTile extends StatefulWidget {
  @override
  _CheckboxListTileState createState() => _CheckboxListTileState();
}

class _CheckboxListTileState extends State<CheckboxListTile> {
  final Map<String, bool> valBool = {'val': true};
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "CheckboxListTile",
      next: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTileDefault(this, this),
          CheckboxListTileStateDefault()
        ],
      ),
      nextPath: "lib/Code/CheckboxListTile.dart",
      markdown: _CheckboxListTileText0 + _CheckboxListTileText1 + _CheckboxListTileText2,
      url: 'https://docs.flutter.io/flutter/material/CheckboxListTile-class.html',
    );
  }
}
