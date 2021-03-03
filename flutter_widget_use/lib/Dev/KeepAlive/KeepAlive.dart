import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName KeepAlive
/// @Description 页面如何在底部tab切换时保持状态
/// @Author YuHua
/// @Date 2021-03-03 11:25 AM


const content = """
## Flutter页面如何在底部tab切换时保持状态？
> 页面的state实现AutomaticKeepAliveClientMixin，wantKeepAlive返回true即可。
```
class _MineTabState extends State<MineTab> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
}
```
""";

class MyKeepAlive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}