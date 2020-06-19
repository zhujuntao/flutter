import 'package:flutter/material.dart';

void main() => runApp(MyGridViewApp());

class MyGridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is a GridView Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is a GridView Widget'),
          centerTitle: true,
        ),
        /*body: GridView.count(
          */ /*
          *  padding:表示内边距，这个小伙伴们应该很熟悉。
          *  crossAxisSpacing:网格间的空当，相当于每个网格之间的间距。
          *  crossAxisCount:网格的列数，相当于一行放置的网格数量。
          * */ /*
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 3,
          children: <Widget>[
            const Text('画画'),
            const Text('听音乐'),
            const Text('跑步'),
            const Text('游泳'),
            const Text('打篮球'),
            const Text('快跑'),
            const Text('骑车'),
          ],
        ),*/
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
            //childAspectRatio:宽高比，这个值的意思是宽是高的多少倍，如果宽是高的2倍，那我们就写2.0，如果高是宽的2倍，我们就写0.5。
            childAspectRatio: 0.7,
          ),
          children: <Widget>[
            new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover,),
            new Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),
          ],


        ),
      ),
    );
  }
}
