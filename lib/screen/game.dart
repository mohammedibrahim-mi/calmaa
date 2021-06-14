import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:cool_calm/custom/color.dart';
import 'package:cool_calm/model/model1.dart';
import 'package:cool_calm/screen/game_final.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_launch/flutter_launch.dart';
//import 'package:url_launcher/url_launcher.dart';

class game extends StatefulWidget {
  final String Total;
  final player Player;
  game(this.Total,this.Player);

  @override _gameState createState() => _gameState();
}

class _gameState extends State<game> {

  String imageToShow;


  static var listImagesnotFound = [
    "assets/red.jpeg",
    "assets/blue.jpeg",
    "assets/yellow.jpeg",
    // "assets/notfound.png",
    // "assets/robno.png",
    // "assets/spano.jpg"
  ];

  // static var listText = [
  //   "0","2","6","3","4","Nb+1","Wd+1","1"
  // ];
  static var listText = [
    "20","27","60","53","44","68","12","33","24","36"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

//imageToShow = listImagesnotFound [_random.nextInt(listImagesnotFound.length)];
//     Timer.periodic(Duration(seconds: 1), (Timer t) {
//       setState(() {
//         listImagesnotFound.shuffle();
//       });
//     });


  }
  // Future.delayed(Duration(seconds: 2)).then((value) {
  //
  // });

  // static var _random = Random();
  // if(listText == 0 ){
  // Image.asset(listImagesnotFound.first.toString()),
  // }


  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Wankedhe"),
        ),

        body: SingleChildScrollView(
          child: Container(
            color: AppColor.skywhite1,
            child: Column(

              children: [
                SizedBox(height: 50.0,),
                Container(

                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 40.0,),
                        Text("Chase ",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),),
                        Text(" "+listText.first.toString()+" runs ",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: AppColor.pinkwhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0,
                          ),),
                        Text(    " "+"in minimum balls",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black
                            ,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),),

                      ],
                    ),
                  ),
                ),
                // Text(widget.Total,
                //   style: TextStyle(
                //     fontFamily: 'Montserrat',
                //     color: Colors.black,
                //     fontWeight: FontWeight.bold,
                //     fontSize: 22.0,
                //   ),),
                SizedBox(height: 60.0,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      var total =listText;
                      listText.shuffle();
                      listImagesnotFound.shuffle();
                    });
                    Future.delayed(Duration(seconds: 2)).then((value) {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> finals(listText.first.toString(),)));
                    });

                  },
                  child:  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width - 220,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [BoxShadow(
                          color: AppColor.skywhite,
                          blurRadius: 15.0,
                        ),]
                    ),
                    child: Center(
                      child: Text("Start",
                        style: TextStyle(
                            color: AppColor.violet,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w800,
                            fontSize: 18.0

                        ),),
                    ),

                  ),
                ),
                SizedBox(height: 50.0,),
                Stack(
                  children: [

                    Container(
                      height: 70,
                      width: 280,
                      decoration: BoxDecoration(
                        // gradient: new LinearGradient(
                        //     colors: [Colors.pink,AppColor.pinkwhite,AppColor.violet,],
                        //     begin: Alignment.topLeft,
                        //     end: Alignment.bottomRight,
                        //     stops: [0.1,0.45,0.85]
                        // ),
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),

                      //   color: Colors.red,
                    ),

                    ClipRRect(
                      child: BackdropFilter(
                        filter:ImageFilter.blur(
                            sigmaX: 26.0,
                            sigmaY: 16.0
                        ),
                        child: Container(
                          height: 405,
                          width: 280,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              boxShadow: [BoxShadow(
                                color: Colors.white10,
                                blurRadius: 5.0,
                              ),
                              ]
                          ),
                          child:      Column(
                            children: [
                              SizedBox(width: 40.0,),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(widget.Player.name,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0,
                                  ),),
                              ),

                              Text("  is getting Ready for the chase",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: AppColor.pinkwhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),),
                              SizedBox(height: 40.0,),
                              widget.Player.image,
                            ],
                          ),
                        ),
                      ),
                    ),

                    // ClipRRect(
                    //   child: BackdropFilter(
                    //     // filter: ImageFilter.blur(
                    //     //     sigmaX: 16.0,
                    //     //     sigmaY: 16.0
                    //     // ),
                    //     // child: Center(
                    //     //   child: Container(
                    //     //     decoration: BoxDecoration(
                    //     //         color: Colors.black.withOpacity(0.05),
                    //     //         borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    //     //         boxShadow: [BoxShadow(
                    //     //           color: Colors.white10,
                    //     //           blurRadius: 5.0,
                    //     //         ),]
                    //     //     ),
                    //     //     height: 50,
                    //     //     width: 50,
                    //     //     // child:  ClipRRect(
                    //     //     //   child: BackdropFilter(
                    //     //     //     // filter: ImageFilter.blur(
                    //     //     //     //     sigmaX: 16.0,
                    //     //     //     //     sigmaY: 16.0
                    //     //     //     // ),
                    //     //     //     child: Padding(
                    //     //     //       padding: const EdgeInsets.only(top: 150.0,bottom: 150.0,left: 45.0,right: 45.0),
                    //     //     //       // child: Container(
                    //     //     //       //   decoration: BoxDecoration(
                    //     //     //       //       color: Colors.white.withOpacity(0.3),
                    //     //     //       //       borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    //     //     //       //       boxShadow: [BoxShadow(
                    //     //     //       //         color: Colors.white10,
                    //     //     //       //         blurRadius: 5.0,
                    //     //     //       //       ),
                    //     //     //       //       ]
                    //     //     //       //   ),
                    //     //     //       //   child: Column(
                    //     //     //       //     children: [
                    //     //     //       //       Padding(
                    //     //     //       //         padding: const EdgeInsets.all(8.0),
                    //     //     //       //         child: Text("Cric Camp",
                    //     //     //       //           style: TextStyle(
                    //     //     //       //               fontFamily: 'Montserrat',
                    //     //     //       //               fontWeight: FontWeight.bold,
                    //     //     //       //               fontSize: 30.0
                    //     //     //       //
                    //     //     //       //           ),),
                    //     //     //       //       ),
                    //     //     //       //       SizedBox(height: 40,),
                    //     //     //       //       Text("Cric Camp",
                    //     //     //       //         style: TextStyle(
                    //     //     //       //             fontFamily: 'Montserrat',
                    //     //     //       //             fontWeight: FontWeight.normal,
                    //     //     //       //             fontSize: 18.0
                    //     //     //       //
                    //     //     //       //         ),),
                    //     //     //       //       SizedBox(height: 40,),
                    //     //     //       //       Text("Cric Camp",
                    //     //     //       //         style: TextStyle(
                    //     //     //       //             fontFamily: 'Montserrat',
                    //     //     //       //             fontWeight: FontWeight.normal,
                    //     //     //       //             fontSize: 14.0
                    //     //     //       //
                    //     //     //       //         ),),
                    //     //     //       //       SizedBox(height: 80,),
                    //     //     //       //       GestureDetector(
                    //     //     //       //         onTap: (){
                    //     //     //       //           Navigator.of(context).push(MaterialPageRoute(builder: (context) => random()));
                    //     //     //       //         },
                    //     //     //       //         child:  Container(
                    //     //     //       //           height: 45,
                    //     //     //       //           width: MediaQuery.of(context).size.width - 220,
                    //     //     //       //           decoration: BoxDecoration(
                    //     //     //       //               color: Colors.white,
                    //     //     //       //               borderRadius: BorderRadius.circular(20.0),
                    //     //     //       //               boxShadow: [BoxShadow(
                    //     //     //       //                 color: AppColor.skywhite,
                    //     //     //       //                 blurRadius: 15.0,
                    //     //     //       //               ),]
                    //     //     //       //           ),
                    //     //     //       //           child: Center(
                    //     //     //       //             child: Text("Start",
                    //     //     //       //               style: TextStyle(
                    //     //     //       //                   color: AppColor.violet,
                    //     //     //       //                   fontFamily: 'Montserrat',
                    //     //     //       //                   fontWeight: FontWeight.w800,
                    //     //     //       //                   fontSize: 18.0
                    //     //     //       //
                    //     //     //       //               ),),
                    //     //     //       //           ),
                    //     //     //       //         ),
                    //     //     //       //       )
                    //     //     //       //
                    //     //     //       //     ],
                    //     //     //       //   ),
                    //     //     //       // ),
                    //     //     //     ),
                    //     //     //   ),
                    //     //     // ),
                    //     //
                    //     //   ),
                    //     // ),
                    //   ),
                    // )
                  ],

                ),
                // Text(widget.Player.name + "is Ready for the chase"),
                // Center(
                //   child: GestureDetector(
                //     onTap: (){
                //       setState(() {
                //         var total =listText;
                //         listText.shuffle();
                //         listImagesnotFound.shuffle();
                //       });
                //     },
                //     child: Text("click"),
                //   ),
                // ),
              //  Text(widget.Player.image),
                // Image.asset(listImagesnotFound.first.toString()),
                SizedBox(height: 10,),
                // Padding(
                //   padding: const EdgeInsets.only(left: 0.0,),
                //   child: Container(
                //     child:  Image.asset("assets/c.png",height: 300,width: 300,),
                //   ),
                // ),
                SizedBox(height: 20,),
                // Container(
                //   height: 300,
                //   width: MediaQuery.of(context).size.width,
                //   child: SingleChildScrollView(
                //     scrollDirection: Axis.horizontal,
                //     child: Row(
                //       children: [
                //         GestureDetector(
                //           onTap: (){
                //
                //           },
                //           child: Image.asset("assets/red.jpeg"),
                //         ),
                //         Container(width: 20,),
                //         GestureDetector(
                //           child: Image.asset("assets/red.jpeg"),
                //         ),
                //         Container(width: 20,),
                //         GestureDetector(
                //           child: Image.asset("assets/red.jpeg"),
                //         )
                //       ],
                //     ),
                //   ),
                // ),

              ],
            ),
          ),
        )

    );
  }


}

//}