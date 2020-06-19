import 'package:flutter/material.dart';

void main() => runApp(StackPositionedMyApp());

class StackPositionedMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591162827039&di=9af7b7377002ec2c7cb303f31d306a3e&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F14%2F75%2F01300000164186121366756803686.jpg',
          ),
          radius: 100.0,
        ),
        new Positioned(
          top: 10.0,
          left: 20.0,
          child: Text('左上'),
        ),
        new Positioned(
          bottom: 10.0,
          right: 20.0,
          child: Text('右下'),
        ),
      ],
    );
    return MaterialApp(
      title: '层叠布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('层叠布局'),
          centerTitle: true,
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
