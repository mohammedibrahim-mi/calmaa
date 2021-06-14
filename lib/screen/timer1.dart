// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_sound/flutter_sound.dart';
// import 'package:glassmorphism/glassmorphism.dart';
// import 'package:icofont_flutter/icofont_flutter.dart';
// import 'package:cool_calm/custom/Alert.dart';
// import 'package:cool_calm/custom/color.dart';
//
// int initialMinutes = 24;
// int initialSeconds = 60;
// String time = '25:00';
// var duration = const Duration(seconds: 1);
// var watch = Stopwatch();
// FlutterSound flutterSound = new FlutterSound();
//
// class PomodoroTimer extends StatefulWidget {
//   @override
//   PomodoroTimerState createState() => PomodoroTimerState();
// }
//
// class PomodoroTimerState extends State<PomodoroTimer> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pomodoro Timer'),
//       ),
//       body: _buildPomodoroTimer(),
//     );
//   }
//
//   void _startStopwatch() {
//     if (_isPlaying()) {
//       watch.stop();
//
//     } else {
//       watch.start();
//       _startTimer();
//     }
//   }
//
//   void _restart() {
//     watch.stop();
//     watch.reset();
//     setState(() {
//       time = '25:00';
//     });
//   }
//
//   bool _isPlaying() {
//     return watch.isRunning;
//   }
//
//   Widget _buildPomodoroTimer() {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//           gradient: new LinearGradient(
//               colors: [AppColor.pink,AppColor.violet,AppColor.pink1,AppColor.pink2,AppColor.skyblue,AppColor.violet,AppColor.pink2],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               stops: [0.1,0.152,0.33,0.45,0.45,0.74,0.85]
//           )
//       ),
//       // ClipRRect(
//       //   child: BackdropFilter(
//       //       filter: ImageFilter.blur(
//       //           sigmaX: 16.0,
//       //           sigmaY: 16.0
//       //       ),
//       //       child: null
//       //     // Center(
//       //     //   child: Container(
//       //     //     decoration: BoxDecoration(
//       //     //         color: Colors.black.withOpacity(0.05),
//       //     //         borderRadius: BorderRadius.all(Radius.circular(5.0)),
//       //     //         boxShadow: [BoxShadow(
//       //     //           color: Colors.white10,
//       //     //           blurRadius: 5.0,
//       //     //         ),]
//       //     //     ),
//       //     //     height: MediaQuery.of(context).size.height,
//       //     //     width: MediaQuery.of(context).size.width,
//       //     //     child:  ClipRRect(
//       //     //       child: BackdropFilter(
//       //     //         filter: ImageFilter.blur(
//       //     //             sigmaX: 16.0,
//       //     //             sigmaY: 16.0
//       //     //         ),
//       //     //         child: Padding(
//       //     //           padding: const EdgeInsets.only(top: 150.0,bottom: 150.0,left: 45.0,right: 45.0),
//       //     //           child: Container(
//       //     //             decoration: BoxDecoration(
//       //     //                 color: Colors.white.withOpacity(0.3),
//       //     //                 borderRadius: BorderRadius.all(Radius.circular(25.0)),
//       //     //                 boxShadow: [BoxShadow(
//       //     //                   color: Colors.white10,
//       //     //                   blurRadius: 5.0,
//       //     //                 ),
//       //     //                 ]
//       //     //             ),
//       //     //             child: Column(
//       //     //               children: [
//       //     //                 // Padding(
//       //     //                 //   padding: const EdgeInsets.all(8.0),
//       //     //                 //   child: Text("Cricket",
//       //     //                 //   style: TextStyle(
//       //     //                 //     fontFamily: 'Montserrat',
//       //     //                 //     fontWeight: FontWeight.bold,
//       //     //                 //     fontSize: 30.0
//       //     //                 //
//       //     //                 //   ),),
//       //     //                 // ),
//       //     //                 // SizedBox(height: 80,),
//       //     //                 // Text("Play your game",
//       //     //                 //   style: TextStyle(
//       //     //                 //       fontFamily: 'Montserrat',
//       //     //                 //       fontWeight: FontWeight.normal,
//       //     //                 //       fontSize: 18.0
//       //     //                 //
//       //     //                 //   ),),
//       //     //                 SizedBox(height: 40,),
//       //     //                 // Text("Cric Camp",
//       //     //                 //   style: TextStyle(
//       //     //                 //       fontFamily: 'Montserrat',
//       //     //                 //       fontWeight: FontWeight.normal,
//       //     //                 //       fontSize: 14.0
//       //     //                 //
//       //     //                 //   ),),
//       //     //                 SizedBox(height: 80,),
//       //     //                 GestureDetector(
//       //     //                   onTap: (){
//       //     //                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => random()));
//       //     //                   },
//       //     //                   child:  Container(
//       //     //                     height: 45,
//       //     //                     width: MediaQuery.of(context).size.width - 220,
//       //     //                     decoration: BoxDecoration(
//       //     //                         color: Colors.white,
//       //     //                         borderRadius: BorderRadius.circular(20.0),
//       //     //                         boxShadow: [BoxShadow(
//       //     //                           color: AppColor.skywhite,
//       //     //                           blurRadius: 15.0,
//       //     //                         ),]
//       //     //                     ),
//       //     //                     child: Center(
//       //     //                       child: Text("Start",
//       //     //                         style: TextStyle(
//       //     //                             color: AppColor.violet,
//       //     //                             fontFamily: 'Montserrat',
//       //     //                             fontWeight: FontWeight.w800,
//       //     //                             fontSize: 18.0
//       //     //
//       //     //                         ),),
//       //     //                     ),
//       //     //                   ),
//       //     //                 )
//       //     //
//       //     //               ],
//       //     //             ),
//       //     //           ),
//       //     //         ),
//       //     //       ),
//       //     //     ),
//       //     //
//       //     //   ),
//       //     // ),
//       //   ),
//       // ),
//       child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Text("Mediate atlest 25Minutes",
//                         style: TextStyle(
//                           fontFamily: 'Montserrat',
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18.0,
//                         ),),
//                       SizedBox(width: 10,),
//                       GestureDetector(
//                         onTap: (){
//                           Custom1(context: context).showSuccessAlertDialog("Mediate", "Lengthens attention span,  May help fight addictions,Can decrease blood pressure");
//                         },
//                         child: Text("Benefits",
//                           style: TextStyle(
//                             fontFamily: 'Montserrat',
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18.0,
//                           ),),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20.0,),
//                 GlassmorphicContainer(
//                     width: 150,
//                     height: 100,
//                     borderRadius: 20,
//                     blur: 20,
//                     alignment: Alignment.bottomCenter,
//                     border: 2,
//                     shape: BoxShape.circle,
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
//                     child:   Center(
//                       child: stopwatch()
//                       // Container(
//                       //     // height: 100,
//                       //     // width: 150,
//                       //     decoration: BoxDecoration(
//                       //      //   shape: BoxShape.circle,
//                       //        // color: AppColor.pinkwhite
//                       //     ),
//                       //     // color: Colors.pink,
//                       //     child: Center(child: stopwatch())),
//                     ),
//                 ),
//                 // Expanded(
//                 //   flex: 1,
//                 //   child: Icon(
//                 //     IcoFontIcons.tomato,
//                 //     size: 200.00,
//                 //   ),
//                 // ),
//                 Column(children: <Widget>[
//                   SizedBox(height: 20.0,),
//                   Container(
//                     height: 45,
//                     width: MediaQuery.of(context).size.width - 220,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20.0),
//                         boxShadow: [BoxShadow(
//                           color: AppColor.skywhite,
//                           blurRadius: 15.0,
//                         ),]
//                     ),
//                     child: IconButton(
//
//                       icon: _isPlaying() ? Icon(Icons.pause) : Icon(Icons.play_arrow),
//                       onPressed: _startStopwatch,
//                       iconSize: 35,
//                     ),
//                   ),
//                   SizedBox(height: 20.0,),
//                   Container(
//                     height: 45,
//                           width: MediaQuery.of(context).size.width - 220,
//                          decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20.0),
//                          boxShadow: [BoxShadow(
//                            color: AppColor.skywhite,
//                             blurRadius: 15.0,
//                         ),]
//                                       ),
//                     child: IconButton(
//
//                       icon: Icon(Icons.refresh),
//                       onPressed: _restart,
//                       iconSize: 40,
//                     ),
//                   ),
//                 ], mainAxisAlignment: MainAxisAlignment.center),
//               ],
//             ),
//           )),
//     );
//   }
//
//   void _startTimer() {
//     Timer(duration, _keepRunning);
//   }
//
//   void _keepRunning() {
//     if (watch.isRunning) {
//       _startTimer();
//     }
//
//     setState(() {
//       int currentMinute = int.parse(watch.elapsed.inMinutes.toString());
//       int currentSeconds = int.parse((watch.elapsed.inSeconds % 60).toString());
//       int timerMinutes = initialMinutes - currentMinute;
//       int timerSeconds = initialSeconds - currentSeconds;
//
//       if (timerSeconds < 60 && timerSeconds >= 0) {
//         time = timerMinutes.toString().padLeft(2, '0') +
//             ':' +
//             timerSeconds.toString().padLeft(2, '0');
//
//         if (time == '00:00') {
//           _playSong();
//         }
//       }
//       if (timerMinutes < 0) {
//         time = '00:00';
//         watch.stop();
//       }
//     });
//   }
//
//   void _playSong() async {
//     await flutterSound.startPlayer(
//         'https://incompetech.com/music/royalty-free/mp3-royaltyfree/Surf%20Shimmy.mp3');
//     _setTimeoutForSong(10000);
//   }
//
//   void _setTimeoutForSong([int milliseconds]) {
//     const timeout = const Duration(seconds: 10);
//     const ms = const Duration(milliseconds: 1);
//     var duration = milliseconds == null ? timeout : ms * milliseconds;
//     Timer(duration, _stopSong);
//   }
//
//   void _stopSong() {
//     flutterSound.stopPlayer();
//   }
// }
//
// Widget stopwatch() {
//   return Container(
//     margin: EdgeInsets.only(top: 10.0),
//     child: Text(
//       time,
//       style: TextStyle(fontSize: 50),
//     ),
//   );
// }
