import 'package:flutter/material.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';
import 'package:flutter_app/pages/LoginPage.dart';
import 'package:flutter_app/widgets/BestDealWidget.dart';
import 'package:flutter_app/widgets/BottomNavBarWidget.dart';
import 'package:flutter_app/widgets/PopularItemsWidget.dart';
import 'package:flutter_app/widgets/SearchWidget.dart';
import 'package:flutter_app/widgets/TopMenus.dart';

class OpenPage extends StatefulWidget {
  @override
  _OpenPageState createState() => _OpenPageState();
}
class _OpenPageState extends State<OpenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/openpagebg.png"),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/images/logo.png"),
                  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 50),
                        RaisedButton(
                            color: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            onPressed: () {},
                            child:
                                Text('LogIn', style: TextStyle(fontSize: 20, color: Colors.deepOrangeAccent,))),
                        RaisedButton(
                            onPressed: () {},
                            color: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Text('SignUp',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.deepOrangeAccent))),
                      ],
                    ),
                  ),
                ]),
          ),
        );
  }
}
