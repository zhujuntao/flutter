import 'package:flutter/material.dart';

/*
* var myList = List(): 非固定长度的声明。
  var myList = List(2): 固定长度的声明。
  var myList= List<String>():固定类型的声明方式。
  var myList = [1,2,3]: 对List直接赋值。
* */

void main() =>
    runApp(DynamicApp(items: new List<String>.generate(100, (i) => "item $i")));

class DynamicApp extends StatelessWidget {
  final List<String> items;

  /*
  *@required意思就必传
  * :super如果父类没有无名无参数的默认构造函数，则子类必须手动调用一个父类构造函数。
  *
  * */

  DynamicApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is a ListView widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is a ListView widget'),
          centerTitle: true,
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: Text('${items[index]}'),
            );
          },

        ),
      ),
    );
  }
}
