import 'package:flutter/material.dart';

class NetworkImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text('Image.network的使用'),
        ),
        Image.network(
            'https://gw.alicdn.com/tfs/TB1XD.ZuYwrBKNjSZPcXXXpapXa-255-251.png'),
        Container(
          child: Text('NetworkImage的使用,带有0.5倍缩放'),
          margin: const EdgeInsets.symmetric(vertical: 20.0),
        ),
        Image(
          image: NetworkImage(
              'https://gw.alicdn.com/tfs/TB1XD.ZuYwrBKNjSZPcXXXpapXa-255-251.png',
              scale: 0.5),
        )
      ],
    );
  }
}