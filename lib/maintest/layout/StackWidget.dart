import 'package:flutter/material.dart';

void main() => runApp(StackWidgetMyApp());

class StackWidgetMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      //alignment属性是控制层叠的位置的，建议在两个内容进行层叠时使用。它有两个值X轴距离和Y轴距离，
      // 值是从0到1的，都是从上层容器的左上角开始算起的。
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        /*
          CircleAvatar这个经常用来作头像的，组件里边有个radius的值可以设置图片的弧度。

          现在我们准备放入一个图像，然后把弧度设置成100，形成一个漂亮的圆形
        * */
        new CircleAvatar(
          backgroundImage: new NetworkImage(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591162827039&di=9af7b7377002ec2c7cb303f31d306a3e&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F14%2F75%2F01300000164186121366756803686.jpg',
          ),
          radius: 100.0,
        ),
        new Container(
          padding: const EdgeInsets.all(5.0),
          decoration: new BoxDecoration(
            color: Colors.blueAccent,
          ),
          child: Text('这是层叠布局'),
        )
      ],
    );
    return MaterialApp(
      title: 'this is a StackWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack 层叠布局'),
          centerTitle: true,
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
