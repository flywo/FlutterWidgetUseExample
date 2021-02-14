import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/CheckBox.dart' as checkbox;
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _checkboxText0 = """### **简介**
> checkbox “复选框”
- 复选框本身不保持任何状态;
- 当复选框的状态发生变化时，窗口小部件会调用onChanged回调;
- 大多数使用复选框的小部件将侦听onChanged回调，并使用新值重建复选框以更新复选框的可视外观;""";

const String _checkboxText1 = """### **基本用法**
> 下面示例展示多个颜色(随机)样式的 `checkbox`
- 一个多选的 `checkbox`;
""";

const String _checkboxText2 = """### **进阶用法**
> 下面示例展示多个颜色(随机)样式的 `checkbox`
- 一个单选 `checkbox` 操作;
""";

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  int selectValue = -1;
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "CheckBox",
      next: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              checkbox.CheckboxDefault(this, 0),
              checkbox.CheckboxDefault(this, 1),
              checkbox.CheckboxDefault(this, 2),
              checkbox.CheckboxDefault(this, 3),
              checkbox.CheckboxDefault(this, 4),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              checkbox.CheckboxSelect(this, this, 0),
              checkbox.CheckboxSelect(this, this, 1),
              checkbox.CheckboxSelect(this, this, 2),
              checkbox.CheckboxSelect(this, this, 3),
              checkbox.CheckboxSelect(this, this, 4),
            ],
          ),
        ],
      ),
      nextPath: "lib/Code/CheckBox.dart",
      markdown: _checkboxText0 + _checkboxText1 + _checkboxText2,
      url: 'https://docs.flutter.io/flutter/material/Checkbox-class.html',
    );
  }
}
