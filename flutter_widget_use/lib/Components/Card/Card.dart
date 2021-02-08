import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/CardCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """### **简介**
> Card “卡片”
- 卡片用于表示一些相关信息，例如相册，地理位置，用餐，联系方式等
""";

const String _Text1 = """### **基本用法**
> 此示例显示了创建卡片窗口组件，其中显示了相册信息和两个操作
""";

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "Card",
      next: CardLessDefault(),
      nextPath: "lib/Code/CardCode.dart",
      markdown: _Text0 + _Text1,
    );
  }
}
