import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Code/ConstrainedBox.dart';
import 'package:flutter_widget_use/Common/WidgetUseShowView.dart';

const String _Text = '''
### **简介**
> 添加额外的限制条件到child上
- 比如说，你限制child最小高度为50.0像素，就可以用constraints: const BoxConstraints(minHeight：50）

''';
const String _Text1 = '''
### **基本用法**
> 添加额外的限制条件到child上
- ex:添加ConstrainedBox约束如下，传入不同Width约束的Container效果
minWidth: 100.0,
minHeight: 20.0,
maxWidth: 300.0,
maxHeight: 50.0

''';

class MyConstrainedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetUseShowView(
      title: "ConstrainedBox",
      next: Column(
        children: [
          ConstrainedBoxCreate(currWidth: 500, describe: "currWidth>maxWidth"),
          SizedBox(
            height: 10.0,
          ),
          ConstrainedBoxCreate(currWidth: 300, describe: "currWidth=maxWidth"),
          SizedBox(
            height: 10.0,
          ),
          ConstrainedBoxCreate(currWidth: 200, describe: "currWidth<maxWidth"),
          SizedBox(
            height: 10.0,
          ),

          // minWidth: 100.0,
          ConstrainedBoxCreate(currWidth: 150, describe: "currWidth>minWidth"),
          SizedBox(
            height: 10.0,
          ),
          ConstrainedBoxCreate(currWidth: 100, describe: "currWidth=minWidth"),
        ],
      ),
      nextPath: "lib/Code/ConstrainedBox.dart",
      markdown: _Text + _Text1,
      url: 'https://docs.flutter.io/flutter/widgets/ConstrainedBox-class.html',
    );
  }
}
