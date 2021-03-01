import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName GitProxy
/// @Description TODO
/// @Author YuHua
/// @Date 2021-03-01 1:28 PM

const content = """
## 如何给git设置代理，一劳永逸？
> 1.在终端输入如下命令设置git的代理。
```
git config --global http.proxy 'http://127.0.0.1:7890' 
git config --global https.proxy 'http://127.0.0.1:7890'
```
> 2.输入如下命令，查看代理是否设置成功。
```
git config --global -l  
```
- 使用该命令后，如果能够看到，
```
http.proxy=http://127.0.0.1:7890
https.proxy=http://127.0.0.1:7890
```
- 表示设置成功。
> 3.使用SorceTree等git工具进行操作即可。
""";

class GitProxy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}
