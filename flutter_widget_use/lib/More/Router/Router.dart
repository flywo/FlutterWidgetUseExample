import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName Router
/// @Description Flutter跳转页面方式
/// @Author YuHua
/// @Date 2021-03-01 2:03 PM


const content = """
## Flutter如何跳转页面？
> 1.使用Navigator进行跳转
- 跳转操作
```
Navigator.push(context, MaterialPageRoute(builder: (context) {
            // 目标页面，即一个 Widget
            return DetailScreen();
```
或者
```
Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PageA(),
            ),
          );
```
- 返回页面
```
Navigator.pop(context);
```
或者
```
Navigator.of(context).pop();
```
> 2.使用路由进行跳转
- 在MaterialApp中注册页面
```
MaterialApp(
  // 设置第一个页面，即启动页
  initialRoute: '/',
  routes: {
    // 注册一个页面
    '/': (context) => FirstScreen(),
    // 注册第二个页面
    '/second': (context) => SecondScreen(),
  },
);
```
- 跳转操作
```
Navigator.pushNamed(context, '/second');
```
或者
```
Navigator.of(context).pushNamed('/second');
```
""";

class MyRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}
