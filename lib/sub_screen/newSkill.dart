import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter_sound/flutter_sound.dart';
import 'package:glassmorphism/glassmorphism.dart';
//import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:cool_calm/custom/Alert.dart';
import 'package:cool_calm/custom/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_timer.dart';


class ScreenTimer4 extends StatefulWidget {
  @override
  ScreenTimer4State createState() => ScreenTimer4State();
}

class ScreenTimer4State extends State<ScreenTimer4> {
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(width: 60.0,),
                            Text("Exercise",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: (){
                                Custom1(context: context).showSuccessAlertDialog("Mediate", "Lengthens attention span,  May help fight addictions,Can decrease blood pressure");
                              },
                              child: Text("Benefits",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),),
                            ),
                          ],
                        ),
                      ),
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
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Details:",
                            style: GoogleFonts.poppins(
                                color: AppColor.black1,
                                fontSize: 18.0
                            )),
                      ),
                      SizedBox(height: 10.0,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(" Learning new skills helps in your professional life a lot. It helps you to achieve your goals, gives confidence, and gives you motivation for working too. Practicing your existing skills and makes you professional in your work-place. ",
                            style: GoogleFonts.poppins(
                                color: AppColor.skywhite1,
                                fontSize: 18.0
                            )),
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

