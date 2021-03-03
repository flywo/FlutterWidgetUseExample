import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName Radius
/// @Description 圆角
/// @Author YuHua
/// @Date 2021-03-03 2:07 PM


const content = """
## Flutter如何给控件增加圆角？
> 方法一：通过Card的shape属性设置
```
Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20)),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              "images/landscape0.jpeg",
              width: double.maxFinite,
            ),
          )
```
> 方法二：通过Container的decoration属性设置
```
- 设置圆角图片为背景
Container(
          decoration: ShapeDecoration(
              image: DecorationImage(
                  image: AssetImage("images/landscape1.jpeg"),
                  fit: BoxFit.fitWidth),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(20))),
          width: double.maxFinite,
          height: 300,
          child: Align(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Container decoration实现圆角(radius = 20)",
                style: TextStyle(color: Colors.white),
              ),
            ),
            alignment: Alignment.bottomCenter,
          ),
        )
```
- 设置颜色圆角
```
Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              color: ColorDA4155,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: buildText(
                                title: "平博12",
                                fontSize: 12,
                                fontColor: ColorFFFFFF),
                          )
```
> 方法三：使用ClipRRect包裹控件
```
ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/landscape2.jpeg"),
            ),
```
""";

class MyRadius extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}