import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName Native
/// @Description 原生与Flutter交互的方式总结
/// @Author YuHua
/// @Date 2021-03-01 10:01 AM

const content = """
## **构建Flutter页面的方式：**
### **方式一：使用FlutterEngine预加载**
> 1.导入Flutter库
```
import Flutter
```
> 2.创建出FlutterEngine
```
var flutterEngine = FlutterEngine(name: "flutter")
```
> 3.预加载Flutter
```
flutterEngine.run()
```
- 上面这几步是可以提前做的
> 4.创建出页面
```
let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
```
- 这种方式适合静态页面，不需要给该页面传值的时候使用。

### **方式二：使用FlutterEngine构建页面，并且传递数据**
> 1.导入Flutter库
```
import Flutter
```
> 2.创建出FlutterEngine
```
var flutterEngine = FlutterEngine(name: "flutter")
```
- 上面这几步是可以提前做的
> 3.加载Flutter，其中msg就是要传递的数据
```
flutterEngine.run(withEntrypoint: nil, initialRoute: "msg")
```
> 4.创建出页面
```
let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
```
- 这种方式创建出的页面，跳转的时候，界面加载会有一点延迟

### **方式三：直接构建页面，并且传递数据**
> 1.导入Flutter库
```
import Flutter
```
> 2.创建出页面，msg就是要传递的数据
```
let flutterViewController = FlutterViewController(project: nil, initialRoute: "msg", nibName: nil, bundle: nil)
```
- 这种方式创建出的页面，跳转的时候，界面加载会有一点延迟

- 然后直接使用present或者push出flutter页面即可。


## **Flutter调用原生：**
> 1.双方定义出交互通道名，如：
```
let native = "test/native"
```
> 2.原生创建出交互通道
```
let channel = FlutterMethodChannel(name: native, binaryMessenger: flutterViewController.binaryMessenger)
```
- 当然，binaryMessenger可以使用flutterEngine的binaryMessenger
> 3.原生设置被flutter调用时的操作
```
channel.setMethodCallHandler { [weak self] call, result in
            if call.method == "back" {
                self?.navigationController?.popViewController(animated: true)
                result("success")
            }
            if call.method == "get_id" {
                result("123");
            }
        }
```
> 4.Flutter创建出调用的异步方法
```
Future<void> back(MethodChannel channel) async {
      Map<String, dynamic> para = {"msg":"返回原生界面"};
      String result = await channel.invokeMethod("back", para);
      print("返回结果" + result);
    }
```
> 5.Flutter创建出通道
```
const channel = MethodChannel("test/native");
```
> 6.Flutter调用异步方法
```
back(channel);
```
## **原生调用Flutter：**
> 1.双方定义出交互通道名，如：
```
let native = "test/native"
```
> 2.Flutter创建出交互通道，并且设置交互操作
```
Future<dynamic> handler(MethodCall call) async {
      if (call.method == "need") {
        print(call.arguments["msg"]);
        const channel = MethodChannel("test/native");
        getID(channel).then((result) {
          print(result);
          setState(() {
            _title = result;
          });
        });
      }
    }
MethodChannel("test/flutter").setMethodCallHandler(handler);
```
> 3.原生调用
```
let channel = FlutterMethodChannel(name: flutter, binaryMessenger: flutterViewController.binaryMessenger)
channel.invokeMethod("need", arguments: ["msg":"去获取id"])
```

***Flutter返回系统级别上一级，SystemNavigator.pop(animated: true);***

## **如何在原生跳转Flutter的时候，界面顺滑加载，同时传递数据给Flutter？**
> 1.首先预加载Engine
> 2.定义出原生调Flutter的通道
> 3.跳转Flutter页面时，通过通道将要跳转的页面信息传递给Flutter
> 4.进行跳转操作
""";

class MyNative extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}

