import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName TabBarKeepAlive
/// @Description 底部tabbar切换保持状态
/// @Author YuHua
/// @Date 2021-03-04 6:47 PM


const content = """
## Flutter页面如何在TabBar切换时保持状态？
> 使用IndexedStack实现
```
Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: _list,
      ),
      //body: _children[_currentIndex],
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
    );
```
""";

class MyTabBarKeepAlive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}