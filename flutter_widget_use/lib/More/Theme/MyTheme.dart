import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName MyTheme
/// @Description 主题颜色
/// @Author YuHua
/// @Date 2021-03-03 5:47 PM


const content = """
## Flutter设置Theme
> 1.ThemeData部分参数含义
```
ThemeData({
  Brightness brightness, //深色还是浅色
  MaterialColor primarySwatch, //主题颜色样本，见下面介绍
  Color primaryColor, //主色，决定导航栏颜色
  Color accentColor, //次级色，决定大多数Widget的颜色，如进度条、开关等。
  Color cardColor, //卡片颜色
  Color dividerColor, //分割线颜色
  ButtonThemeData buttonTheme, //按钮主题
  Color cursorColor, //输入框光标颜色
  Color dialogBackgroundColor,//对话框背景颜色
  String fontFamily, //文字字体
  TextTheme textTheme,// 字体主题，包括标题、body等文字样式
  IconThemeData iconTheme, // Icon的默认样式
  TargetPlatform platform, //指定平台，应用特定平台控件风格
  ...
})
```
> 2.设置应用主题
```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'budaye',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        accentColor: Colors.cyan[600],
      ),
      home: new RandomWords(),
    );
  }}
```
> 3.设置某一部分局部主题，需使用Theme包裹子Widget
- 通过创建ThemeData来传递给子Widget
```
Theme(
  // Create a unique theme with "new ThemeData"
  data: new ThemeData(
    accentColor: Colors.yellow,
  ),
  child: new FloatingActionButton(
    onPressed: () {},
    child: new Icon(Icons.add),
  ),
);
```
- 通过修改父主题来传递给子Widget
```
Theme(
  // Find and Extend the parent theme using "copyWith". Please see the next 
  // section for more info on `Theme.of`.
  data: Theme.of(context).copyWith(accentColor: Colors.yellow),
  child: new FloatingActionButton(
    onPressed: null,
    child: new Icon(Icons.add),
  ),
);
```
> 4.通过Theme.of(context)获取主题
```
Container(
  color: Theme.of(context).accentColor,
  child: new Text(
    'Text with a background color',
    style: Theme.of(context).textTheme.title,
  ),
);
```
""";

class MyTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}