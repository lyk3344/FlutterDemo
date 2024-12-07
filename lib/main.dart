import 'package:flutter/material.dart'; //Material Design设计风格的基础包，里面有Text,Icon，Image,Row,Column,Decoration(装饰器)，动画组件等，可以理解为网页中的按钮、标题、选项框等组件库
import 'package:test1/pages/login.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  //为了在整个应用中使用同一套颜色和字体样式，可以使用“主题”这种方式
  //定义一个主题后，就可以在我们自己的Widget中使用它，Flutter提供的Material Widgets将使主题为AppBars、Buttons、Checkboxes等设置背景颜色和字体样式
  //创建主题的方法是将ThemeData提供给MaterialApp构造函数，这样就可以在整个应用程序中共享包含颜色和字体样式的主题。
  //如果没有提供主题，Flutter将创建一个默认主题
  @override
  Widget build(BuildContext context) {
    final appName = '自定义主题';

    //使用Material设计风格的应用，里面包含了其所需要的基本控件
    //一个完整的Flutter项目就是从MaterialApp这个主组件开始的
    return MaterialApp(
      title: appName,
      //如果我们想在应用程序的某一部分使用特殊的颜色，那么就需要覆盖全局的主题
      //有两种方法：创建特有的主题数据或扩展父主题
      //主题配置
      theme: ThemeData(
        //应用程序整体主题的亮度
        brightness: Brightness.light,
        //App主要部分的背景色
        primaryColor: Colors.lightGreen[600],
        //前景色（文本、按钮等）
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
