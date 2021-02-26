import 'package:flutter/cupertino.dart';
import 'package:flutter_widget_use/Common/MyListView.dart';
import 'package:flutter_widget_use/Elements/Media/Image/AssetImage/AssetImage.dart';
import 'package:flutter_widget_use/Elements/Media/Image/DecorationImage/DecorationImage.dart';
import 'package:flutter_widget_use/Elements/Media/Image/ExactAssetImage/ExactAssetImage.dart';
import 'package:flutter_widget_use/Elements/Media/Image/FadeInImage/FadeInImage.dart';
import 'package:flutter_widget_use/Elements/Media/Image/FileImage/FileImage.dart';
import 'package:flutter_widget_use/Elements/Media/Image/Image/Image.dart';
import 'package:flutter_widget_use/Elements/Media/Image/MemoryImage/MemoryImage.dart';
import 'package:flutter_widget_use/Elements/Media/Image/NetworkImage/NetworkImage.dart';
import 'package:flutter_widget_use/Elements/Media/Image/RawImage/RawImage.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyListView(
      title: "Image",
      content: ["AssetImage", "DecorationImage", "ExactAssetImage", "FadeInImage", "FileImage", "Image", "MemoryImage", "NetworkImage", "RawImage"],
      next: (index) {
        if (index == 1) {
          return MyDecorationImage();
        } else if (index == 2) {
          return MyExactAssetImage();
        } else if (index == 3) {
          return MyFadeInImage();
        } else if (index == 4) {
          return MyFileImage();
        } else if (index == 5) {
          return MyMyImage();
        } else if (index == 6) {
          return MyMemoryImage();
        } else if (index == 7) {
          return MyNetworkImage();
        } else if (index == 8) {
          return MyRawImage();
        }
        return MyAssetImage();
      },
    );
  }
}
