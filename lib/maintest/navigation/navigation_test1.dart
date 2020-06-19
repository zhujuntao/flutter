import 'package:flutter/material.dart';

void main() => runApp(NavigationMyAppOne());

class NavigationMyAppOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '导航演示01',
      home: new FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面'),
      ),
      body: Center(
        child: RaisedButton(
          //child：可以放入容器，图标，文字。让你构建多彩的按钮。
          //onPressed：点击事件的相应，一般会调用Navigator组件。

          child: Text('查看商品详情页'),
          onPressed: () {
            //Navigator.push：是跳转到下一个页面，它要接受两个参数一个是上下文context，另一个是要跳转的函数。
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new SecondScreen()));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mac 商品详情页展示'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('返回上级'),
          onPressed: () {
            Navigator.pop(context);
//            Navigator.push(context,MaterialPageRoute(
//              builder: (context)=>new SecondScreen()
//            ));
          },

        ),
      ),
    );
  }
}
