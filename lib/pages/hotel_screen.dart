import 'package:jazebeh/components/rating_bar.dart';
import 'package:jazebeh/data/hotel_data.dart';
import 'package:flutter/material.dart';

import 'hotel_detail.dart';

class HotelScreen extends StatelessWidget {

  
  Widget hotelCart() {
    return ListView.builder(
        itemCount: dummyHote.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HotelDetails(
                          hotelData: dummyHote[index],
                        )));
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(1, 10),
                      blurRadius: 15,
                    )
                  ],
                ),
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: new Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: const Radius.circular(15),
                                topLeft: const Radius.circular(15)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Text(
                                dummyHote[index].title,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                dummyHote[index].subTitle,
                                style: TextStyle(fontSize: 11),
                              ),
                              RatingBar(
                                rating: dummyHote[index].ratingBar,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: new Container(
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            image: DecorationImage(
                                image: NetworkImage(dummyHote[index].image),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    backgroundColor: Color(0xfff2f2f2),
    appBar: new AppBar(
      backgroundColor: Colors.black,
      title: new Text(
        "Hotel",
        style: TextStyle(color: Colors.white),
      ),
    ),
    body: hotelCart());
      } 
}
