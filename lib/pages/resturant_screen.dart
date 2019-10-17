import 'dart:io';

import 'package:jazebeh/components/rating_bar.dart';
import 'package:jazebeh/data/resturant_data.dart';
import 'package:jazebeh/pages/resturant_detail.dart';
import 'package:flutter/material.dart';

class ResturantScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ResturantScreenState();
}

class ResturantScreenState extends State<ResturantScreen> {
  Widget resturantProduct() {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 0.5, left: 0),
          //padding: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 2),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ResturantDetails(
                        resturant: dummyData[index],
                      )));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(1, 10),
                    blurRadius: 12,
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(0)),
                image: DecorationImage(
                    image: NetworkImage(dummyData[index].image),
                    fit: BoxFit.fill,
                    colorFilter:
                        ColorFilter.mode(Colors.black54, BlendMode.darken)),
              ),
              child: Align(
                //alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      dummyData[index].name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      dummyData[index].subTitle,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: RatingBar(
                        rating: dummyData[index].ratingBar,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
  Future<bool> _onWillPop(){
    return showDialog(
      context: context,
      builder: (context) {
        return new AlertDialog(
          title: new Text("Are you sure want to exit?"),
          content: Text("Click on Yes exit in app"),
          actions: <Widget>[
            FlatButton(
              onPressed:(){
                exit(0);
              } ,
              child: Text("Yes"),
            ),
            FlatButton(
              onPressed:(){
                Navigator.of(context).pop(false);
              } ,
              child: Text("No"),
            ),
          ],
        );
      }

    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.black,
          title: new Text(
            "Resturant",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.white,
        body: WillPopScope(
          onWillPop: _onWillPop,
          child: resturantProduct()));
  }
}
