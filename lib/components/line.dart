import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Container(
                width: 100,//MediaQuery.of(context).size.width,
                // margin:
                //     const EdgeInsets.only(left: 50.0, right: 50.0, top: 5.0),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        margin: EdgeInsets.all(8.0),
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.25)),
                      ),
                    )
                
                  ]
                )
                    );
  }
}