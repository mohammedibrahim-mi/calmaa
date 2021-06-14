import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter_sound/flutter_sound.dart';
import 'package:glassmorphism/glassmorphism.dart';
//import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:cool_calm/custom/Alert.dart';
import 'package:cool_calm/custom/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_timer.dart';

int initialMinutes = 24;
int initialSeconds = 60;
String time = '25:00';
var duration = const Duration(seconds: 1);
var watch = Stopwatch();
//FlutterSound flutterSound = new FlutterSound();

class ScreenTimer extends StatefulWidget {
  // final String titl;
  // final String descrip;
  //ScreenTimer(this.titl,this.descrip);
  @override
  ScreenTimerState createState() => ScreenTimerState();
}

class ScreenTimerState extends State<ScreenTimer> {
  final CustomTimerController _controller = new CustomTimerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Pomodoro Timer'),
      // ),
      body: _buildPomodoroTimer(),
    );
  }

  void _startStopwatch() {
    if (_isPlaying()) {
      watch.stop();

    } else {
      watch.start();
      _startTimer();
    }
  }

  void _restart() {
    watch.stop();
    watch.reset();
    setState(() {
      time = '25:00';
    });
  }

  bool _isPlaying() {
    return watch.isRunning;
  }

  Widget _buildPomodoroTimer() {
    return Stack(
      children: [
        Container(
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                color: AppColor.skyblue,
              ),
              Container(
                height: MediaQuery.of(context).size.height -150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [AppColor.pink,AppColor.violet,],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        //stops: [0.1,0.152,0.33,0.45,0.45,0.74,0.85]
                    )
                ),
                // ClipRRect(
                //   child: BackdropFilter(
                //       filter: ImageFilter.blur(
                //           sigmaX: 16.0,
                //           sigmaY: 16.0
                //       ),
                //       child: null
                //     // Center(
                //     //   child: Container(
                //     //     decoration: BoxDecoration(
                //     //         color: Colors.black.withOpacity(0.05),
                //     //         borderRadius: BorderRadius.all(Radius.circular(5.0)),
                //     //         boxShadow: [BoxShadow(
                //     //           color: Colors.white10,
                //     //           blurRadius: 5.0,
                //     //         ),]
                //     //     ),
                //     //     height: MediaQuery.of(context).size.height,
                //     //     width: MediaQuery.of(context).size.width,
                //     //     child:  ClipRRect(
                //     //       child: BackdropFilter(
                //     //         filter: ImageFilter.blur(
                //     //             sigmaX: 16.0,
                //     //             sigmaY: 16.0
                //     //         ),
                //     //         child: Padding(
                //     //           padding: const EdgeInsets.only(top: 150.0,bottom: 150.0,left: 45.0,right: 45.0),
                //     //           child: Container(
                //     //             decoration: BoxDecoration(
                //     //                 color: Colors.white.withOpacity(0.3),
                //     //                 borderRadius: BorderRadius.all(Radius.circular(25.0)),
                //     //                 boxShadow: [BoxShadow(
                //     //                   color: Colors.white10,
                //     //                   blurRadius: 5.0,
                //     //                 ),
                //     //                 ]
                //     //             ),
                //     //             child: Column(
                //     //               children: [
                //     //                 // Padding(
                //     //                 //   padding: const EdgeInsets.all(8.0),
                //     //                 //   child: Text("Cricket",
                //     //                 //   style: TextStyle(
                //     //                 //     fontFamily: 'Montserrat',
                //     //                 //     fontWeight: FontWeight.bold,
                //     //                 //     fontSize: 30.0
                //     //                 //
                //     //                 //   ),),
                //     //                 // ),
                //     //                 // SizedBox(height: 80,),
                //     //                 // Text("Play your game",
                //     //                 //   style: TextStyle(
                //     //                 //       fontFamily: 'Montserrat',
                //     //                 //       fontWeight: FontWeight.normal,
                //     //                 //       fontSize: 18.0
                //     //                 //
                //     //                 //   ),),
                //     //                 SizedBox(height: 40,),
                //     //                 // Text("Cric Camp",
                //     //                 //   style: TextStyle(
                //     //                 //       fontFamily: 'Montserrat',
                //     //                 //       fontWeight: FontWeight.normal,
                //     //                 //       fontSize: 14.0
                //     //                 //
                //     //                 //   ),),
                //     //                 SizedBox(height: 80,),
                //     //                 GestureDetector(
                //     //                   onTap: (){
                //     //                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => random()));
                //     //                   },
                //     //                   child:  Container(
                //     //                     height: 45,
                //     //                     width: MediaQuery.of(context).size.width - 220,
                //     //                     decoration: BoxDecoration(
                //     //                         color: Colors.white,
                //     //                         borderRadius: BorderRadius.circular(20.0),
                //     //                         boxShadow: [BoxShadow(
                //     //                           color: AppColor.skywhite,
                //     //                           blurRadius: 15.0,
                //     //                         ),]
                //     //                     ),
                //     //                     child: Center(
                //     //                       child: Text("Start",
                //     //                         style: TextStyle(
                //     //                             color: AppColor.violet,
                //     //                             fontFamily: 'Montserrat',
                //     //                             fontWeight: FontWeight.w800,
                //     //                             fontSize: 18.0
                //     //
                //     //                         ),),
                //     //                     ),
                //     //                   ),
                //     //                 )
                //     //
                //     //               ],
                //     //             ),
                //     //           ),
                //     //         ),
                //     //       ),
                //     //     ),
                //     //
                //     //   ),
                //     // ),
                //   ),
                // ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 40.0,),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: IconButton(icon: Icon(Icons.cancel), onPressed: (){
                            Navigator.of(context).pop();
                          }),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Text("Deep Breathe",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Row(
                      //     children: [
                      //       SizedBox(width: 60.0,),
                      //       // Text(Widget.titl,
                      //       //   style: TextStyle(
                      //       //     fontFamily: 'Montserrat',
                      //       //     color: Colors.black,
                      //       //     fontWeight: FontWeight.bold,
                      //       //     fontSize: 18.0,
                      //       //   ),),
                      //       Text("Deep Breathe",
                      //         style: TextStyle(
                      //           fontFamily: 'Montserrat',
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 18.0,
                      //         ),),
                      //       SizedBox(width: 10,),
                      //      /* GestureDetector(
                      //         onTap: (){
                      //           Custom1(context: context).showSuccessAlertDialog("Mediate", "Lengthens attention span,  May help fight addictions,Can decrease blood pressure");
                      //         },
                      //         child: Text("Benefits",
                      //           style: TextStyle(
                      //             fontFamily: 'Montserrat',
                      //             color: Colors.white,
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: 18.0,
                      //           ),),
                      //       ),*/
                      //     ],
                      //   ),
                      // ),
                      SizedBox(height: 20.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: CustomTimer(
                              controller: _controller,
                              from: Duration(minutes: 5),
                              to: Duration(minutes: 0),
                              interval: Duration(seconds: 1),
                              builder: (CustomTimerRemainingTime remaining) {
                                return Text(
                                  // "${remaining.hours}:${remaining.minutes}:${remaining.seconds}",
                                  "${remaining.minutes}:${remaining.seconds}",
                                  style: TextStyle(fontSize: 30.0),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 16.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 45,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [BoxShadow(
                                      color: AppColor.skywhite,
                                      blurRadius: 15.0,
                                    ),]
                                ),
                                child: FlatButton(
                                  child: Text("Start", style: TextStyle(color: Colors.black)),
                                  onPressed: () => _controller.start(),
                                 // color: Colors.green,
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [BoxShadow(
                                      color: AppColor.skywhite,
                                      blurRadius: 15.0,
                                    ),]
                                ),
                                child: FlatButton(
                                  child: Text("Pause", style: TextStyle(color: Colors.black)),
                                  onPressed: () => _controller.pause(),
                                  //color: Colors.blue,
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [BoxShadow(
                                      color: AppColor.skywhite,
                                      blurRadius: 15.0,
                                    ),]
                                ),
                                child: FlatButton(
                                    child: Text("Reset", style: TextStyle(color: Colors.black)),
                                    onPressed: () => _controller.reset(),
                                    //color: Colors.red
                                ),
                              ),
                            ],
                          )
                        ],
                      ),

                      // GlassmorphicContainer(
                      //   width: 150,
                      //   height: 100,
                      //   borderRadius: 20,
                      //   blur: 20,
                      //   alignment: Alignment.bottomCenter,
                      //   border: 2,
                      //   shape: BoxShape.circle,
                      //   linearGradient: LinearGradient(
                      //       begin: Alignment.topLeft,
                      //       end: Alignment.bottomRight,
                      //       colors: [
                      //         Color(0xFFffffff).withOpacity(0.1),
                      //         Color(0xFFFFFFFF).withOpacity(0.05),
                      //       ],
                      //       stops: [
                      //         0.1,
                      //         1,
                      //       ]),
                      //   borderGradient: LinearGradient(
                      //     begin: Alignment.topLeft,
                      //     end: Alignment.bottomRight,
                      //     colors: [
                      //       Color(0xFFffffff).withOpacity(0.5),
                      //       Color((0xFFFFFFFF)).withOpacity(0.5),
                      //     ],
                      //   ),
                      //   child:   Center(
                      //       child: stopwatch()
                      //     // Container(
                      //     //     // height: 100,
                      //     //     // width: 150,
                      //     //     decoration: BoxDecoration(
                      //     //      //   shape: BoxShape.circle,
                      //     //        // color: AppColor.pinkwhite
                      //     //     ),
                      //     //     // color: Colors.pink,
                      //     //     child: Center(child: stopwatch())),
                      //   ),
                      // ),
                      // Expanded(
                      //   flex: 1,
                      //   child: Icon(
                      //     IcoFontIcons.tomato,
                      //     size: 200.00,
                      //   ),
                      // ),
                      // Column(children: <Widget>[
                      //   SizedBox(height: 20.0,),
                      //   Container(
                      //     height: 45,
                      //     width: MediaQuery.of(context).size.width - 220,
                      //     decoration: BoxDecoration(
                      //         color: Colors.white,
                      //         borderRadius: BorderRadius.circular(20.0),
                      //         boxShadow: [BoxShadow(
                      //           color: AppColor.skywhite,
                      //           blurRadius: 15.0,
                      //         ),]
                      //     ),
                      //     child: IconButton(
                      //
                      //       icon: _isPlaying() ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                      //       onPressed: _startStopwatch,
                      //       iconSize: 35,
                      //     ),
                      //   ),
                      //   SizedBox(height: 20.0,),
                      //   Container(
                      //     height: 45,
                      //     width: MediaQuery.of(context).size.width - 220,
                      //     decoration: BoxDecoration(
                      //         color: Colors.white,
                      //         borderRadius: BorderRadius.circular(20.0),
                      //         boxShadow: [BoxShadow(
                      //           color: AppColor.skywhite,
                      //           blurRadius: 15.0,
                      //         ),]
                      //     ),
                      //     child: IconButton(
                      //
                      //       icon: Icon(Icons.refresh),
                      //       onPressed: _restart,
                      //       iconSize: 40,
                      //     ),
                      //   ),
                      // ], mainAxisAlignment: MainAxisAlignment.center),
                      SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Benefits :",
                            style: GoogleFonts.poppins(
                                color: AppColor.skywhite1,
                                fontSize: 18.0
                            ),),
                        ),
                      ),
                      SizedBox(height: 0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(" 1. Lower your stress\n 2. Connect better\n 3. Improve focus\n 4. Understanding your pain\n 5. Reduce brain chatter",
                            style: GoogleFonts.poppins(
                                color: AppColor.black1,
                                fontSize: 14.0
                            ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment(0,-0.8),
          child: Container(
            child: Image.asset('assets/3d.png',height: 250,width: 300,),
          ),
        )
      ],
    );
  }

  void _startTimer() {
    Timer(duration, _keepRunning);
  }

  void _keepRunning() {
    if (watch.isRunning) {
      _startTimer();
    }

    setState(() {
      int currentMinute = int.parse(watch.elapsed.inMinutes.toString());
      int currentSeconds = int.parse((watch.elapsed.inSeconds % 60).toString());
      int timerMinutes = initialMinutes - currentMinute;
      int timerSeconds = initialSeconds - currentSeconds;
      if (timerSeconds < 60 && timerSeconds >= 0) {
        time = timerMinutes.toString().padLeft(2, '0') +
            ':' +
            timerSeconds.toString().padLeft(2, '0');

        if (time == '00:00') {
        //  _playSong();
        }
      }
      if (timerMinutes < 0) {
        time = '00:00';
        watch.stop();
      }
    });
  }

  // void _playSong() async {
  //   await flutterSound.startPlayer(
  //       'https://incompetech.com/music/royalty-free/mp3-royaltyfree/Surf%20Shimmy.mp3');
  //   _setTimeoutForSong(10000);
  // }
  //
  // void _setTimeoutForSong([int milliseconds]) {
  //   const timeout = const Duration(seconds: 10);
  //   const ms = const Duration(milliseconds: 1);
  //   var duration = milliseconds == null ? timeout : ms * milliseconds;
  //   Timer(duration, _stopSong);
  // }

  // void _stopSong() {
  //   flutterSound.stopPlayer();
  // }
}

Widget stopwatch() {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    child: Text(
      time,
      style: TextStyle(fontSize: 50),
    ),
  );
}
