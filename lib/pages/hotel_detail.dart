import 'package:jazebeh/components/rating_bar.dart';
import 'package:jazebeh/data/hotel_data.dart';
import 'package:flutter/material.dart';

class HotelDetails extends StatelessWidget {
  final HotelData hotelData;
  HotelDetails({this.hotelData});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.black,
        
          //automaticallyImplyLeading: false,
          //leading: Icon(Icons.arrow_back_ios, color: Colors.white,),
          title: new Text(
            hotelData.title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Stack(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Image.network(hotelData.image),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RatingBar(
                              rating: hotelData.ratingBar,
                            ),
                            new Text(
                              hotelData.title,
                              style: TextStyle(color: Colors.white, fontSize: 24),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                            Colors.black54,
                            Colors.black.withOpacity(0.2)
                          ])),
                    ),
                  ),
                 
                ],
              ),
               Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: <Widget>[
                        new  RichText(
                          text: TextSpan(text: hotelData.subTitle, style: TextStyle(color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold,),
                          ), 
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: new Text(hotelData.details, textAlign: TextAlign.end,),
                        )
                      ],
                    ),

                    
                  )
            ],
          ),
        ));
  }
}
