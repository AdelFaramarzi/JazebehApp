import 'package:jazebeh/components/rating_bar.dart';
import 'package:jazebeh/data/resturant_data.dart';
import 'package:flutter/material.dart';

class ResturantDetails extends StatelessWidget {
  final Resturant resturant;
  ResturantDetails({this.resturant});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.black,
          title: new Text(
            resturant.name,
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
                      new Image.network(resturant.image),
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
                              rating: resturant.ratingBar,
                            ),
                            new Text(
                              resturant.subTitle,
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
                    child: new RichText(
                      text: TextSpan(text: resturant.detailes, style: TextStyle(color: Colors.black54,),),
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                    )
                  )
            ],
          ),
        ));
  }
}
