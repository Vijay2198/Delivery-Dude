import 'package:flutter/material.dart';
import 'package:flutter_app/pages/ItemDetailsPage.dart';
import 'package:flutter_app/pages/ItemOrderPage.dart';
import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/LoginPage.dart';
import 'package:flutter_app/pages/SignUpPage.dart';
import 'package:flutter_app/pages/OpenPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
      home: ItemDetailsPage(),
    ));

    // This is a comment
  // commnet 2