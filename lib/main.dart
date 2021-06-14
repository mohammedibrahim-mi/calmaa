import 'package:cool_calm/screen/splash.dart';
import 'package:cool_calm/screen/welcome.dart';
import 'package:cool_calm/screen/welcome1.dart';
import 'package:flutter/material.dart';
import 'package:cool_calm/screen/timer1.dart';
import 'package:cool_calm/screen/welcome.dart';
// import 'package:cool_calm/timer.dart';
// import 'package:cool_calm/timer1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:glassmorphism/glassmorphism.dart';
// import 'dart:ui';
//
// import 'custom/color.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'GlassmorphicContainer Example',
//       home: GlassmorphicSample(),
//     );
//   }
// }
//
// class GlassmorphicSample extends StatefulWidget {
//   @override
//   State<GlassmorphicSample> createState() => GlassmorphicSampleState();
// }
//
// class GlassmorphicSampleState extends State<GlassmorphicSample> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: Stack(
//           children: [
//             // Image.network(
//             //   "https://github.com/RitickSaha/glassmophism/blob/master/example/assets/bg.png?raw=true",
//             //   fit: BoxFit.cover,
//             //   height: double.infinity,
//             //   width: double.infinity,
//             //   scale: 1,
//             // ),
//             Container(
//               height: double.infinity,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 gradient: new LinearGradient(
//                     colors: [AppColor.violet,AppColor.skywhite],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     stops: [0.1,0.50]
//                 ),
//               //  borderRadius: BorderRadius.all(Radius.circular(25.0)),
//               ),
//               //   color: Colors.red,
//             ),
//             // Image.asset('assets/med1.jpg',fit: BoxFit.cover,
//             // height: double.infinity,
//             // width: double.infinity,),
//             SafeArea(
//               child: Center(
//                 child: GlassmorphicContainer(
//                     width: 350,
//                     height: 350,
//                     borderRadius: 20,
//                     blur: 20,
//                     alignment: Alignment.bottomCenter,
//                     border: 2,
//                     linearGradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                         colors: [
//                           Color(0xFFffffff).withOpacity(0.1),
//                           Color(0xFFFFFFFF).withOpacity(0.05),
//                         ],
//                         stops: [
//                           0.1,
//                           1,
//                         ]),
//                     borderGradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: [
//                         Color(0xFFffffff).withOpacity(0.5),
//                         Color((0xFFFFFFFF)).withOpacity(0.5),
//                       ],
//                     ),
//                     child: null),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }