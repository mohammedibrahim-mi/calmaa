// import 'dart:async';
// import 'dart:io';
// import 'dart:math';
// import 'dart:ui';
// import 'package:cool_calm/model/model1.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/animation.dart';
// //import 'package:flutter_launch/flutter_launch.dart';
// //import 'package:url_launcher/url_launcher.dart';
//
// class glass extends StatefulWidget {
//   // final String Total;
//   // final player Player;
//   // game(this.Total,this.Player);
//
//   @override _glassState createState() => _glassState();
// }
//
// class _glassState extends State<glass> {
//
//   String imageToShow;
//
//   static var listImagesnotFound = [
//     "assets/red.jpeg",
//     "assets/blue.jpeg",
//     "assets/yellow.jpeg",
//     // "assets/notfound.png",
//     // "assets/robno.png",
//     // "assets/spano.jpg"
//   ];
//
//   static var listText = [
//     "0","2","6","3","4","Nb+1","Wd+1","1"
//   ];
//
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
// //imageToShow = listImagesnotFound [_random.nextInt(listImagesnotFound.length)];
// //     Timer.periodic(Duration(seconds: 1), (Timer t) {
// //       setState(() {
// //         listImagesnotFound.shuffle();
// //       });
// //     });
//
//
//   }
//   // Future.delayed(Duration(seconds: 2)).then((value) {
//   //
//   // });
//
//
//
//   // static var _random = Random();
//   // if(listText == 0 ){
//   // Image.asset(listImagesnotFound.first.toString()),
//   // }
//
//
//   Widget build(BuildContext context){
//     return Scaffold(
//         // appBar: AppBar(
//         //   title: Text("Home"),
//         // ),
//
//         body: SingleChildScrollView(
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             decoration: BoxDecoration(
//              image: DecorationImage(
//                 image: AssetImage(
//                 'assets/red.jpeg'),
//             fit: BoxFit.fill,
//           ),
//             ),
//          //   color: Colors.red,
//             child: ClipRRect(
//               child: BackdropFilter(
//                 filter: ImageFilter.blur(
//                   sigmaX: 16.0,
//                   sigmaY: 16.0
//                 ),
//                 child: Center(
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.3),
//                       borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                         boxShadow: [BoxShadow(
//                           color: Colors.white10,
//                           blurRadius: 5.0,
//                         ),]
//                     ),
//                     height: 300,
//                        width: 300,
//                     child:  Padding(
//                       padding: const EdgeInsets.all(18.0),
//                       child: Container(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             // Image.asset("assets/red.jpeg"),
//                             //  Container(
//                             //    height: 50,
//                             //    width: 80,
//                             //    color: Colors.white,
//                             //    child:   Text("Animae",textAlign: TextAlign.center,),
//                             //
//                             //  )
//                           ],
//                         )
//                       ),
//                     ),
//
//                   ),
//                 ),
//               ),
//             )
//           ),
//         )
//
//     );
//   }
//
//
// }
//
// //}
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'dart:ui';

import 'package:cool_calm/custom/color.dart';


class GlassmorphicSample extends StatefulWidget {
  @override
  State<GlassmorphicSample> createState() => GlassmorphicSampleState();
}

class GlassmorphicSampleState extends State<GlassmorphicSample> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            // Image.network(
            //   "https://github.com/RitickSaha/glassmophism/blob/master/example/assets/bg.png?raw=true",
            //   fit: BoxFit.cover,
            //   height: double.infinity,
            //   width: double.infinity,
            //   scale: 1,
            // ),
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: new LinearGradient(
                    colors: [AppColor.violet,AppColor.skywhite],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.1,0.50]
                ),
                //  borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              //   color: Colors.red,
            ),
            // Image.asset('assets/med1.jpg',fit: BoxFit.cover,
            // height: double.infinity,
            // width: double.infinity,),
            SafeArea(
              child: Center(
                child: GlassmorphicContainer(
                    width: 350,
                    height: 350,
                    borderRadius: 20,
                    blur: 20,
                    alignment: Alignment.bottomCenter,
                    border: 2,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ]),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.5),
                        Color((0xFFFFFFFF)).withOpacity(0.5),
                      ],
                    ),
                    child: null),
              ),
            ),
          ],
        ),
      ),
    );
  }
}