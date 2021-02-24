import 'package:flutter/material.dart';

class ImageIconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //注意：当你用一个图片的时候，这个图片会被整个覆盖，只保留图片的形状，填充你设置的颜色
    return ImageIcon(
      AssetImage('assets/images/btn_icon_dingyuehao_normal.png'),
      color: Colors.red,
      size: 50.0,
    );
  }
}
