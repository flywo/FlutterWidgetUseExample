import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/AboutDialogCode.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text0 = """
### **简介**
> AboutDialog 通常用于传递企业或者app的官方信息
- 这个对话框包含应用程序的图标，名称，版本号，版权和应用程序使用到的软件许可证的按钮


### **基本用法**
> 要显示的AboutDialog，使用showAboutDialog。
- 如果应用程序具有Drawer，则AboutListTile可以使显示AboutDialog的过程更简单。
- AboutDialog通过showAboutDialog 显示按钮调用 showLicensePage。

""";


class MyAboutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "AboutDialog",
      next: AboutDialogDemo(),
      nextPath: "lib/Code/AboutDialogCode.dart",
      markdown: _Text0,
    );
  }
}
