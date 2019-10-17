import 'package:flutter/material.dart';

class ProductsDetails extends StatefulWidget {
  final product_details_title;
  final product_details_pic;
  final product_details_time;

  ProductsDetails(
      {this.product_details_pic,
      this.product_details_time,
      this.product_details_title});
  @override
  _ProductsDetailsState createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  silverAppbar() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height / 2 * 0.6,
            floating: true,
            pinned: true,
            elevation: 0,
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: new Text(
                widget.product_details_title,
                style: TextStyle(color: Colors.white),
              ),
              background: Image.asset(
                widget.product_details_pic,
                fit: BoxFit.cover,
              ),
            ),
          )
        ];
      },
      body: body1(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: silverAppbar(),
      );
  }

  Widget body1() {
    return SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(2),
        child: Card(
          elevation: 5,
              child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: new Text(widget.product_details_time, textAlign: TextAlign.justify,),
              ),
              new Container(
                
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Image.asset(widget.product_details_pic, fit: BoxFit.fill,),
              ),
               Padding(
                padding: const EdgeInsets.all(4),
                child: new Text(widget.product_details_time, textAlign: TextAlign.justify,),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
