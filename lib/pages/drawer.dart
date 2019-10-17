import 'package:jazebeh/pages/hotel_screen.dart';
import 'package:flutter/material.dart';

Drawer MyDrawer(BuildContext context){
  return new Drawer(
    child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: new Text("AdelFaramrzi2@gmail.com",style: TextStyle(color: Colors.white70)),
                accountName: new Text("Adel Faramarzi",),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1542973748-658653fb3d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=333&q=80"),
                    
                  )
                ),
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff008ba3),Color(0xff62efff)]
                    
                  )
                  
                ),
              ),
               InkWell(
                 onTap: (){
                   Navigator.push(context, new MaterialPageRoute(builder: (context)=> new HotelScreen()));
                 },
                  child: new ListTile(
                   title: new Text("Profile"),
                   leading: Icon(Icons.account_circle,color: Colors.red,),
                 ),
               ),
               InkWell(
                 onTap: (){
                 },
                  child: new ListTile(
                   title: new Text("Archive"),
                   leading: Icon(Icons.archive,color: Colors.red,),
                 ),
               ),
               InkWell(
                 onTap: (){
                 },
                  child: new ListTile(
                   title: new Text("Home Page"),
                   leading: Icon(Icons.home,color: Colors.red,),
                 ),
               ),
               
               Divider(),
               InkWell(
                 onTap: (){
                  
                 },
                  child: new ListTile(
                   title: new Text("Settings"),
                   leading: Icon(Icons.settings,color: Colors.grey,),
                 ),
               ),
               InkWell(
                 onTap: (){
                 },
                  child: new ListTile(
                   title: new Text("About"),
                   leading: Icon(Icons.help,color: Colors.blue,),
                 ),
               )
            ]
    )
  );
}