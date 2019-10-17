import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}
 class SplashScreenState extends State<SplashScreen>{
  
  startTime(){
    var _duration = new Duration(seconds: 5 );
    return new Timer(_duration, navigatorpage );
  }

  navigatorpage(){
    Navigator.of(context).pushNamed("/home_screen");
  }
  @override
  void initState() {
     super.initState();
     startTime();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Center(
            child: Text("JAZEBEH" , style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold,),),
          ),
          Padding(padding: const EdgeInsets.only(bottom: 15),
          child: Center(
            child: new  Align(
              alignment: Alignment.bottomCenter,
              child: new CircularProgressIndicator(
                 valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),                
              )
            ),
          ),
          ),
          
        ],
      ) ,
    );
  }

 }