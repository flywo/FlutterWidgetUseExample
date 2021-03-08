import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName LayoutBuilder
/// @Description LayoutBuilder
/// @Author YuHua
/// @Date 2021-03-05 12:26 PM


const content = """
## LayoutBuilder作用？
> 获取父控件的布局信息。
```
Container(
  child: LayoutBuilder(context, contraints){
    if(contraints.maxWidth > 600){
		...
	}
  }
)
```
""";

class MyLayoutBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}