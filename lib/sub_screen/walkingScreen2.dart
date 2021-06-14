import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter_sound/flutter_sound.dart';
import 'package:glassmorphism/glassmorphism.dart';
//import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:cool_calm/custom/Alert.dart';
import 'package:cool_calm/custom/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_timer.dart';


class ScreenTimer2 extends StatefulWidget {
  @override
  ScreenTimer2State createState() => ScreenTimer2State();
}

class ScreenTimer2State extends State<ScreenTimer2> {
  final CustomTimerController _controller = new CustomTimerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _buildPomodoroTimer(),
    );
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
                      Text("Muscle Relaxation",
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
                      //       Text("Muscle Relaxation",
                      //         style: TextStyle(
                      //           fontFamily: 'Montserrat',
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.bold,
                      //           fontSize: 18.0,
                      //         ),),
                      //       SizedBox(width: 10,),
                      //       // GestureDetector(
                      //       //   onTap: (){
                      //       //     Custom1(context: context).showSuccessAlertDialog("Mediate", "Lengthens attention span,  May help fight addictions,Can decrease blood pressure");
                      //       //   },
                      //       //   child: Text("Benefits",
                      //       //     style: TextStyle(
                      //       //       fontFamily: 'Montserrat',
                      //       //       color: Colors.white,
                      //       //       fontWeight: FontWeight.bold,
                      //       //       fontSize: 18.0,
                      //       //     ),),
                      //       // ),
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
                              from: Duration(minutes: 15),
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
                      SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Steps:",
                            style: GoogleFonts.poppins(
                                color: AppColor.skywhite1,
                                fontSize: 22.0
                            ),),
                        ),
                      ),
                      SizedBox(height: 10.0,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(" Choose any one exercise \n  1. biking \n 2. brisk walking \n 3. jogging \n 4. doing water \n 5. aerobicsplaying tennis \n 6. racquetball \n 7. dancingrowing \n 8. swimming",
                            style: GoogleFonts.poppins(
                                color: AppColor.black1,
                                fontSize: 16.0
                            ),),
                        ),
                      ),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Progressive muscle relaxation is best performed in a quiet, secluded place. You should be comfortably seated or stretched out on a firm mattress or mat. Until you learn the routine, have a friend recite the directions or listen to them on a tape, which you can prerecord yourself.\nProgressive muscle relaxation focuses sequentially on the major muscle groups. Tighten each muscle and maintain the contraction 20 seconds before slowly releasing it. As the muscle relaxes, concentrate on the release of tension and the sensation of relaxation. Start with your facial muscles, then work down the body.",
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

}

