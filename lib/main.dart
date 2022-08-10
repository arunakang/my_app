import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
    return DefaultTabController(
        length: 3,
        initialIndex: 2,
        child: Scaffold(
          // extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: TabBar(
              tabs: [Tab(text: '인기'), Tab(text: '팔로잉'), Tab(text: '추천')],
            ),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.live_tv)),
            backgroundColor: Colors.transparent,
          ),
          body: TabBarView(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              children: [
                ListView(
                  children: [
                    Stack(
                        fit: StackFit.passthrough,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image.network(
                              'https://img8.yna.co.kr/photo/etc/af/2022/08/01/PAF20220801003601009_P2.jpg',
                              fit: BoxFit.fill),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text('@ArunaKang',
                                        style: TextStyle(color: Colors.white))),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('This is description.',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text('#CR7',
                                          style:
                                              TextStyle(color: Colors.white))),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text('#MANU',
                                          style:
                                              TextStyle(color: Colors.white))),
                                ],
                              )
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              children: [
                                // todo: add an image button
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite,
                                        color: Colors.white)),
                                IconButton(
                                    onPressed: () {},
                                    icon:
                                        Icon(Icons.chat, color: Colors.white)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.bookmark,
                                        color: Colors.white)),
                                IconButton(
                                    onPressed: () {},
                                    icon:
                                        Icon(Icons.reply, color: Colors.white))
                              ],
                            ),
                          )
                        ]),
                    Image.network(
                        'https://img8.yna.co.kr/photo/etc/af/2022/08/01/PAF20220801003601009_P2.jpg',
                        fit: BoxFit.fill),
                    Image.network(
                        'https://img8.yna.co.kr/photo/etc/af/2022/08/01/PAF20220801003601009_P2.jpg',
                        fit: BoxFit.fill),
                  ],
                ),
                ListView(
                  // Column is also a layout widget. It takes a list of children and
                  // arranges them vertically. By default, it sizes itself to fit its
                  // children horizontally, and tries to be as tall as its parent.
                  //
                  // Invoke "debug painting" (press "p" in the console, choose the
                  // "Toggle Debug Paint" action from the Flutter Inspector in Android
                  // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                  // to see the wireframe for each widget.
                  //
                  // Column has various properties to control how it sizes itself and
                  // how it positions its children. Here we use mainAxisAlignment to
                  // center the children vertically; the main axis here is the vertical
                  // axis because Columns are vertical (the cross axis would be
                  // horizontal).
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                        'https://img8.yna.co.kr/photo/etc/af/2022/08/01/PAF20220801003601009_P2.jpg'),
                    Image.network(
                        'https://img8.yna.co.kr/photo/etc/af/2022/08/01/PAF20220801003601009_P2.jpg'),
                    Image.network(
                        'https://img8.yna.co.kr/photo/etc/af/2022/08/01/PAF20220801003601009_P2.jpg'),
                  ],
                ),
                ListView(
                  // Column is also a layout widget. It takes a list of children and
                  // arranges them vertically. By default, it sizes itself to fit its
                  // children horizontally, and tries to be as tall as its parent.
                  //
                  // Invoke "debug painting" (press "p" in the console, choose the
                  // "Toggle Debug Paint" action from the Flutter Inspector in Android
                  // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                  // to see the wireframe for each widget.
                  //
                  // Column has various properties to control how it sizes itself and
                  // how it positions its children. Here we use mainAxisAlignment to
                  // center the children vertically; the main axis here is the vertical
                  // axis because Columns are vertical (the cross axis would be
                  // horizontal).
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                        'https://img8.yna.co.kr/photo/etc/af/2022/08/01/PAF20220801003601009_P2.jpg'),
                    Image.network(
                        'https://img8.yna.co.kr/photo/etc/af/2022/08/01/PAF20220801003601009_P2.jpg'),
                    Image.network(
                        'https://img8.yna.co.kr/photo/etc/af/2022/08/01/PAF20220801003601009_P2.jpg'),
                  ],
                ),
              ]),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: _incrementCounter,
          //   tooltip: 'Increment',
          //   child: const Icon(Icons.add),
          // ), // This trailing comma makes auto-formatting nicer for build methods.
          extendBody: true,
          bottomNavigationBar: NavigationBar(
            destinations: [
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      '홈',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.people_outline, color: Colors.white),
                    Text(
                      '친구',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.add_box_outlined, color: Colors.white)],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_alert_outlined, color: Colors.white),
                    Text('알림', style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.account_box_outlined, color: Colors.white),
                    Text('프로필', style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
          ),
        ));
  }
}
