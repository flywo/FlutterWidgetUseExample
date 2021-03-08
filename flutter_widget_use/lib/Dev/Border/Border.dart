import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName Border
/// @Description TODO
/// @Author YuHua
/// @Date 2021-03-05 12:31 PM

const content = """
## 如何设置圆角边框？
> 可通过container实现
```
Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColor.colorCDCDCD,
                      width: 0.5,
                    )
                ),
                alignment: Alignment.center,
                child: buildText(
                    title: number,
                    fontSize: 10,
                    textAlign: TextAlign.center,
                    fontColor: AppColor.color999
                ),
              ),
```
""";

class MyBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}