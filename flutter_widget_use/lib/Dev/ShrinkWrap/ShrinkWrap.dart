import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName ShrinkWrap
/// @Description 包裹
/// @Author YuHua
/// @Date 2021-03-04 3:38 PM


const content = """
## ListView的ShrinkWrap属性作用？
- 该属性将决定列表的长度是否仅包裹其内容的长度。当ListView嵌在一个无限长的容器组件中时，shrinkWrap必须为true，否则Flutter会给出警告
""";

class MyShrinkWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}