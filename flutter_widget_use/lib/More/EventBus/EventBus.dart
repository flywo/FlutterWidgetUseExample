import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName EventBus
/// @Description TODO
/// @Author YuHua
/// @Date 2021-03-03 10:13 AM


const content = """
## 如何使用event_bus？
> 1.定义出事件类
```
/// 创建事件总线
EventBus eventBus = EventBus();

///刷新首頁
class HeavyBrush {
  String routerType;

  // 全局重刷节点列表事件
  HeavyBrush(this.routerType);
}
```
> 2.在需要的地方监听，一般是在initState方法内
```
// 定义出属性
StreamSubscription _stateSubscription;

// initState方法内监听
void initState() {
    super.initState();
    // ///添加监听者 列表变动
    _stateSubscription = eventBus.on<HeavyBrush>().listen((event) {
      if (event.routerType == '首页') {
        _refreshChildView();
      }
    });
  }
```
> 3.有事件的地方，发出事件
```
eventBus.fire(OrderScreenRefresh(_orderType, _isOvertime, _isAbnormal, _isTransaction, _isResources));
```
> 4.界面释放时，取消监听
```
void dispose() {
    if (null != _stateSubscription) {
      _stateSubscription.cancel();
    }
    super.dispose();
  }
```
""";

class MyEventBus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}