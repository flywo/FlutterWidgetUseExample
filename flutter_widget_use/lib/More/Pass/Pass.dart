import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName Pass
/// @Description 传递参数
/// @Author YuHua
/// @Date 2021-03-01 2:32 PM


const content = """
## 页面如何传递参数？
> 1.通过页面定义传值
- 要跳转的页面定义出参数，构造方法中添加该参数
```
class PageB extends StatelessWidget {
  String data;
  // 构造方法传递参数
  PageB({this.data});
}
```
- 跳转页面时
```
Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PageB(
                    data: "要传递的数据",
                  ),
            ),
          );
```
> 2.使用路由进行传值
- 定义出要传递的类
```
class People {
  String name;
  int age;
  People(this.name, this.age);
}
```
- 传递参数
```
Navigator.pushNamed(context,pageB,arguments: People("yzq", 25),//要传递的数据);
```
或者
```
Navigator.of(context).pushNamed(pageB, arguments: People("yzq", 25));
```
或者
```
Navigator.push(context,MaterialPageRoute(
              builder: (context) => PageB(),
              settings: RouteSettings(
                arguments: People("yuzhiqiang", 26),),),);
```
或者
```
Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PageB(),
                settings: RouteSettings(
                    arguments: People("yuzhiqiang", 26),)),);
```
- 接收参数
```
/*获取传递过来的参数*/
People _people = ModalRoute.of(context).settings.arguments;
```
> 3.使用onGenerateRouter传递
- 定义出下一个页面需要的参数
```
class PageC extends StatelessWidget {
  /*路由别名*/
  static const routeName = '/pageC';
  /*需要的参数*/
  String name;
  PageC({this.name});
}
```
- 进行跳转
```
Navigator.pushNamed(
            context,
            PageC.routeName,
            arguments: People("喻志强", 23),
          );
```
- 使用onGenerateRouter进行数据传递
```
MaterialApp(
      onGenerateRoute: (settings) {
        /*如果路由名称是PageC.routeName 则进行处理*/
        if (settings.name == PageC.routeName) {
          People p = settings.arguments;
          return MaterialPageRoute(
              builder: (context) => PageCHome(
                    pageContext: context,
                    name: p.name,
                  ));
        }
      },
    );
```
> 4.使用pop回传值
- 使用pop回传值
```
Navigator.of(context).pop(People("YZQ", 18));
```
- 上一个页面进行接收
```
void skipToPageD() async {
    final result = await Navigator.pushNamed(context, pageD);
    // 拿到回传的值
    People p = result as People;
  }
```
或者
```
Navigator.pushNamed(context, pageD).then((result) {
            People p = result as People;//回传的值
          }
```
""";

class MyPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}
