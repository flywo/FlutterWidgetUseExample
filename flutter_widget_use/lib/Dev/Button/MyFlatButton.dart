import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName MyFlatButton
/// @Description 取消FlatButton的默认大小
/// @Author YuHua
/// @Date 2021-03-04 3:25 PM

const content = """
## Flutter设置button过小时，如何取消FlatButton的默认padding？
```
FlatButton(
          onPressed: () {

          },
          color: ColorF3F3F7,
          minWidth: 40, // 设置宽度
          padding: EdgeInsets.only(left: 10, right: 10), // 设置内部文字与边框的填充
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // 设置收缩适应，设置该属性即可。
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9)
          ),
          child: buildText(
              title: name,
              fontSize: 10,
              fontColor: Color333333
          )
      )
```
""";

class MyFloatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}

