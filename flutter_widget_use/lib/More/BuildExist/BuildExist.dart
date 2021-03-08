import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const content = """
## 使用Cocoapods添加Flutter到已存在的iOS项目中
> 1.进入要存放flutter项目的目录中
```
cd /Users/yuhua/Desktop/Other/SportNews/SportNews/flutter_module
```
> 2.使用命令创建flutter模块
```
flutter create --template module flutter_module
```
> 3.进入cocoapods的Podfile文件中，添加如下内容
```
// 注意路径需要是flutter模块相对于项目的相对路径
flutter_application_path = './flutter_module/flutter_module'
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')
```
> 4.在Podfile的target中，添加如下内容
```
install_all_flutter_pods(flutter_application_path)
```
> 5.执行pod install命令
```
pod install
```
> 6.进入flutter模块目录中
```
cd /Users/yuhua/Desktop/Other/SportNews/SportNews/flutter_module/flutter_module
```
> 7.拉取pub内容
```
flutter pub get
```
> 8.打开iOS项目，运行成功，即表示导入Flutter成功。
> 9.后续请参考'iOS与Flutter交互'的内容。
""";

class MyBuildExist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}
