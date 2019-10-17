
import 'package:jazebeh/pages/home_screen.dart';
import 'package:jazebeh/pages/hotel_screen.dart';
import 'package:jazebeh/pages/login-screen.dart';
import 'package:jazebeh/pages/resturant_screen.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePageState();

}

class HomePageState extends State<HomePage>{

  
  int pageIndex=0;

  final LoginScreen _accountScreen= LoginScreen();
  final HotelScreen _hotelScreen = HotelScreen();
  final  ResturantScreen _resturantScreen = ResturantScreen();
  final HomeScreen _homeScreen = HomeScreen();
 // GlobalKey _bottomNavigationKey = GlobalKey();
  Widget _showPages = HomeScreen();
  Widget _pageChooser(int page){
    switch(page){
      case 0:
      return  _homeScreen;
      break;
      case 1:
      return _hotelScreen;
      break;
      case 2:
      return _resturantScreen;
      break;
      case 3:
      return  _accountScreen;
      break;

      default:
      return new Container(
        child:new Center(
          child: new Text("No page found"),
        )
      );

    }
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
        barBackgroundColor: Colors.white,
        textColor: Colors.black,
        circleColor: Color(0xff26C6DA),
        inactiveIconColor: Color(0xff26C6DA),
          tabs: [
            
          new TabData(iconData: Icons.home, title: "Home" , onclick: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
            Navigator.pop(context);
          }), 
          new TabData(iconData: Icons.hotel, title: "Hotel",onclick: (){
          }),
          new TabData(iconData: Icons.restaurant, title: "Resturant",
          onclick: (){
            //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> ResturantScreen()));
           // Navigator.pop(context);
          }),
          new TabData(iconData: Icons.account_circle, title: "Account",
          onclick: (){
           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
            //Navigator.of(context).pop();
          },
          )
           ],
          
             onTabChangedListener: (int _tabIndex) {
                 setState(() {
                _showPages= _pageChooser(_tabIndex); 
                }); 
                },
                      ),
            body: _showPages,             
       );
  }

}