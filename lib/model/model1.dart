import 'package:flutter/material.dart';

class player{

  String name;
  String description;
  Image image;

  player({
   @required this.image,
    @required this.name,
    @required this.description
});

}


List <player> playerList = [

player(image: Image.asset("assets/dho.jpeg"), name: "Dhoni", description: "Ice Cool Finisher, Helicopter on your way"),
player(image:Image.asset("assets/rai.jpeg"), name: "Raina", description: "Smart and smashing all Fine balls"),
player(image: Image.asset("assets/vir.jpeg"), name: "Virat", description: "Look the ball & eyes, where it goes. "),
//player(image: Image.asset("assets/s.jpeg"), name: "Pant", description: "captain"),
  player(image: Image.asset("assets/ab.jpeg"), name: "abd", description: "360 on your eyes"),
player(image:Image.asset("assets/ro.jpeg"), name: "rohit", description: "Hit Hitting Hitter"),

// player(image: Image.asset("assets/s.jpeg"), name: "maxwell", description: "All Well , when MAx is On"),
// player(image: Image.asset("assets/s.jpeg"), name: "hardik", description: "Hard Hardik"),

];