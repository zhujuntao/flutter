import 'package:flutter/material.dart';

void main() => runApp(ColumnMyApp());

class ColumnMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is a Column layout',
      home: Scaffold(
        appBar: AppBar(
          title: Text('垂直方向布局'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            /*
            *  CrossAxisAlignment.star：   居左对齐。
            *  CrossAxisAlignment.end：    居右对齐。
            *  CrossAxisAlignment.center： 居中对齐。
            * */
            crossAxisAlignment: CrossAxisAlignment.center,

            /*在设置对齐方式的时候你会发现右mainAxisAlignment属性，意思就是主轴对齐方式，那什么是主轴，什么又是幅轴那。

              main轴：如果你用column组件，那垂直就是主轴，如果你用Row组件，那水平就是主轴。

              cross轴：cross轴我们称为幅轴，是和主轴垂直的方向。比如Row组件，那垂直就是幅轴，Column组件的幅轴就是水平方向的。*/

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('I am JSPan'),
              //灵活布局
              Expanded(
                child: Text('my website is jspang.com'),
              ),
              Text('I love coding'),
            ],
          ),
        ),
      ),
    );
  }
}
