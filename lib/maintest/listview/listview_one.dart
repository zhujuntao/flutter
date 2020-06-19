import 'package:flutter/material.dart';

void main() => runApp(ListTestApp());

class ListTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is  a listview ',
      home: Scaffold(
        /*appBar: new AppBar(
          title: new Text('this is  a listview '),
        ),*/
        appBar: AppBar(
          title: Text(
            'this is  a listview',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 24.0,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed),
          ),
          backgroundColor: Color.fromARGB(255, 255, 125, 125),
        ),
//        body: new Text('listview text'),
        body: new ListView(
          children: <Widget>[
            /*
            * 在他的内部children中，使用了widget数组，因为是一个列表，所以它接受一个数组，
            * 然后有使用了listTite组件（列表瓦片），在组件中放置了图标和文字。
            * */
//            添加列表文字
//            new ListTile(
//              leading: new Icon(Icons.perm_data_setting),
//              title: new Text('perm_data_setting'),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.access_time),
//              title: new Text('access_time'),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.account_balance),
//              title: new Text('account_balance'),
//            )

            new ListTile(
                leading: new Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591162769326&di=7772989e38d8c9f8ec3b04d077f488c7&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F14%2F75%2F01300000164186121366756803686.jpg',
                  width: 300.0,
                  height: 200.0,
                  repeat: ImageRepeat.noRepeat,
                  fit: BoxFit.cover,
                  
                ),

                title: new Text('网络图片')),

            new Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591162769326&di=7772989e38d8c9f8ec3b04d077f488c7&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F14%2F75%2F01300000164186121366756803686.jpg',
              width: 300.0,
              height: 200.0,
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.cover,
            ),
            new Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591162769326&di=8f135fe848319009a140bca8c96c932e&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F64%2F76%2F20300001349415131407760417677.jpg'),
            new Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591162769326&di=e0ed612b2e026f8d21c5ce179da4ee09&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F36%2F48%2F19300001357258133412489354717.jpg'),
            new Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591162769325&di=6d9488de9599256595edeb741857cff1&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F56%2F12%2F01300000164151121576126282411.jpg'),
          ],
        ),
      ),
    );
  }
}
