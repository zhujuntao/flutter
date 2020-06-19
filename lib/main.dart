/*
import 'package:flutter/material.dart';
*/
/*
* void main(){
* runApp(MyApp());
* }
* */ /*

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{

 @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('welcome to flutter learn'),
        ),
        body:Center(
          child: Text('hello to world'),
        ),
      ),

    );
  }
}

*/

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      //窗口的主体
      home: Scaffold(
        body: Center(
          /*child: Text(
            'Hello Widget ，text控件练习，text的TextAlign基本属性，center,left,start,end,right等使用demo',
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,//显示省略。。。  ，fade 渐变
            style: TextStyle(
              fontSize: 26.0,
              color: Color.fromARGB(255, 255, 125, 125),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,

            ),
          ),*/

          child: Container(
            child: new Text("Container控件", style: TextStyle(fontSize: 40.0)),
            alignment: Alignment.topLeft,
            // center 居中对齐  ，bottomcenter  bottomleft  centerleft  topleft
            width: 500.0,
            height: 400.0,
            //color: Colors.lightBlue,
            padding: const EdgeInsets.fromLTRB(10.0, 100.0, 0.0, 0.0),
            //all 所有   LTRB分别代表左、上、右、下。
            margin: const EdgeInsets.all(10.0),
            //decoration是container 的修饰器，主要的功能是设置背景和边框。
            decoration: new BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Colors.lightBlue,
                  Colors.greenAccent,
                  Colors.purple
                ]),
                border: Border.all(width: 5.0, color:Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
