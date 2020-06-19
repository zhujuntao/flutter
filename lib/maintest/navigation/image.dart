import 'package:flutter/material.dart';

void main() => runApp(ImageMyapp());

class ImageMyapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '图片显示',
      home: Scaffold(
        appBar: AppBar(
          title: Text('图片显示'),
        ),
        body: Center(
        child: Image.asset('images/ad_page_logo.png'),
        ),
      ),
    );
  }
}
