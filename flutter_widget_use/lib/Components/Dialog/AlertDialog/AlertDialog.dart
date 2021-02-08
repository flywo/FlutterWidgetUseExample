import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/AlertDialogCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """
### **简介**
> AlertDialog 向用户传递信息的弹出层。警报对话框
- 一般使用在通知用户需要确认的情况，具有可选标题和可选的操纵列表。标题显示在上方，操纵内容显示在内容区域，即下方

### **基本用法**
> 通常作为子窗口小部件传递给showDialog，后者显示对话框。
- 当**AlertDialog**的的元素过多过长时, 请优先考虑**SingleChildScrollView** 用来避免内容溢出
- 需要注意的是，由于AlertDialog 通常使用child的大小来调整自身大小，所以使用一些widget（如ListView，GridView和CustomScrollView）将无法正常工作
- 当需要给用户提供多个选项的供选择时，请使用SimpleDialog
""";

class MyAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "AlertDialog",
      next: AlertDialogDemo(),
      nextPath: "lib/Code/AlertDialogCode.dart",
      markdown: _Text0,
    );
  }
}
