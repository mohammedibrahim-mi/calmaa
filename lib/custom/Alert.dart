
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:cool_calm/screen/happy.dart';


class Custom{
  final BuildContext context;
  Custom({@required this.context});
  showSuccessAlertDialog(
      String title,
      String message,
      ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)), //this right here
            child: Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [Colors.white, Colors.white],
                    begin: Alignment.topRight, //const FractionalOffset(0.0, 0.5),
                    end: Alignment.bottomLeft, //const FractionalOffset(1.0, 0.6),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
                  borderRadius: BorderRadius.circular(15.0)
              ),
              height: MediaQuery.of(context).size.height * 0.30,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title.toUpperCase(),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 7.0, bottom: 10.0),
                        height: 2.0,
                        color:Colors.black
                    ),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: TextStyle(

                        fontSize: 13.0,
                        color: Colors.black,

                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      child:GestureDetector(
                        child: Container(
                          width: 100,
                          height: 40,
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                          decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [Colors.yellow, Colors.yellow],
                                begin: Alignment.bottomLeft,
                                //const FractionalOffset(0.0, 0.5),
                                end: Alignment.topRight,
                                //const FractionalOffset(1.0, 0.6),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),

                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "ok".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> random() ));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
    // show the dialog
  }
}

class Custom1{
  final BuildContext context;
  Custom1({@required this.context});
  showSuccessAlertDialog(
      String title,
      String message,
      ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)), //this right here
            child: Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [Colors.white, Colors.white],
                    begin: Alignment.topRight, //const FractionalOffset(0.0, 0.5),
                    end: Alignment.bottomLeft, //const FractionalOffset(1.0, 0.6),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
                borderRadius: BorderRadius.circular(15.0)
              ),
              height: MediaQuery.of(context).size.height * 0.30,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title.toUpperCase(),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 7.0, bottom: 10.0),
                        height: 2.0,
                        color:Colors.black
                    ),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: TextStyle(

                        fontSize: 13.0,
                        color: Colors.black,

                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      child:GestureDetector(
                        child: Container(
                          width: 100,
                          height: 40,
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                          decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [Colors.yellow, Colors.yellow],
                                begin: Alignment.bottomLeft,
                                //const FractionalOffset(0.0, 0.5),
                                end: Alignment.topRight,
                                //const FractionalOffset(1.0, 0.6),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),

                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "ok".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
    // show the dialog
  }
}

