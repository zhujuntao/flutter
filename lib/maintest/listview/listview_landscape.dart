import 'package:flutter/material.dart';

void main() => runApp(LandscapeListView());

class LandscapeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is a LandscapeListView',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text(
            'this is a LandscapeListView',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.amber,
              fontSize: 24.0,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 200.0,
            /*child: new ListView(
              */ /*
              * ListView组件的scrollDirection属性只有两个值，一个是横向滚动，一个是纵向滚动。
              * 默认的就是垂直滚动，所以如果是垂直滚动，我们一般都不进行设置。
              * Axis.horizontal:横向滚动或者叫水平方向滚动。
              * Axis.vertical:纵向滚动或者叫垂直方向滚动。
              * */ /*
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Container(
                  width: 180.0,
                  color: Colors.lightBlue,
                  child: new Text('this is lightBlue'),
                ),
                new Container(
                  width: 180.0,
                  color: Colors.amber,
                  child: new Text('this is amber'),
                ),
                new Container(
                  width: 180.0,
                  color: Colors.greenAccent,
                  child: new Text('this is greenAccent'),
                ),
                new Container(
                  width: 180.0,
                  color: Colors.purple,
                  child: new Text('this is purple'),
                ),
              ],
            ),*/
            child: MyHorizontalListView(),
          ),
        ),
      ),
    );
  }
}

class MyHorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          alignment: Alignment.center,
          width: 180.0,
          color: Colors.lightBlue,
          child: Text(
            'lightBlue',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36.0,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.double,
            ),
          ),
        ),
        new Container(
          alignment: Alignment.center,
          width: 180.0,
          color: Colors.purple,
          child: Text(
            'purple',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36.0,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.double,
            ),
          ),
        ),
        new Container(
          alignment: Alignment.center,
          width: 180.0,
          color: Colors.greenAccent,
          child: Text(
            'greenAccent',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36.0,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.double,
            ),
          ),
        ),
        new Container(
          alignment: Alignment.center,
          width: 180.0,
          color: Colors.amber,
          child: Text(
            'amber',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36.0,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.double,
            ),
          ),
        ),
      ],
    );
  }
}
