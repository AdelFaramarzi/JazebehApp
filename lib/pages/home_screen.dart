import 'dart:io';

import 'package:jazebeh/pages/drawer.dart';
import 'package:jazebeh/pages/products_deitaile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  Container ProductList(String imageVal, String heading, String subHeading) {
    return Container(
      width: 160,
      height: 100,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductsDetails(
                    product_details_pic: imageVal,
                    product_details_title: heading,
                    product_details_time: subHeading,
                  )));
        },
        child: Card(
          child: Wrap(
            children: <Widget>[
              Image.asset(
                imageVal,
                fit: BoxFit.cover,
                height: 120,
                width: 160,
              ),
              ListTile(
              
                title: Text(heading , style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    subHeading,
                    maxLines: 3,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
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
    var divheight = MediaQuery.of(context).size.height;
    return new WillPopScope(
      
      
      onWillPop: _onWillPop ,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: MyDrawer(context),
        ),
        body: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Stack(children: <Widget>[
                new Container(
                  height: divheight / 2 * 0.7,
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xff008ba3), Color(0xff62efff)],
                    ),
                    boxShadow: [
                      new BoxShadow(color: Colors.black, blurRadius: 10),
                    ],
                  ),
                  child: new Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: new Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                                _scaffoldKey.currentState.openDrawer();
                              },
                              //       )
                              //  Icon(

                              //   Icons.settings,
                              //   color: Colors.white,
                              // ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: new TextField(
                            
                            controller: TextEditingController(
                             
                            ),
                            decoration: InputDecoration(
                              hintText: 'Serach by Location....',
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 32, vertical: 14),
                                suffixIcon: Material(
                                  elevation: 2,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.black87,
                                  ),
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("City",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        )),
                    new Text(
                      "More",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: new Container(
                  height: 90,
                  child: ListView(
                      scrollDirection: Axis.horizontal, children: cityCards),
                ),
              ),
              new Container(
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ProductList("asset/img/img1.jpg", "Via Appia Antica",
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                    ProductList("asset/img/img2.jpg", "Terme di Diocleziano",
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                    ProductList("asset/img/img3.jpg", "Foro di Traiano",
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                    ProductList("asset/img/img4.jpg", "Baths of Caracalla",
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                    ProductList("asset/img/img5.jpg", "Piazza di Spagna",
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                    ProductList("asset/img/img4.jpg", "Lotus Temple Rd",
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                    ProductList("asset/img/img5.jpg", "Viale delle Terme di Caracalla",
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                  ],
                ),
              ),
            ],
          ),
        )
        )
        );
  }
}
  

List<CityCard> cityCards = [
  CityCard( "Tokyo",  "asset/img/img1.jpg"),
  CityCard( "New York",  "asset/img/img2.jpg"),
  CityCard( "Tehran", "asset/img/img3.jpg"),
  CityCard( "Abu Dhabi",  "asset/img/img4.jpg"),
  CityCard( "Lisbon",  "asset/img/img5.jpg"),
  CityCard( "Bangkok", "asset/img/img5.jpg"),
  CityCard( "Berlin", "asset/img/img5.jpg"),
  CityCard( "Canberra", "asset/img/img5.jpg"),
  CityCard( "Doha", "asset/img/img5.jpg"),
  CityCard( "Islamabad", "asset/img/img5.jpg"),
];

class CityCard extends StatelessWidget {
  final String  title, image;

  CityCard( this.title, this.image);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: InkWell(
          onTap: () {},
          child: new Stack(
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
                child: Image.asset(image, fit: BoxFit.cover),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                width: 60,
                height: 20,
                child: Container(
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        Colors.black,
                        Colors.black.withOpacity(0.3)
                      ])),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
        ],
      );
  }
}
