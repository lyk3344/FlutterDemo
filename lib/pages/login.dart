import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold实现了基本的Material Design布局
    //只要是在Material Design中定义过的单个界面显示的布局的组件元素，都可以使用Scaffold来绘制
    return Scaffold(
      //body：当前界面所显示的主要内容
      body: Center(
        //利用Column组件将登录页面一分为二
        child: Column(
          children: <Widget>[
            //利用 Expanded组件让两个子组件都能占满整个屏幕
            Expanded(
                child: Container(
              color: Colors.blue,
              child: Center(
                child: Text('top'),
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.red,
              child: Center(
                child: Text('bottom'),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
