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
                  //CrossAxisAlignment取stretch时，Column才会尽可能地占据父组件提供的最大宽度
                  //并且要求其所有子组件的宽度也要与自身的宽度相一致
                  //对于其它属性值，Column会首先要求子组件按照不超过父组件提供的最大宽度进行布局，
                  //然后自身宽度则由宽度最大的子组件决定
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    //Column布局的输入框文本组件是居中对齐的
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, bottom: 12),
                      child: Column(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, top: 12, bottom: 12),
                      child: Container(
                        child: Text('登录按钮'),
                        color: Colors.brown,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, top: 12, bottom: 12),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('没有账号？'),
                            Text('立即注册'),
                          ],
                        ),
                        color: Colors.brown,
                      ),
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
