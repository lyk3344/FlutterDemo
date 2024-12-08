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
                //FractionallySizedBox组件能够按照百分比来布局组件
                //通过传入widthFactor和heightFactor参数，可以让Image组件按照父容器的大小来布局
                child: FractionallySizedBox(
                  child: Image.asset('assets/images/mark.png'),
                  widthFactor: 0.8,
                  heightFactor: 0.8,
                ),
              ),
            ),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 24, right: 24, bottom: 12),
                      child: Column(
                        children: <Widget>[
                          //将文本框替换为TextField,并增加装饰器，补充上作为提示的hintText
                          TextField(
                            decoration: InputDecoration(
                              hintText: '请输入邮箱',
                              labelText: '邮箱',
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: '请输入六位以上的密码',
                              labelText: '密码',
                            ),
                            //将这个输入框的输入内容设置为不展示
                            obscureText: true,
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
