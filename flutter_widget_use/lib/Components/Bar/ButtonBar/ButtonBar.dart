import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

import '../../../Code/ButtonBarCode.dart';

const String _Text0 = """### **简介**
> ButtonBar “末端对齐的按钮容器”
- 横排的Button布局
""";

const String _Text1 = """### **基本用法**
> 根据当前 ButtonTheme 中的填充水平放置 button
- 子 button 在布置行与 MainAxisAlignment.end;
- 当 Directionality为TextDirection.ltr 时，按钮栏的子项右对齐，最后一个子项成为最右边的子项;
- 当 Directionality TextDirection.rtl 时，子项被左对齐，最后一个子项成为最左边的子项;
""";

class MyButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ButtonBar",
      next: Column (
        children: [
          ButtonBarFullDefault(),
          Divider(),
          ButtonBarLessDefault()
        ],
      ),
      nextPath: "lib/Code/ButtonBarCode.dart",
      markdown: _Text0 + _Text1,
    );
  }
}
