import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:cool_calm/custom/color.dart';
import 'package:cool_calm/model/model1.dart';
import 'package:cool_calm/screen/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

import 'glassmorphism.dart';
//import 'package:flutter_launch/flutter_launch.dart';
//import 'package:url_launcher/url_launcher.dart';

class finals extends StatefulWidget {
  final String score;
  finals(this.score);
  @override _finalsState createState() => _finalsState();
}

class _finalsState extends State<finals> {

  String imageToShow;
  String total;
//  player Player =playerList[];
  static var listImagesnotFound = [
    "assets/red.jpeg",
    "assets/blue.jpeg",
    "assets/yellow.jpeg",
    // "assets/notfound.png",
    // "assets/robno.png",
    // "assets/spano.jpg"
  ];
  //"0","2","6","3","4","Nb+1","Wd+1","1"
  List<int>  listTexts = [

    0,1,2,3
  ];

  int count =1;
  void counter(){
    setState(() {

      count++;

    });
  }

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
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Target :",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),),
                        Text(widget.score,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                        color: AppColor.violet,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        boxShadow: [BoxShadow(
                          color: Colors.white10,
                          blurRadius: 5.0,
                        ),
                        ],
                    ),
                    child: Center(
                      child: Text(listTexts.first.toString(),
                        style: TextStyle(
                            color: AppColor.pinkwhite,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w800,
                            fontSize: 48.0

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Text('$count',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),),
                  Text('$total',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),),
                  GestureDetector(
                    onTap: (){
                      setState(() {

                        listTexts.shuffle();
                        int to = listTexts.first;
                      //  print(to);

                        //print(to + listTexts);
                        listImagesnotFound.shuffle();
                        counter();
                        var i;
                        for(i=0;i <= count;i++){


                        }
                if(count == 14){
                    Navigator.of(context).pop();
                }
                      });
                    },
                    child:  Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width - 220,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                            color: AppColor.skywhite,
                            blurRadius: 15.0,
                          ),]
                      ),
                      child: Center(
                        child: Text("HIT",
                          style: TextStyle(
                              color: AppColor.violet,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0

                          ),),
                      ),
                    ),
                  ),
                  // Text(yourscore,
                  //   style: TextStyle(
                  //       color: AppColor.pinkwhite,
                  //       fontFamily: 'Montserrat',
                  //       fontWeight: FontWeight.w800,
                  //       fontSize: 48.0
                  //
                  //   ),
                  // ),
                  // SizedBox(height: 40,),
                  // Stack(
                  //   children: [
                  //
                  //     Container(
                  //       height: 70,
                  //       width: 280,
                  //       decoration: BoxDecoration(
                  //         gradient: new LinearGradient(
                  //             colors: [AppColor.pink,AppColor.violet,AppColor.pink1,AppColor.pink2,AppColor.skyblue,AppColor.violet,AppColor.pink2],
                  //             begin: Alignment.topLeft,
                  //             end: Alignment.bottomRight,
                  //             stops: [0.1,0.152,0.33,0.45,0.45,0.74,0.85]
                  //         ),
                  //         borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  //       ),
                  //
                  //       //   color: Colors.red,
                  //     ),
                  //
                  //     BackdropFilter(
                  //       filter: ImageFilter.blur(
                  //           sigmaX: 26.0,
                  //           sigmaY: 16.0
                  //       ),
                  //       child: Container(
                  //         height: 70,
                  //         width: 280,
                  //         decoration: BoxDecoration(
                  //             color: Colors.white.withOpacity(0.3),
                  //             borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  //             boxShadow: [BoxShadow(
                  //               color: Colors.white10,
                  //               blurRadius: 5.0,
                  //             ),
                  //             ]
                  //         ),
                  //         child: Center(
                  //           child: Text("Pick a Player",
                  //             style: TextStyle(
                  //               fontFamily: 'Montserrat',
                  //               color: Colors.black,
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 22.0,
                  //             ),),
                  //         ),
                  //       ),
                  //     ),
                  //
                  //     // ClipRRect(
                  //     //   child: BackdropFilter(
                  //     //     // filter: ImageFilter.blur(
                  //     //     //     sigmaX: 16.0,
                  //     //     //     sigmaY: 16.0
                  //     //     // ),
                  //     //     // child: Center(
                  //     //     //   child: Container(
                  //     //     //     decoration: BoxDecoration(
                  //     //     //         color: Colors.black.withOpacity(0.05),
                  //     //     //         borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  //     //     //         boxShadow: [BoxShadow(
                  //     //     //           color: Colors.white10,
                  //     //     //           blurRadius: 5.0,
                  //     //     //         ),]
                  //     //     //     ),
                  //     //     //     height: 50,
                  //     //     //     width: 50,
                  //     //     //     // child:  ClipRRect(
                  //     //     //     //   child: BackdropFilter(
                  //     //     //     //     // filter: ImageFilter.blur(
                  //     //     //     //     //     sigmaX: 16.0,
                  //     //     //     //     //     sigmaY: 16.0
                  //     //     //     //     // ),
                  //     //     //     //     child: Padding(
                  //     //     //     //       padding: const EdgeInsets.only(top: 150.0,bottom: 150.0,left: 45.0,right: 45.0),
                  //     //     //     //       // child: Container(
                  //     //     //     //       //   decoration: BoxDecoration(
                  //     //     //     //       //       color: Colors.white.withOpacity(0.3),
                  //     //     //     //       //       borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  //     //     //     //       //       boxShadow: [BoxShadow(
                  //     //     //     //       //         color: Colors.white10,
                  //     //     //     //       //         blurRadius: 5.0,
                  //     //     //     //       //       ),
                  //     //     //     //       //       ]
                  //     //     //     //       //   ),
                  //     //     //     //       //   child: Column(
                  //     //     //     //       //     children: [
                  //     //     //     //       //       Padding(
                  //     //     //     //       //         padding: const EdgeInsets.all(8.0),
                  //     //     //     //       //         child: Text("Cric Camp",
                  //     //     //     //       //           style: TextStyle(
                  //     //     //     //       //               fontFamily: 'Montserrat',
                  //     //     //     //       //               fontWeight: FontWeight.bold,
                  //     //     //     //       //               fontSize: 30.0
                  //     //     //     //       //
                  //     //     //     //       //           ),),
                  //     //     //     //       //       ),
                  //     //     //     //       //       SizedBox(height: 40,),
                  //     //     //     //       //       Text("Cric Camp",
                  //     //     //     //       //         style: TextStyle(
                  //     //     //     //       //             fontFamily: 'Montserrat',
                  //     //     //     //       //             fontWeight: FontWeight.normal,
                  //     //     //     //       //             fontSize: 18.0
                  //     //     //     //       //
                  //     //     //     //       //         ),),
                  //     //     //     //       //       SizedBox(height: 40,),
                  //     //     //     //       //       Text("Cric Camp",
                  //     //     //     //       //         style: TextStyle(
                  //     //     //     //       //             fontFamily: 'Montserrat',
                  //     //     //     //       //             fontWeight: FontWeight.normal,
                  //     //     //     //       //             fontSize: 14.0
                  //     //     //     //       //
                  //     //     //     //       //         ),),
                  //     //     //     //       //       SizedBox(height: 80,),
                  //     //     //     //       //       GestureDetector(
                  //     //     //     //       //         onTap: (){
                  //     //     //     //       //           Navigator.of(context).push(MaterialPageRoute(builder: (context) => random()));
                  //     //     //     //       //         },
                  //     //     //     //       //         child:  Container(
                  //     //     //     //       //           height: 45,
                  //     //     //     //       //           width: MediaQuery.of(context).size.width - 220,
                  //     //     //     //       //           decoration: BoxDecoration(
                  //     //     //     //       //               color: Colors.white,
                  //     //     //     //       //               borderRadius: BorderRadius.circular(20.0),
                  //     //     //     //       //               boxShadow: [BoxShadow(
                  //     //     //     //       //                 color: AppColor.skywhite,
                  //     //     //     //       //                 blurRadius: 15.0,
                  //     //     //     //       //               ),]
                  //     //     //     //       //           ),
                  //     //     //     //       //           child: Center(
                  //     //     //     //       //             child: Text("Start",
                  //     //     //     //       //               style: TextStyle(
                  //     //     //     //       //                   color: AppColor.violet,
                  //     //     //     //       //                   fontFamily: 'Montserrat',
                  //     //     //     //       //                   fontWeight: FontWeight.w800,
                  //     //     //     //       //                   fontSize: 18.0
                  //     //     //     //       //
                  //     //     //     //       //               ),),
                  //     //     //     //       //           ),
                  //     //     //     //       //         ),
                  //     //     //     //       //       )
                  //     //     //     //       //
                  //     //     //     //       //     ],
                  //     //     //     //       //   ),
                  //     //     //     //       // ),
                  //     //     //     //     ),
                  //     //     //     //   ),
                  //     //     //     // ),
                  //     //     //
                  //     //     //   ),
                  //     //     // ),
                  //     //   ),
                  //     // )
                  //   ],
                  //
                  // ),
                  // // Padding(
                  // //   padding: const EdgeInsets.all(18.0),
                  // //   child: Container(
                  // //     height: 60,
                  // //     width: MediaQuery.of(context).size.width,
                  // //     decoration: BoxDecoration(
                  // //         gradient: new LinearGradient(
                  // //             colors: [AppColor.pink2.withOpacity(0.8),AppColor.pink.withOpacity(0.8),AppColor.violet.withOpacity(0.8)],
                  // //             begin: Alignment.topCenter,
                  // //             end: Alignment.bottomCenter,
                  // //             stops: [0.1,0.5,1.0]
                  // //         ),
                  // //       borderRadius: BorderRadius.circular(15.0),
                  // //     ),
                  // //     child: Center(
                  // //       child: Text("Pick a Player",
                  // //         style: TextStyle(
                  // //             fontFamily: 'Montserrat',
                  // //             color: AppColor.skywhite1,
                  // //             fontWeight: FontWeight.normal,
                  // //             fontSize: 22.0,
                  // //         ),),
                  // //     ),
                  // //   ),
                  // // ),
                  // SizedBox(height: 40,),
                  //
                  //
                  // // /  SizedBox(height: 20,),
                  // //                  Container(
                  // //                    height: 300,
                  // //                    width: MediaQuery.of(context).size.width,
                  // //                    child: SingleChildScrollView(
                  // //                      scrollDirection: Axis.horizontal,
                  // //                      child: Row(
                  // //                        children: [
                  // //                          GestureDetector(
                  // //                             onTap: (){
                  // // Navigator.of(context).push(new MaterialPageRoute(builder: (context) => glass()));
                  // //                          },
                  // //                            child: Image.asset("assets/red.jpeg"),
                  // //                          ),
                  // //                          Container(width: 20,),
                  // //                          GestureDetector(
                  // //                            child: Image.asset("assets/tes.jpeg"),
                  // //                          ),
                  // //                          Container(width: 20,),
                  // //                          GestureDetector(
                  // //                            child: Image.asset("assets/red.jpeg"),
                  // //                          )
                  // //                        ],
                  // //                      ),
                  // //                    ),
                  // //                  ),
                  // SingleChildScrollView(
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(28.0),
                  //     child: Container(
                  //       decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           borderRadius: BorderRadius.circular(20.0),
                  //           boxShadow: [BoxShadow(
                  //             color: AppColor.skywhite,
                  //             blurRadius: 15.0,
                  //           ),]
                  //       ),
                  //       child:  SingleChildScrollView(
                  //         child: ListView.builder(
                  //           //scrollDirection: Axis.vertical,
                  //             shrinkWrap: true,
                  //             itemCount : playerList.length,itemBuilder: (Context,index){
                  //           player Player =playerList[index];
                  //           return SingleChildScrollView(
                  //             child: Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: ListTile(
                  //                 title: Text(Player.name),
                  //                 subtitle: Text(Player.description),
                  //                 onTap: (){
                  //                   Navigator.of(context).push(new MaterialPageRoute(builder: (context) => game(listText.first.toString(),Player)));
                  //                 },
                  //               ),
                  //             ),
                  //           );
                  //
                  //
                  //         } ) ,
                  //       ),
                  //     ),
                  //   ),
                  // ),
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
                  // SizedBox(height: 20,),

                ],
              ),
            ),
          ),
        )

    );
  }


}

//}