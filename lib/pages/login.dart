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
                //继续嵌套使用Column组件来布局账号密码输入框、登录按钮、注册按钮这三个组件
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text('邮箱'),
                          color: Colors.brown,
                        ),
                        Container(
                          child: Text('密码'),
                          color: Colors.brown,
                        )
                      ],
                    ),
                    Container(
                      child: Text('登录按钮'),
                      color: Colors.brown,
                    ),
                    Container(
                      child: Text('注册提示'),
                      color: Colors.brown,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
