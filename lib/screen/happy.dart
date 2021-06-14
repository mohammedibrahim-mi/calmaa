import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:cool_calm/custom/color.dart';
import 'package:cool_calm/model/model1.dart';
import 'package:cool_calm/screen/game.dart';
import 'package:cool_calm/sub_screen/newSkill.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:cool_calm/sub_screen/breatheScreen.dart';
import 'package:cool_calm/sub_screen/walkingScreen2.dart';
import 'package:google_fonts/google_fonts.dart';

import '../sub_screen/exercisescreen.dart';
import 'glassmorphism.dart';
//import 'package:flutter_launch/flutter_launch.dart';
//import 'package:url_launcher/url_launcher.dart';

class random extends StatefulWidget {

  @override _randomState createState() => _randomState();
}

class _randomState extends State<random> {

  String imageToShow;
  FocusNode TextNode = new FocusNode();
  TextEditingController passtext = new TextEditingController();
  ScrollController scrollController = new ScrollController();
  String t ="sf";
  String t1 ="sf";
//  player Player =playerList[];
  static var listImagesnotFound = [
    "assets/red.jpeg",
    "assets/blue.jpeg",
    "assets/yellow.jpeg",
    // "assets/notfound.png",
    // "assets/robno.png",
    // "assets/spano.jpg"
  ];

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
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppColor.skywhite1,
            child: SingleChildScrollView(
              child: Stack(
              children: [
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  color: AppColor.violet2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80.0,left: 40.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 80,
                          width: 280,
                          decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [AppColor.pink,AppColor.violet,AppColor.pink1,AppColor.pink2,AppColor.skyblue,AppColor.violet,AppColor.pink2],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.1,0.152,0.33,0.45,0.45,0.74,0.85]
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          ),

                          //   color: Colors.red,
                        ),
                        BackdropFilter(
                          filter: ImageFilter.blur(
                              sigmaX: 26.0,
                              sigmaY: 16.0
                          ),
                          child: Container(
                            height: 70,
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.3),
                                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                boxShadow: [BoxShadow(
                                  color: Colors.white10,
                                  blurRadius: 5.0,
                                ),
                                ]
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 50,),
                                  Text("Happy",
                                    style: GoogleFonts.daysOne(
                                      // / fontWeight: FontWeight.bold,
                                        color: AppColor.skywhite1,
                                        fontSize: 20.0
                                    ),
                                  ),
                                  Container(
                                    //  height: 30.0,
                                    // width: 30.0,
                                    // decoration: BoxDecoration(
                                    //     color: AppColor.skywhite1,
                                    //   shape: BoxShape.circle
                                    // ),
                                    child: IconButton(icon: Icon(Icons.clear),color: AppColor.skywhite1, onPressed: (){
                                      Navigator.of(context).pop();
                                    }),
                                  ),
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
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 220.0
                  ),
                  child: Container(

                    decoration: BoxDecoration(
                       color: AppColor.skywhite1,
                      borderRadius: BorderRadius.all(Radius.circular(25.0))
                    ),
                    child: Column(
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.all(18.0),
                        //   child: Container(
                        //     height: 60,
                        //     width: MediaQuery.of(context).size.width,
                        //     decoration: BoxDecoration(
                        //         gradient: new LinearGradient(
                        //             colors: [AppColor.pink2.withOpacity(0.8),AppColor.pink.withOpacity(0.8),AppColor.violet.withOpacity(0.8)],
                        //             begin: Alignment.topCenter,
                        //             end: Alignment.bottomCenter,
                        //             stops: [0.1,0.5,1.0]
                        //         ),
                        //       borderRadius: BorderRadius.circular(15.0),
                        //     ),
                        //     child: Center(
                        //       child: Text("Pick a Player",
                        //         style: TextStyle(
                        //             fontFamily: 'Montserrat',
                        //             color: AppColor.skywhite1,
                        //             fontWeight: FontWeight.normal,
                        //             fontSize: 22.0,
                        //         ),),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(height: 10,),
                        // /  SizedBox(height: 20,),
                        //                  Container(
                        //                    height: 300,
                        //                    width: MediaQuery.of(context).size.width,
                        //                    child: SingleChildScrollView(
                        //                      scrollDirection: Axis.horizontal,
                        //                      child: Row(
                        //                        children: [
                        //                          GestureDetector(
                        //                             onTap: (){
                        // Navigator.of(context).push(new MaterialPageRoute(builder: (context) => glass()));
                        //                          },
                        //                            child: Image.asset("assets/red.jpeg"),
                        //                          ),
                        //                          Container(width: 20,),
                        //                          GestureDetector(
                        //                            child: Image.asset("assets/tes.jpeg"),
                        //                          ),
                        //                          Container(width: 20,),
                        //                          GestureDetector(
                        //                            child: Image.asset("assets/red.jpeg"),
                        //                          )
                        //                        ],
                        //                      ),
                        //                    ),
                        //                  ),
                        //                  ListView.builder(
                        //                    shrinkWrap: true,
                        //                    scrollDirection: Axis.vertical,
                        //                    itemCount:10,
                        //                    controller: scrollController,
                        //                    itemBuilder: (BuildContext context, int index) {
                        //                      Color color;
                        //                      // if (index % 2 == 0) {
                        //                      //   color = AppColors.list_color;
                        //                      // } else {
                        //                      //   color = AppColors.list_color;
                        //                      // }
                        //                      return Card(
                        //                        shape: RoundedRectangleBorder(
                        //                            borderRadius: const BorderRadius.all(
                        //                              Radius.circular(5.0),
                        //                            )),
                        //                        color: color,
                        //                        child: GestureDetector(
                        //                          onTap: () {
                        //                            // Navigator.of(context).push(
                        //                            //     new MaterialPageRoute(builder: (
                        //                            //         context) => new ReceiveScreenDetails(
                        //                            //         response.tokendetails[index].image.toString(),
                        //                            //         response.tokendetails[index].balance.toString(),
                        //                            //         response.tokendetails[index].total.toString())));
                        //                          },
                        //                          child: Container(
                        //                            decoration: BoxDecoration(
                        //                              color: AppColor.pinkwhite,
                        //                              borderRadius:
                        //                              new BorderRadius.circular(5.0),
                        //                            ),
                        //                            padding: EdgeInsets.only(
                        //                                left: 10.0,
                        //                                right: 10.0,
                        //                                top: 10.0,
                        //                                bottom: 10.0),
                        //                            child: Row(
                        //                              mainAxisAlignment:
                        //                              MainAxisAlignment.start,
                        //                              children: [
                        //                             //   Expanded(flex:1,child:  SvgPicture.network(response.tokendetails[index].image,height: 35.0,width: 25.0,),),
                        //
                        //                                Expanded(flex: 4, child: Column(
                        //
                        //                                  crossAxisAlignment:
                        //                                  CrossAxisAlignment.start,
                        //                                  children: [
                        //                                    Text("h"
                        //                                      // response.tokendetails[index].image,
                        //                                      // style: commonTextStyles(
                        //                                      //     FontWeight.normal,
                        //                                      //     AppColors.black_color,
                        //                                      //     18),
                        //                                    ),
                        //                                    Text(
                        //                                      "k"
                        //                                      // response.tokendetails[index].image,
                        //                                      // style: commonTextStyles(
                        //                                      //     FontWeight.normal,
                        //                                      //     AppColors.button1_color,
                        //                                      //     14),
                        //                                    )
                        //                                  ],
                        //                                ),),
                        //                                // SvgPicture.asset(
                        //                                //   'assets/others/down.svg',
                        //                                //   width: 25.0,
                        //                                //   color: AppColors.blue,
                        //                                //   height: 25.0,
                        //                                // )
                        //                              ],
                        //                            ),
                        //                          ),
                        //                        ),
                        //                      );
                        //                    },
                        //                  ),
                        // ListView.builder(
                        //     scrollDirection:Axis.vertical,
                        //     shrinkWrap: true,
                        //     itemCount: 3,itemBuilder: (Context,index){
                        //   return Container(
                        //     child: Text("hi"),
                        //   );
                        // }),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Your State of Mind",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,

                                fontSize: 22.0,
                              ),),
                          ),
                        ),
                        SingleChildScrollView(
                          //  scrollDirection: Axis.horizontal,
                          child: Container(
                            //  height: 100,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20.0),
                                            boxShadow: [BoxShadow(
                                              color: AppColor.skywhite,
                                              blurRadius: 15.0,
                                            ),]
                                        ),
                                        child: Center(
                                          child: Text("Joy"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20.0),
                                            boxShadow: [BoxShadow(
                                              color: AppColor.skywhite,
                                              blurRadius: 15.0,
                                            ),]
                                        ),
                                        child: Center(
                                          child: Text("Proud"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20.0),
                                            boxShadow: [BoxShadow(
                                              color: AppColor.skywhite,
                                              blurRadius: 15.0,
                                            ),]
                                        ),
                                        child: Center(
                                          child: Text("Excitment"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20.0),
                                            boxShadow: [BoxShadow(
                                              color: AppColor.skywhite,
                                              blurRadius: 15.0,
                                            ),]
                                        ),
                                        child: Center(
                                          child: Text("Confident"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20.0),
                                            boxShadow: [BoxShadow(
                                              color: AppColor.skywhite,
                                              blurRadius: 15.0,
                                            ),]
                                        ),
                                        child: Center(
                                          child: Text("Hope"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Tips",
                              style: GoogleFonts.poppins(
                                  color: AppColor.black1,
                                  fontSize: 22.0
                              ),),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          height: 160,
                          width: MediaQuery.of(context).size.width-50,
                          decoration: BoxDecoration(
                              color: Colors.indigoAccent,
                              borderRadius: BorderRadius.all(Radius.circular(5.0))
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10.0,),
                              Text("Get A Good Laugh",
                                  style: GoogleFonts.montserrat(
                                      color: AppColor.skywhite1,
                                      fontSize: 15.0
                                  )),
                              SizedBox(height: 20.0,),
                              Text("Listen To Upbeat Music",
                                  style: GoogleFonts.montserrat(
                                      color: AppColor.skywhite1,
                                      fontSize: 15.0
                                  )),
                              SizedBox(height: 20.0,),
                              Text("Give Someone A Hug",
                                  style: GoogleFonts.montserrat(
                                      color: AppColor.skywhite1,
                                      fontSize: 15.0
                                  )),
                              SizedBox(height: 20.0,),
                              Text(" Think About What Went Well",
                                  style: GoogleFonts.montserrat(
                                      color: AppColor.skywhite1,
                                      fontSize: 15.0
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: AppColor.black1,
                          ),
                          height: 220,
                          width: MediaQuery.of(context).size.width-30,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SizedBox(height: 20.0,),
                                  Text("Magic Box",
                                    style: GoogleFonts.poppins(
                                        color: AppColor.violet2,
                                        fontSize: 22.0
                                    ),
                                  ),
                                  SizedBox(height: 5.0,),
                                  Text("Write down 3 positive things what makes you happy.",
                                    style: GoogleFonts.poppins(
                                        color: AppColor.skywhite1,
                                        fontSize: 10.0
                                    ),
                                  ),
                                  // Text("Write a Story",
                                  //   style: TextStyle(
                                  //     fontFamily: 'Montserrat',
                                  //     color: Colors.white,
                                  //     fontWeight: FontWeight.bold,
                                  //     fontSize: 14.0,
                                  //   ),
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      // focusNode: TextNode,
                                      controller: passtext,
                                      decoration: InputDecoration(
                                        hintText: "Write a Story",
                                        hintStyle:  GoogleFonts.poppins(
                                            color: AppColor.skywhite1,
                                            fontSize: 12.0
                                        ),
                                      ),

                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      passtext.clear();
                                    },
                                    child: Text("Done",
                                      style: GoogleFonts.poppins(
                                          color: AppColor.skywhite1,
                                          fontSize: 12.0
                                      ),),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          child: Column(
                            children: [

                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: (){

                                          },
                                          child: Container(
                                            height: 100,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              //borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                                shape: BoxShape.circle,
                                                color: AppColor.skywhite2
                                            ),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  SizedBox(height: 20.0,),
                                                  //      Text("Focus on \nwhat you know",),
                                                  //    Image.asset('assets/3d.png',height: 100,width: 250,)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 100,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            //borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                              shape: BoxShape.circle,
                                              color: AppColor.skywhite2
                                          ),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                SizedBox(height: 20.0,),
                                                //    Text("Be patient"),
                                                //  Image.asset('assets/med1.jpg',height: 100,width: 250,)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 100,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            //borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                              shape: BoxShape.circle,
                                              color: AppColor.skywhite2
                                          ),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                SizedBox(height: 20.0,),
                                                //   Text("Think Multiple \nVersions of Reality"),
                                                //  Image.asset('assets/med1.jpg',height: 100,width: 250,)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: (){

                                          },
                                          child: Container(
                                            height: 100,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              //borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                                shape: BoxShape.circle,
                                                color: AppColor.skywhite2
                                            ),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  SizedBox(height: 20.0,),
                                                  //      Text("Focus on \nwhat you know",),
                                                  //    Image.asset('assets/3d.png',height: 100,width: 250,)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 100,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            //borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                              shape: BoxShape.circle,
                                              color: AppColor.skywhite2
                                          ),
                                          child: Center(
                                            child: Column(
                                              children: [
                                                SizedBox(height: 20.0,),
                                                //    Text("Be patient"),
                                                //  Image.asset('assets/med1.jpg',height: 100,width: 250,)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(8.0),
                                      //   child: GestureDetector(
                                      //     onTap: (){
                                      //
                                      //     },
                                      //     child: Container(
                                      //       height: 150,
                                      //       width: 200,
                                      //       decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                      //           color: AppColor.skyblue
                                      //       ),
                                      //       child: Center(
                                      //         child: Column(
                                      //           children: [
                                      //             SizedBox(height: 20.0,),
                                      //             Text("Deep Breathe"),
                                      //             Image.asset('assets/3d.png',height: 100,width: 250,)
                                      //           ],
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(8.0),
                                      //   child: Container(
                                      //     height: 150,
                                      //     width: 200,
                                      //     decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                      //         color: AppColor.skyblue
                                      //     ),
                                      //     child: Center(
                                      //       child: Column(
                                      //         children: [
                                      //           SizedBox(height: 20.0,),
                                      //           Text("Deep Breathe"),
                                      //           Image.asset('assets/med1.jpg',height: 100,width: 250,)
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(8.0),
                                      //   child: Container(
                                      //     height: 150,
                                      //     width: 200,
                                      //     decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                      //         color: AppColor.skyblue
                                      //     ),
                                      //     child: Center(
                                      //       child: Column(
                                      //         children: [
                                      //           SizedBox(height: 20.0,),
                                      //           Text("Deep Breathe"),
                                      //           Image.asset('assets/med1.jpg',height: 100,width: 250,)
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Text(listText.first.toString()
                        //   ,
                        //   style: TextStyle(
                        //       color: AppColor.backwhite
                        //   ),),
                        // // Image.asset(listImagesnotFound.first.toString()),
                        // // SizedBox(height: 100,),
                        // Center(
                        //   child: GestureDetector(
                        //     onTap: (){
                        //       setState(() {
                        //         listText.shuffle();
                        //         listImagesnotFound.shuffle();
                        //       });
                        //     },
                        //     child: Text("click"),
                        //   ),
                        // ),
                        SizedBox(height: 20,),

                      ],
                    ),
                  ),
                ),
              ],
              ),
            ),
          ),
        )

    );
  }


}

//}


// image: new DecorationImage(
// image: new AssetImage('assets/images/9_patch_scaled_320x190.png'),
// centerSlice: new Rect.fromLTWH(50.0, 50.0, 220.0, 90.0),
// fit: BoxFit.fill,
// )