import 'package:flutter/material.dart';

void main() => runApp(ImageApp());

class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is a ImageDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is a ImageDemo'),
        ),
        body: Center(
          child: Container(
            child: new Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591162827039&di=9af7b7377002ec2c7cb303f31d306a3e&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F14%2F75%2F01300000164186121366756803686.jpg',
              /*
              *BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。

               BoxFit.contain:全图显示，显示原比例，可能会有空隙。

               BoxFit.cover：显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）。

               BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸，可能裁切。

               BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉伸，可能裁切。

               BoxFit.scaleDown：效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。
              * */

              //fit: BoxFit.cover,//contain 保持

              /* color：是要混合的颜色，如果你只设置color是没有意义的。
              colorBlendMode:是混合模式，相当于我们如何混合。*/

              //color: Colors.greenAccent,
              //colorBlendMode: BlendMode.modulate,//模式有很多种

             /* ImageRepeat.repeat : 横向和纵向都进行重复，直到铺满整个画布。
                ImageRepeat.repeatX: 横向重复，纵向不重复。
                ImageRepeat.repeatY：纵向重复，横向不重复。*/
              repeat: ImageRepeat.repeatX,


            ),
            width: 300.0,
            height: 200.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
