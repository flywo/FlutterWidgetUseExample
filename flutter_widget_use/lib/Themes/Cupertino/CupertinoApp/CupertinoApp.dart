import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/CupertinoApp.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String content0 = '''
### **简介**
> Cupertino 苹果设计风格的应用,用于创建 iOS 风格应用的顶层组件( Cupertino 苹果电脑的全球总公司所在地，位于美国旧金山 )
- 它包含了 iOS 应用程序，通常需要的许多 widget;
- 它的构建于基于 iOS 的 WidgetsApp 特定的默认值，如字体和物理滚动;
''';

const String content1 = '''
### **基本用法**
> CupertinoApp 的主要特性
- top 级别的 Navigator 搜索的配置，需要遵循以下规则优先级
  - 首先,对于 根路由 "/", 使用 home 属性，前提是 home 属性不为空; 
  - 如果没设置home，则使用 routes 属性，它应用程序的顶级路由表；
  - 如果 home 和 routes 都没有做有效配置，则调用onGenerateRoute（如果提供），并且返回非null值；
  - 最后，如果所有其他方法都失败onUnknownRoute被调用；
  - 如果 home，routes，onGenerateRoute和onUnknownRoute 都为null，并且builder不为null，则不会创建任何Navigator；
  - 如果配置了顶级 Navigator 的 observer，则可以做 Hero 动画；
- 在 Android 上谨慎使用此 widget，因为它可能会产生 Android 用户不同的行为，例如：
  - 通过反向滑动可以禁用页面；
  - 滚动到底或者顶，会触发 ios 风格的弹性效果；
  - 某些苹果字体系列在 Android上 不可用，可能导致未定义的字体提示。
''';

class MyCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "CupertinoApp",
      next: CupertinoAppFullDefault(),
      nextPath: "lib/Code/CupertinoApp.dart",
      markdown: content0 + content1,
      url: 'https://docs.flutter.io/flutter/cupertino/CupertinoApp-class.html',
    );
  }
}
