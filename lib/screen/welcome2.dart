import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:cool_calm/sub_screen/breatheScreen.dart';
import 'package:cool_calm/sub_screen/think.dart';
import 'package:cool_calm/sub_screen/walkingScreen2.dart';
import 'package:glassmorphism/glassmorphism.dart';
//import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:cool_calm/custom/Alert.dart';
import 'package:cool_calm/custom/color.dart';
import 'package:cool_calm/model/model1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:cool_calm/screen/sad.dart';
import 'package:cool_calm/screen/timer.dart';
import 'package:cool_calm/screen/timer1.dart';
import 'package:google_fonts/google_fonts.dart';

import 'confuse.dart';
import 'happy.dart';
import 'hate.dart';
//import 'package:flutter_launch/flutter_launch.dart';
//import 'package:url_launcher/url_launcher.dart';

class welcome2 extends StatefulWidget {
  // final String Total;
  // final player Player;
  // game(this.Total,this.Player);

  @override _welcome2State createState() => _welcome2State();
}

class _welcome2State extends State<welcome2> {

  ScrollController scrollController = new ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  Widget build(BuildContext context){
    return  new Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: new LinearGradient(
                    //  colors: [AppColor.pink,AppColor.pink2,AppColor.violet2],
                      colors: [AppColor.skywhite1,AppColor.pink2,AppColor.violet2],
                      // colors: [AppColor.pink,AppColor.violet,AppColor.pink1,AppColor.pink2,AppColor.skyblue,AppColor.violet,AppColor.pink2],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [0.1,0.45,0.85]
                    // stops: [0.1,0.152,0.33,0.45,0.45,0.74,0.85]
                  )
              ),
              //   color: Colors.red,
            ),
            ClipRRect(
              child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 16.0,
                      sigmaY: 16.0
                  ),
                  child: null
                // Center(
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color: Colors.black.withOpacity(0.05),
                //         borderRadius: BorderRadius.all(Radius.circular(5.0)),
                //         boxShadow: [BoxShadow(
                //           color: Colors.white10,
                //           blurRadius: 5.0,
                //         ),]
                //     ),
                //     height: MediaQuery.of(context).size.height,
                //     width: MediaQuery.of(context).size.width,
                //     child:  ClipRRect(
                //       child: BackdropFilter(
                //         filter: ImageFilter.blur(
                //             sigmaX: 16.0,
                //             sigmaY: 16.0
                //         ),
                //         child: Padding(
                //           padding: const EdgeInsets.only(top: 150.0,bottom: 150.0,left: 45.0,right: 45.0),
                //           child: Container(
                //             decoration: BoxDecoration(
                //                 color: Colors.white.withOpacity(0.3),
                //                 borderRadius: BorderRadius.all(Radius.circular(25.0)),
                //                 boxShadow: [BoxShadow(
                //                   color: Colors.white10,
                //                   blurRadius: 5.0,
                //                 ),
                //                 ]
                //             ),
                //             child: Column(
                //               children: [
                //                 // Padding(
                //                 //   padding: const EdgeInsets.all(8.0),
                //                 //   child: Text("Cricket",
                //                 //   style: TextStyle(
                //                 //     fontFamily: 'Montserrat',
                //                 //     fontWeight: FontWeight.bold,
                //                 //     fontSize: 30.0
                //                 //
                //                 //   ),),
                //                 // ),
                //                 // SizedBox(height: 80,),
                //                 // Text("Play your game",
                //                 //   style: TextStyle(
                //                 //       fontFamily: 'Montserrat',
                //                 //       fontWeight: FontWeight.normal,
                //                 //       fontSize: 18.0
                //                 //
                //                 //   ),),
                //                 SizedBox(height: 40,),
                //                 // Text("Cric Camp",
                //                 //   style: TextStyle(
                //                 //       fontFamily: 'Montserrat',
                //                 //       fontWeight: FontWeight.normal,
                //                 //       fontSize: 14.0
                //                 //
                //                 //   ),),
                //                 SizedBox(height: 80,),
                //                 GestureDetector(
                //                   onTap: (){
                //                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => random()));
                //                   },
                //                   child:  Container(
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
                //                     child: Center(
                //                       child: Text("Start",
                //                         style: TextStyle(
                //                             color: AppColor.violet,
                //                             fontFamily: 'Montserrat',
                //                             fontWeight: FontWeight.w800,
                //                             fontSize: 18.0
                //
                //                         ),),
                //                     ),
                //                   ),
                //                 )
                //
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //
                //   ),
                // ),
              ),
            ),
            // Image.asset('assets/h.jpeg',fit: BoxFit.fitHeight,
            // height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            // ),
            // Image.network(
            //   "https://github.com/RitickSaha/glassmophism/blob/master/example/assets/bg.png?raw=true",
            //   fit: BoxFit.cover,
            //   height: double.infinity,
            //   width: double.infinity,
            //   scale: 1,
            // ),
            // Container(
            //   height: double.infinity,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     gradient: new LinearGradient(
            //         colors: [AppColor.violet,AppColor.skywhite],
            //         begin: Alignment.topLeft,
            //         end: Alignment.bottomRight,
            //         stops: [0.1,0.50]
            //     ),
            //     //  borderRadius: BorderRadius.all(Radius.circular(25.0)),
            //   ),
            //   //   color: Colors.red,
            // ),
            // Image.asset('assets/med1.jpg',fit: BoxFit.cover,
            // height: double.infinity,
            // width: double.infinity,),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          //  height: 30.0,
                          // width: 30.0,
                          // decoration: BoxDecoration(
                          //     color: AppColor.skywhite1,
                          //   shape: BoxShape.circle
                          // ),
                          child: IconButton(icon: Icon(Icons.west_outlined),color: AppColor.skywhite1, onPressed: (){
                            Navigator.of(context).pop();
                          }),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Plans",
                              style: GoogleFonts.alfaSlabOne(
                                  color: AppColor.black1,
                                  fontSize: 38.0
                              ),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Make a rourine and Build a healthy habit.",
                              style: GoogleFonts.poppins(
                                  color: AppColor.skywhite1,
                                  fontSize: 14.0
                              ),),),
                          ),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //*****container
                              // decoration: BoxDecoration(
                              //     color: Colors.white,
                              //     borderRadius: BorderRadius.circular(20.0),
                              //     boxShadow: [BoxShadow(
                              //       color: AppColor.skywhite,
                              //       blurRadius: 15.0,
                              //     ),]
                              // ),
                              child:  SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListView(
                                    controller: scrollController,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenTimer2()));
                                          },
                                          child: Container(
                                            height: 250,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                color: AppColor.blu,
                                                borderRadius: BorderRadius.circular(20.0),
                                                boxShadow: [BoxShadow(
                                                  color: Colors.black54,
                                                  blurRadius: 15.0,
                                                ),]
                                            ),
                                            // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                            //     gradient: new LinearGradient(
                                            //       //  colors: [AppColor.pink,AppColor.pink2,AppColor.violet2],
                                            //         colors: [AppColor.gr,AppColor.gr,AppColor.gr],
                                            //         // colors: [AppColor.pink,AppColor.violet,AppColor.pink1,AppColor.pink2,AppColor.skyblue,AppColor.violet,AppColor.pink2],
                                            //         begin: Alignment.bottomCenter,
                                            //         end: Alignment.topCenter,
                                            //         stops: [0.1,0.45,0.85]
                                            //       // stops: [0.1,0.152,0.33,0.45,0.45,0.74,0.85]
                                            //     )
                                            // ),
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.all(30.0),
                                                child: Text("Muscle Relaxation",
                                                  style: GoogleFonts.alfaSlabOne(
                                                      color: AppColor.black1,
                                                      fontSize: 38.0
                                                  ),),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenTimer()));
                                          },
                                          child: Container(
                                            height: 250,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                color: AppColor.gr,
                                                borderRadius: BorderRadius.circular(20.0),
                                                boxShadow: [BoxShadow(
                                                  color: AppColor.black1,
                                                  blurRadius: 15.0,
                                                ),]
                                            ),
                                            // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                            //     gradient: new LinearGradient(
                                            //       //  colors: [AppColor.pink,AppColor.pink2,AppColor.violet2],
                                            //         colors: [AppColor.pinkwhite,AppColor.pinkwhite,AppColor.pinkwhite],
                                            //         // colors: [AppColor.pink,AppColor.violet,AppColor.pink1,AppColor.pink2,AppColor.skyblue,AppColor.violet,AppColor.pink2],
                                            //         begin: Alignment.bottomCenter,
                                            //         end: Alignment.topCenter,
                                            //         stops: [0.1,0.45,0.85]
                                            //       // stops: [0.1,0.152,0.33,0.45,0.45,0.74,0.85]
                                            //     )
                                            // ),
                                            child: Center(
                                              child: Text("Deep \nBreathe",
                                                style: GoogleFonts.alfaSlabOne(
                                                    color: AppColor.black1,
                                                    fontSize: 38.0
                                                ),),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenTimer7()));
                                          },
                                          child: Container(
                                            height: 250,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                color: AppColor.pinkwhite
                                                ,
                                                borderRadius: BorderRadius.circular(25.0),
                                                boxShadow: [BoxShadow(
                                                  color: AppColor.black1,
                                                  blurRadius: 15.0,
                                                ),]
                                            ),
                                            // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                            //     gradient: new LinearGradient(
                                            //       //  colors: [AppColor.pink,AppColor.pink2,AppColor.violet2],
                                            //         colors: [AppColor.red,AppColor.red,AppColor.red],
                                            //         // colors: [AppColor.pink,AppColor.violet,AppColor.pink1,AppColor.pink2,AppColor.skyblue,AppColor.violet,AppColor.pink2],
                                            //         begin: Alignment.bottomCenter,
                                            //         end: Alignment.topCenter,
                                            //         stops: [0.1,0.45,0.85]
                                            //       // stops: [0.1,0.152,0.33,0.45,0.45,0.74,0.85]
                                            //     )
                                            // ),
                                            child: Center(
                                              child: Text("Learn \nNew Skiills",
                                                style: GoogleFonts.alfaSlabOne(
                                                    color: AppColor.black1,
                                                    fontSize: 38.0
                                                ),),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(8.0),
                                      //   child: GestureDetector(
                                      //     onTap: (){
                                      //       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenTimer3()));
                                      //     },
                                      //     child: Container(
                                      //       height: 250,
                                      //       width: 100,
                                      //       decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                      //           color: AppColor.skyblue
                                      //       ),
                                      //       child: Center(
                                      //         child: Column(
                                      //           children: [
                                      //             SizedBox(height: 20.0,),
                                      //             Text("Muscle Relaxation",
                                      //               style: GoogleFonts.poppins(
                                      //                   color: AppColor.black1,
                                      //                   fontSize: 18.0
                                      //               ),),
                                      //             Image.asset('assets/med1.jpg',height: 200,width: 250,)
                                      //           ],
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ),
                                // child: ListView.builder(
                                //     scrollDirection: Axis.vertical,
                                //     shrinkWrap: true,
                                //     controller: scrollController,
                                //     itemCount : playerList.length,itemBuilder: (Context,index){
                                //   player Player =playerList[index];
                                //   return SingleChildScrollView(
                                //     child: Padding(
                                //       padding: const EdgeInsets.all(8.0),
                                //       child: Card(
                                //       //  color: AppColor.pinkwhite,
                                //         child: ListTile(
                                //           title: Column(
                                //             children: [
                                //               Text(Player.name),
                                //
                                //               SizedBox(height: 10,),
                                //               Player.image,
                                //               SizedBox(height: 10,),
                                //              Container(
                                //               decoration: BoxDecoration(
                                //                 borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                //                 color: AppColor.skyblue
                                //               ),
                                //                child:  Padding(
                                //                  padding: const EdgeInsets.all(8.0),
                                //                  child: Text(Player.description),
                                //                ),
                                //              ),
                                //               SizedBox(height: 10,),
                                //             ],
                                //           ),
                                //          // subtitle: Text(Player.description),
                                //           onTap: (){
                                //             Navigator.of(context).push(new MaterialPageRoute(builder: (context) => game(listText.first.toString(),Player)));
                                //           },
                                //         ),
                                //       ),
                                //     ),
                                //   );
                                // } ) ,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
    //   Scaffold(
    //
    //     body: SingleChildScrollView(
    //       child: Stack(
    //         children: [
    //           Container(
    //               height: MediaQuery.of(context).size.height,
    //               width: MediaQuery.of(context).size.width,
    //               decoration: BoxDecoration(
    //                   gradient: new LinearGradient(
    //                       colors: [AppColor.pink,AppColor.violet,AppColor.pink1,AppColor.pink2,AppColor.skyblue,AppColor.violet,AppColor.pink2],
    //                       begin: Alignment.topLeft,
    //                       end: Alignment.bottomRight,
    //                       stops: [0.1,0.152,0.33,0.45,0.45,0.74,0.85]
    //                   )
    //               ),
    //               //   color: Colors.red,
    //           ),
    //           ClipRRect(
    //             child: BackdropFilter(
    //               filter: ImageFilter.blur(
    //                   sigmaX: 16.0,
    //                   sigmaY: 16.0
    //               ),
    //               child: Center(
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                       color: Colors.black.withOpacity(0.05),
    //                       borderRadius: BorderRadius.all(Radius.circular(5.0)),
    //                       boxShadow: [BoxShadow(
    //                         color: Colors.white10,
    //                         blurRadius: 5.0,
    //                       ),]
    //                   ),
    //                   height: MediaQuery.of(context).size.height,
    //                   width: MediaQuery.of(context).size.width,
    //                   child:  ClipRRect(
    //                     child: BackdropFilter(
    //                       filter: ImageFilter.blur(
    //                           sigmaX: 16.0,
    //                           sigmaY: 16.0
    //                       ),
    //                       child: Padding(
    //                         padding: const EdgeInsets.only(top: 150.0,bottom: 150.0,left: 45.0,right: 45.0),
    //                         child: Container(
    //                           decoration: BoxDecoration(
    //                               color: Colors.white.withOpacity(0.3),
    //                               borderRadius: BorderRadius.all(Radius.circular(25.0)),
    //                               boxShadow: [BoxShadow(
    //                                 color: Colors.white10,
    //                                 blurRadius: 5.0,
    //                               ),
    //                               ]
    //                           ),
    //                           child: Column(
    //                             children: [
    //                               // Padding(
    //                               //   padding: const EdgeInsets.all(8.0),
    //                               //   child: Text("Cricket",
    //                               //   style: TextStyle(
    //                               //     fontFamily: 'Montserrat',
    //                               //     fontWeight: FontWeight.bold,
    //                               //     fontSize: 30.0
    //                               //
    //                               //   ),),
    //                               // ),
    //                               // SizedBox(height: 80,),
    //                               // Text("Play your game",
    //                               //   style: TextStyle(
    //                               //       fontFamily: 'Montserrat',
    //                               //       fontWeight: FontWeight.normal,
    //                               //       fontSize: 18.0
    //                               //
    //                               //   ),),
    //                               SizedBox(height: 40,),
    //                               // Text("Cric Camp",
    //                               //   style: TextStyle(
    //                               //       fontFamily: 'Montserrat',
    //                               //       fontWeight: FontWeight.normal,
    //                               //       fontSize: 14.0
    //                               //
    //                               //   ),),
    //                               SizedBox(height: 80,),
    //                               GestureDetector(
    //                                 onTap: (){
    //                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => random()));
    //                                 },
    //                                 child:  Container(
    //                                   height: 45,
    //                                   width: MediaQuery.of(context).size.width - 220,
    //                                   decoration: BoxDecoration(
    //                                     color: Colors.white,
    //                                    borderRadius: BorderRadius.circular(20.0),
    //                                     boxShadow: [BoxShadow(
    //                                     color: AppColor.skywhite,
    //                                     blurRadius: 15.0,
    //                                   ),]
    //                                   ),
    //                                   child: Center(
    //                                     child: Text("Start",
    //                                       style: TextStyle(
    //                                         color: AppColor.violet,
    //                                           fontFamily: 'Montserrat',
    //                                           fontWeight: FontWeight.w800,
    //                                           fontSize: 18.0
    //
    //                                       ),),
    //                                   ),
    //                                 ),
    //                               )
    //
    //                             ],
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //
    //                 ),
    //               ),
    //             ),
    //           )
    //         ],
    //
    //       ),
    //     )
    //
    // );
  }
}

//}