import 'package:flutter/material.dart';

void main() => runApp(CardWidgetMyApp());

class CardWidgetMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          new ListTile(
            title: new Text(
              '昌平区昌平街道',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 24.0,
              ),
            ),
            subtitle: new Text('张三：13166668888'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.blueAccent,
            ),
          ),
          new Divider(
            color: Colors.purple,
          ),
          new ListTile(
            title: new Text(
              '海淀区海淀街道',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.w500,
                fontSize: 24.0,
              ),
            ),
            subtitle: new Text(
              '李四：135777799999',
            ),
            leading: new Icon(
              Icons.account_box,
              color: Colors.blueAccent,
            ),
          ),
          new Divider(
            color: Colors.purple,
          ),
          new ListTile(
            title: new Text(
              '朝阳区海淀街道',
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.w500,
                fontSize: 24.0,
              ),
            ),
            subtitle: new Text(
              '王二：135777799999',
            ),
            leading: new Icon(
              Icons.account_box,
              color: Colors.blueAccent,
            ),
          ),
          new Divider()
        ],
      ),
    );

    return MaterialApp(
      title: 'this is a CardWidgetMyApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('卡片布局'),
          centerTitle: true,
        ),
        body: Center(
          child: card,
        ),
      ),
    );
  }
}
