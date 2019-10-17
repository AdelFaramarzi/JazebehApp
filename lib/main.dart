import 'package:jazebeh/pages/hotel_screen.dart';
import 'package:jazebeh/pages/login-screen.dart';
import 'package:jazebeh/pages/products_deitaile.dart';
import 'package:jazebeh/pages/resturant_screen.dart';
import 'package:flutter/material.dart';
import 'package:jazebeh/pages/splash_screen.dart';


import 'home_page.dart';

void main()=> runApp(MyApp());


class MyApp extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() => MyAppState();

}


class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
    
    debugShowCheckedModeBanner: false,
    title: "Jazebeh",
    home: HomePage(),

         
 

    //initialRoute: "/splash_screen",
    routes: {
      "/splash_screen" : (context) => SplashScreen(),
      "/home_screen" : (context) => Directionality(textDirection: TextDirection.ltr, child: new HomePage(),),
      "/products_deitaile" : (context) => Directionality(textDirection: TextDirection.rtl,child: ProductsDetails(),),
      "/login_screen" : (context) => Directionality(textDirection: TextDirection.rtl, child: new LoginScreen(),),
      "/resturant_screen": (context) => Directionality(textDirection: TextDirection.rtl, child:new ResturantScreen(),),
      "/hotel_screen":(context)=> new HotelScreen()
    },
    theme: new  ThemeData(
      primarySwatch: Colors.green,
      primaryColor: Colors.black,
      accentColor: Colors.orange,
      primaryIconTheme: IconThemeData(color : Colors.white),
      primaryTextTheme: TextTheme(title: TextStyle(color: Colors.blue)),
    ),
    );
  }
}