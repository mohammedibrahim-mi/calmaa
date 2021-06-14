import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:cool_calm/screen/developer.dart';
import 'package:cool_calm/screen/welcome.dart';
import 'package:cool_calm/screen/welcome1.dart';
import 'package:cool_calm/screen/welcome2.dart';
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
import 'mediate.dart';
//import 'package:flutter_launch/flutter_launch.dart';
//import 'package:url_launcher/url_launcher.dart';

class splash extends StatefulWidget {
  // final String Total;
  // final player Player;
  // game(this.Total,this.Player);

  @override _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  bool loaded = false;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(milliseconds: 400), onDoneLoading);
  }

  onDoneLoading() async {
    setState(() {
      loaded = true;
    });
    checkFirstSeen();
  }



  Future checkFirstSeen() async {
    Navigator.of(context).pushReplacement(
        new MaterialPageRoute(builder: (context) => new welcome1()));

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [AppColor.violet2,AppColor.pink1,AppColor.violet2],
              //colors: [AppColor.pink,AppColor.violet,AppColor.pink1,AppColor.pink2,AppColor.skyblue,AppColor.violet,AppColor.pink2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1,0.45,0.85]
          )
      ),
        child: Center(
          child: Container(
           // color: AppColor.skywhite1,

            child: Text("Calma",
              style: GoogleFonts.oregano(
                  color: AppColor.black1,
                  fontSize: 54.0
              ),),
          ),
        )
    ) ;
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  // }
  //
  //
  // Widget build(BuildContext context){
  //   return  new Scaffold(
  //     body: Container(
  //       height: double.infinity,
  //       width: double.infinity,
  //       child: Stack(
  //         children: [
  //           Container(
  //             height: MediaQuery.of(context).size.height,
  //             width: MediaQuery.of(context).size.width,
  //             decoration: BoxDecoration(
  //                 gradient: new LinearGradient(
  //                     colors: [AppColor.skywhite1,AppColor.pink1,AppColor.violet2],
  //                     //colors: [AppColor.pink,AppColor.violet,AppColor.pink1,AppColor.pink2,AppColor.skyblue,AppColor.violet,AppColor.pink2],
  //                     begin: Alignment.topCenter,
  //                     end: Alignment.bottomCenter,
  //                     stops: [0.1,0.45,0.85]
  //                 )
  //             ),
  //             //   color: Colors.red,
  //           ),
  //           ClipRRect(
  //             child: BackdropFilter(
  //                 filter: ImageFilter.blur(
  //                     sigmaX: 16.0,
  //                     sigmaY: 16.0
  //                 ),
  //                 child: null
  //               // Center(
  //               //   child: Container(
  //               //     decoration: BoxDecoration(
  //               //         color: Colors.black.withOpacity(0.05),
  //               //         borderRadius: BorderRadius.all(Radius.circular(5.0)),
  //               //         boxShadow: [BoxShadow(
  //               //           color: Colors.white10,
  //               //           blurRadius: 5.0,
  //               //         ),]
  //               //     ),
  //               //     height: MediaQuery.of(context).size.height,
  //               //     width: MediaQuery.of(context).size.width,
  //               //     child:  ClipRRect(
  //               //       child: BackdropFilter(
  //               //         filter: ImageFilter.blur(
  //               //             sigmaX: 16.0,
  //               //             sigmaY: 16.0
  //               //         ),
  //               //         child: Padding(
  //               //           padding: const EdgeInsets.only(top: 150.0,bottom: 150.0,left: 45.0,right: 45.0),
  //               //           child: Container(
  //               //             decoration: BoxDecoration(
  //               //                 color: Colors.white.withOpacity(0.3),
  //               //                 borderRadius: BorderRadius.all(Radius.circular(25.0)),
  //               //                 boxShadow: [BoxShadow(
  //               //                   color: Colors.white10,
  //               //                   blurRadius: 5.0,
  //               //                 ),
  //               //                 ]
  //               //             ),
  //               //             child: Column(
  //               //               children: [
  //               //                 // Padding(
  //               //                 //   padding: const EdgeInsets.all(8.0),
  //               //                 //   child: Text("Cricket",
  //               //                 //   style: TextStyle(
  //               //                 //     fontFamily: 'Montserrat',
  //               //                 //     fontWeight: FontWeight.bold,
  //               //                 //     fontSize: 30.0
  //               //                 //
  //               //                 //   ),),
  //               //                 // ),
  //               //                 // SizedBox(height: 80,),
  //               //                 // Text("Play your game",
  //               //                 //   style: TextStyle(
  //               //                 //       fontFamily: 'Montserrat',
  //               //                 //       fontWeight: FontWeight.normal,
  //               //                 //       fontSize: 18.0
  //               //                 //
  //               //                 //   ),),
  //               //                 SizedBox(height: 40,),
  //               //                 // Text("Cric Camp",
  //               //                 //   style: TextStyle(
  //               //                 //       fontFamily: 'Montserrat',
  //               //                 //       fontWeight: FontWeight.normal,
  //               //                 //       fontSize: 14.0
  //               //                 //
  //               //                 //   ),),
  //               //                 SizedBox(height: 80,),
  //               //                 GestureDetector(
  //               //                   onTap: (){
  //               //                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => random()));
  //               //                   },
  //               //                   child:  Container(
  //               //                     height: 45,
  //               //                     width: MediaQuery.of(context).size.width - 220,
  //               //                     decoration: BoxDecoration(
  //               //                         color: Colors.white,
  //               //                         borderRadius: BorderRadius.circular(20.0),
  //               //                         boxShadow: [BoxShadow(
  //               //                           color: AppColor.skywhite,
  //               //                           blurRadius: 15.0,
  //               //                         ),]
  //               //                     ),
  //               //                     child: Center(
  //               //                       child: Text("Start",
  //               //                         style: TextStyle(
  //               //                             color: AppColor.violet,
  //               //                             fontFamily: 'Montserrat',
  //               //                             fontWeight: FontWeight.w800,
  //               //                             fontSize: 18.0
  //               //
  //               //                         ),),
  //               //                     ),
  //               //                   ),
  //               //                 )
  //               //
  //               //               ],
  //               //             ),
  //               //           ),
  //               //         ),
  //               //       ),
  //               //     ),
  //               //
  //               //   ),
  //               // ),
  //             ),
  //           ),
  //           // I0mage.asset('assets/h.jpeg',fit: BoxFit.fitHeight,
  //           // height: MediaQuery.of(context).size.height,
  //           //   width: MediaQuery.of(context).size.width,
  //           // ),
  //           // Image.network(
  //           //   "https://github.com/RitickSaha/glassmophism/blob/master/example/assets/bg.png?raw=true",
  //           //   fit: BoxFit.cover,
  //           //   height: double.infinity,
  //           //   width: double.infinity,
  //           //   scale: 1,
  //           // ),
  //           // Container(
  //           //   height: double.infinity,
  //           //   width: double.infinity,
  //           //   decoration: BoxDecoration(
  //           //     gradient: new LinearGradient(
  //           //         colors: [AppColor.violet,AppColor.skywhite],
  //           //         begin: Alignment.topLeft,
  //           //         end: Alignment.bottomRight,
  //           //         stops: [0.1,0.50]
  //           //     ),
  //           //     //  borderRadius: BorderRadius.all(Radius.circular(25.0)),
  //           //   ),
  //           //   //   color: Colors.red,
  //           // ),
  //           // Image.asset('assets/med1.jpg',fit: BoxFit.cover,
  //           // height: double.infinity,
  //           // width: double.infinity,),
  //           SafeArea(
  //             child: Padding(
  //               padding: const EdgeInsets.only(left: 20.0,right: 20.0),
  //               child: Align(
  //                 alignment: Alignment.center,
  //                 child: SingleChildScrollView(
  //                   child: Column(
  //                     children: [
  //                       //SizedBox(height: 10,),
  //                       IconButton(icon: Icon(Icons.movie),color: AppColor.black1, onPressed: (){
  //                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> dev()));
  //                       }),
  //                       // Animate(),
  //                       Image.asset('assets/3d.png',height: 300,width: 450,),
  //                       Align(
  //                         alignment: Alignment.bottomCenter,
  //                         child: Padding(
  //                           padding: const EdgeInsets.all(8.0),
  //                           child: Text("Less Stress and More Fit",
  //                             style: GoogleFonts.poppins(
  //                                 color: Colors.black87,
  //                                 fontSize: 18.0
  //                             ),),
  //                         ),
  //                       ),
  //                       GlassmorphicContainer(
  //                           width: 250,
  //                           height: 230,
  //                           borderRadius: 20,
  //                           blur: 20,
  //                           alignment: Alignment.bottomCenter,
  //                           border: 2,
  //                           linearGradient: LinearGradient(
  //                               begin: Alignment.topLeft,
  //                               end: Alignment.bottomRight,
  //                               colors: [
  //                                 Color(0xFFffffff).withOpacity(0.1),
  //                                 Color(0xFFFFFFFF).withOpacity(0.05),
  //                               ],
  //                               stops: [
  //                                 0.1,
  //                                 1,
  //                               ]),
  //                           borderGradient: LinearGradient(
  //                             begin: Alignment.topLeft,
  //                             end: Alignment.bottomRight,
  //                             colors: [
  //                               Color(0xFFffffff).withOpacity(0.5),
  //                               Color((0xFFFFFFFF)).withOpacity(0.5),
  //                             ],
  //                           ),
  //                           child: Center(
  //                             child: Padding(
  //                               padding: const EdgeInsets.all(18.0),
  //                               child: SingleChildScrollView(
  //                                 child: Column(
  //                                   children: [
  //                                     Padding(
  //                                       padding: const EdgeInsets.all(8.0),
  //                                       child: GestureDetector(
  //                                           onTap: (){
  //                                             Navigator.of(context).push(MaterialPageRoute(builder: (context)=> med() ));
  //                                             //   Custom(context: context).showSuccessAlertDialog("Im Alex", "Happy");
  //                                           },
  //                                           child:
  //
  //                                           Container(
  //                                             height: 30,
  //                                             width: 330,
  //                                             decoration: BoxDecoration(
  //                                               //  color: AppColor.violet,
  //                                               // border: Border.all(color: AppColor.black1),
  //                                               // borderRadius: BorderRadius.all(Radius.circular(5.0))
  //                                             ),
  //                                             child: Center(
  //                                               child: Text("Mediate Kickstart",
  //                                                 style: GoogleFonts.poppins(
  //                                                     color: AppColor.skywhite1,
  //                                                     fontSize: 20.0
  //                                                 ),
  //                                               ),
  //                                             ),
  //                                           )
  //                                       ),
  //                                     ),
  //                                     Container(
  //                                       color: AppColor.skywhite1,
  //                                       height: 0.8,
  //                                       width: 100.0,
  //                                     ),
  //                                     Padding(
  //                                       padding: const EdgeInsets.all(8.0),
  //                                       child: GestureDetector(
  //                                           onTap: (){
  //                                             // Custom(context: context).showSuccessAlertDialog("Im john", "Sad");
  //                                             Navigator.of(context).push(MaterialPageRoute(builder: (context)=> welcome2() ));
  //                                           },
  //                                           child: Container(
  //                                             height: 30,
  //                                             width: 350,
  //                                             decoration: BoxDecoration(
  //                                               // color: AppColor.violet,
  //                                               //  border: Border.all(color: AppColor.skywhite1),
  //                                               //   borderRadius: BorderRadius.all(Radius.circular(5.0))
  //                                             ),
  //                                             child: Center(
  //                                               child: Text("MindFul + Motivated",
  //                                                 style: GoogleFonts.poppins(
  //                                                     color: AppColor.skywhite1,
  //                                                     fontSize: 20.0
  //                                                 ),
  //                                                 // style: TextStyle(
  //                                                 //   fontFamily: 'Montserrat',
  //                                                 //   color: Colors.white,
  //                                                 //   fontWeight: FontWeight.bold,
  //                                                 //   fontSize: 24.0,
  //                                                 // ),
  //                                               ),
  //                                             ),
  //                                           )
  //                                       ),
  //                                     ),
  //                                     Container(
  //                                       color: AppColor.skywhite2,
  //                                       height: 0.8,
  //                                       width: 100.0,
  //                                     ),
  //                                     Padding(
  //                                       padding: const EdgeInsets.all(8.0),
  //                                       child: GestureDetector(
  //                                           onTap: (){
  //                                             // Custom(context: context).showSuccessAlertDialog("Im john", "Sad");
  //                                             Navigator.of(context).push(MaterialPageRoute(builder: (context)=> welcome() ));
  //                                           },
  //                                           child: Container(
  //                                             height: 30,
  //                                             width: 330,
  //                                             decoration: BoxDecoration(
  //                                               // color: AppColor.violet,
  //                                               //  border: Border.all(color: AppColor.skywhite1),
  //                                               //   borderRadius: BorderRadius.all(Radius.circular(5.0))
  //                                             ),
  //                                             child: Center(
  //                                               child: Text("Inside Out",
  //                                                 style: GoogleFonts.poppins(
  //                                                     color: AppColor.skywhite1,
  //                                                     fontSize: 20.0
  //                                                 ),
  //                                                 // style: TextStyle(
  //                                                 //   fontFamily: 'Montserrat',
  //                                                 //   color: Colors.white,
  //                                                 //   fontWeight: FontWeight.bold,
  //                                                 //   fontSize: 24.0,
  //                                                 // ),
  //                                               ),
  //                                             ),
  //                                           )
  //                                       ),
  //                                     ),
  //                                     // Padding(
  //                                     //   padding: const EdgeInsets.all(8.0),
  //                                     //   child: GestureDetector(
  //                                     //       onTap: (){
  //                                     //         //Custom(context: context).showSuccessAlertDialog("Im Sam", "Confuse");
  //                                     //         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> random2() ));
  //                                     //       },
  //                                     //       child:
  //                                     //       Column(
  //                                     //         children: [
  //                                     //           Image.asset('assets/confuse.png',height: 60,width: 50,),
  //                                     //           Text("Confuse",
  //                                     //             style: TextStyle(
  //                                     //               fontFamily: 'Montserrat',
  //                                     //               color: Colors.white,
  //                                     //               fontWeight: FontWeight.bold,
  //                                     //               fontSize: 12.0,
  //                                     //             ),),
  //                                     //         ],
  //                                     //       )
  //                                     //   ),
  //                                     // ),
  //                                     // Padding(
  //                                     //   padding: const EdgeInsets.all(8.0),
  //                                     //   child: GestureDetector(
  //                                     //       onTap: (){
  //                                     //         // Custom(context: context).showSuccessAlertDialog("Im Peter", "Hate");
  //                                     //         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> random3() ));
  //                                     //       },
  //                                     //       child: Column(
  //                                     //         children: [
  //                                     //           Image.asset('assets/hate.png',height: 60,width: 50,),
  //                                     //           Text("Hate",
  //                                     //             style: TextStyle(
  //                                     //               fontFamily: 'Montserrat',
  //                                     //               color: Colors.white,
  //                                     //               fontWeight: FontWeight.bold,
  //                                     //               fontSize: 12.0,
  //                                     //             ),),
  //                                     //         ],
  //                                     //       )
  //                                     //   ),
  //                                     // ),
  //                                   ],
  //                                 ),
  //                               ),
  //                             ),
  //                           )),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //           // Align(
  //           //   alignment: Alignment(0.95,0.85),
  //           //   child: Container(
  //           //     height: 120,
  //           //     width: 90,
  //           //     decoration: BoxDecoration(
  //           //       image: DecorationImage(
  //           //         image: AssetImage(
  //           //             'assets/med1.jpg'),
  //           //         fit: BoxFit.fitHeight,
  //           //       ),
  //           //       shape: BoxShape.circle,),
  //           //     child: GestureDetector(
  //           //       onTap: (){
  //           //         //  Custom(context: context).showSuccessAlertDialog("Hey", "Mediatiate");
  //           //         //  timer1
  //           //         //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PomodoroTimer()));
  //           //         //timer(Second option)
  //           //         // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>timer()));
  //           //       },
  //           //     ),
  //           //     // child:
  //           //     // Image.asset('assets/med1.jpg',fit: BoxFit.cover,
  //           //     //   height: double.infinity,
  //           //     //   width: double.infinity,),
  //           //   ),
  //           // ),
  //         ],
  //       ),
  //     ),
  //   );
  //   //   Scaffold(
  //   //
  //   //     body: SingleChildScrollView(
  //   //       child: Stack(
  //   //         children: [
  //   //           Container(
  //   //               height: MediaQuery.of(context).size.height,
  //   //               width: MediaQuery.of(context).size.width,
  //   //               decoration: BoxDecoration(
  //   //                   gradient: new LinearGradient(
  //   //                       colors: [AppColor.pink,AppColor.violet,AppColor.pink1,AppColor.pink2,AppColor.skyblue,AppColor.violet,AppColor.pink2],
  //   //                       begin: Alignment.topLeft,
  //   //                       end: Alignment.bottomRight,
  //   //                       stops: [0.1,0.152,0.33,0.45,0.45,0.74,0.85]
  //   //                   )
  //   //               ),
  //   //               //   color: Colors.red,
  //   //           ),
  //   //           ClipRRect(
  //   //             child: BackdropFilter(
  //   //               filter: ImageFilter.blur(
  //   //                   sigmaX: 16.0,
  //   //                   sigmaY: 16.0
  //   //               ),
  //   //               child: Center(
  //   //                 child: Container(
  //   //                   decoration: BoxDecoration(
  //   //                       color: Colors.black.withOpacity(0.05),
  //   //                       borderRadius: BorderRadius.all(Radius.circular(5.0)),
  //   //                       boxShadow: [BoxShadow(
  //   //                         color: Colors.white10,
  //   //                         blurRadius: 5.0,
  //   //                       ),]
  //   //                   ),
  //   //                   height: MediaQuery.of(context).size.height,
  //   //                   width: MediaQuery.of(context).size.width,
  //   //                   child:  ClipRRect(
  //   //                     child: BackdropFilter(
  //   //                       filter: ImageFilter.blur(
  //   //                           sigmaX: 16.0,
  //   //                           sigmaY: 16.0
  //   //                       ),
  //   //                       child: Padding(
  //   //                         padding: const EdgeInsets.only(top: 150.0,bottom: 150.0,left: 45.0,right: 45.0),
  //   //                         child: Container(
  //   //                           decoration: BoxDecoration(
  //   //                               color: Colors.white.withOpacity(0.3),
  //   //                               borderRadius: BorderRadius.all(Radius.circular(25.0)),
  //   //                               boxShadow: [BoxShadow(
  //   //                                 color: Colors.white10,
  //   //                                 blurRadius: 5.0,
  //   //                               ),
  //   //                               ]
  //   //                           ),
  //   //                           child: Column(
  //   //                             children: [
  //   //                               // Padding(
  //   //                               //   padding: const EdgeInsets.all(8.0),
  //   //                               //   child: Text("Cricket",
  //   //                               //   style: TextStyle(
  //   //                               //     fontFamily: 'Montserrat',
  //   //                               //     fontWeight: FontWeight.bold,
  //   //                               //     fontSize: 30.0
  //   //                               //
  //   //                               //   ),),
  //   //                               // ),
  //   //                               // SizedBox(height: 80,),
  //   //                               // Text("Play your game",
  //   //                               //   style: TextStyle(
  //   //                               //       fontFamily: 'Montserrat',
  //   //                               //       fontWeight: FontWeight.normal,
  //   //                               //       fontSize: 18.0
  //   //                               //
  //   //                               //   ),),
  //   //                               SizedBox(height: 40,),
  //   //                               // Text("Cric Camp",
  //   //                               //   style: TextStyle(
  //   //                               //       fontFamily: 'Montserrat',
  //   //                               //       fontWeight: FontWeight.normal,
  //   //                               //       fontSize: 14.0
  //   //                               //
  //   //                               //   ),),
  //   //                               SizedBox(height: 80,),
  //   //                               GestureDetector(
  //   //                                 onTap: (){
  //   //                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => random()));
  //   //                                 },
  //   //                                 child:  Container(
  //   //                                   height: 45,
  //   //                                   width: MediaQuery.of(context).size.width - 220,
  //   //                                   decoration: BoxDecoration(
  //   //                                     color: Colors.white,
  //   //                                    borderRadius: BorderRadius.circular(20.0),
  //   //                                     boxShadow: [BoxShadow(
  //   //                                     color: AppColor.skywhite,
  //   //                                     blurRadius: 15.0,
  //   //                                   ),]
  //   //                                   ),
  //   //                                   child: Center(
  //   //                                     child: Text("Start",
  //   //                                       style: TextStyle(
  //   //                                         color: AppColor.violet,
  //   //                                           fontFamily: 'Montserrat',
  //   //                                           fontWeight: FontWeight.w800,
  //   //                                           fontSize: 18.0
  //   //
  //   //                                       ),),
  //   //                                   ),
  //   //                                 ),
  //   //                               )
  //   //
  //   //                             ],
  //   //                           ),
  //   //                         ),
  //   //                       ),
  //   //                     ),
  //   //                   ),
  //   //
  //   //                 ),
  //   //               ),
  //   //             ),
  //   //           )
  //   //         ],
  //   //
  //   //       ),
  //   //     )
  //   //
  //   // );
  // }
}


