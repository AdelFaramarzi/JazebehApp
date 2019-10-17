import 'dart:io';

import 'package:jazebeh/components/flu_button.dart';
import 'package:jazebeh/components/form.dart';
import 'package:jazebeh/components/line.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: new AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: new Size.fromHeight(0),
            child: new TabBar(
              indicatorColor: Color(0xff26C6DA),
              unselectedLabelColor: Colors.white60,
              labelColor: Color(0xffffffff),
              tabs: <Widget>[
                Tab(
                  child: new Text(
                    "ورود",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Tab(
                  child: new Text("ثبت نام", style: TextStyle(fontSize: 20)),
                )
              ],
            ),
          ),
        ),
        body: WillPopScope(
          onWillPop: _onWillPop,
                  child: TabBarView(
            children: <Widget>[
              Tab(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Column(
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.all(8),
                        child: FormSign(),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: new FlatButton(
                          onPressed: () {},
                          child: new Text(
                            "ورود",
                            style: TextStyle(
                              fontSize: 21,
                            ),
                          ),
                          color: Color(0xff26C6DA),
                          textColor: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30)),
                        ),
                      ),
                      new GestureDetector(
                        child: FlatButton(
                          textColor: Colors.black,
                          child: new Text("رمزعبور را فراموش کردم!"),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Tab(
                  child: new Padding(
                padding: const EdgeInsets.all(8),
                child: new Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FormSign(),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: FultBtn(
                        child: Text("ثبت نام"),
                        color: Color(0xff26C6DA),
                        onPressed: () {},
                        textColor: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Line(),
                            new Container(
                              child: new Text(
                                "یا",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            Line()
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: FultBtn(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Image.asset(
                              "asset/img/google_icon.png",
                              height: 50,
                              width: 50,
                            ),
                            Text("ورود با گوگل"),
                          ],
                        ),
                        color: Color(0xff000000),
                        onPressed: () {},
                        textColor: Colors.white,
                        iconData: Icons.remove_red_eye,
                      ),
                    )
                  ],
                ),
              ))
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

}

