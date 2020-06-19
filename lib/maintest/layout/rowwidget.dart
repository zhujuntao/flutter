import 'package:flutter/material.dart';

void main() => runApp(RowWedgetApp());


class RowWedgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is a  RowWedget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('水平方向布局'),
          centerTitle: true,
        ),
        body: new Row(
          children: <Widget>[
            /* Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.greenAccent,
                child: Text('绿色按钮'),
              ),
            ),
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.blueAccent,
                child: Text('蓝色按钮'),
              ),
            ),
            //Expanded   可以布满一行
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.redAccent,
                child: Text('红色按钮'),
              ),
            ),
            */
            new RaisedButton(
              onPressed: () {},
              color: Colors.greenAccent,
              child: Text('绿色按钮'),
            ),

            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.blueAccent,
                child: Text('蓝色按钮'),
              ),
            ),
            //Expanded   可以布满一行
            new RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('红色按钮'),
            ),
          ],
        ),
      ),
    );
  }
}
