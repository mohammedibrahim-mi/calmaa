import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class timer extends StatefulWidget {
  @override
  _timerState createState() => _timerState();
}

class _timerState extends State<timer> {

   double percent = 0;
   static int Min = 1;
   int sec = Min * 60;
   Timer timer;
   _start(){
      Min=1;
      int Time = Min*60;
      double secpercent = (Time/100);
      timer =Timer.periodic(Duration(seconds: 1), (timer) {

        setState(() {

          if(Time> 0){
         Time--;
         if(Time % 60 == 0){
          Min--;
         }
         if(Time % sec ==0){

           if(percent<1){
             percent +=0.01;
           }
           else{
             percent=1;
           }
         }
          }
          else{
            percent=0;
            Min=1;
            timer.cancel();
           // hi();
          }
        });
      });
   }

   hi(){

   }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
        child: Expanded(
          child: Column(
            children: [
              SizedBox(height: 50,),
              CircularPercentIndicator(
                radius: 200,
                percent: percent,
                animation: true,
                animateFromLastPercent: true,
                lineWidth: 20,
                progressColor: Colors.blue,
                center: Text("$Min",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 58.0
                  ),),
              ),
              Container(
                child: RaisedButton(
                    onPressed: _start,
                    child: Text("Start")),
              )
            ],
          ),
        )
    );
  }


}
