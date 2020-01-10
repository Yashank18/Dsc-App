import 'package:flutter/material.dart';
import "Authentication/AuthPage.dart";
import 'Authentication/login.dart';
import 'dart:ui';

import 'Authentication/signup.dart';

import 'home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.

Map<int,Color> color={
  50:Color.fromRGBO(195, 230, 228, .1),
  100:Color.fromRGBO(195, 230, 228, .2),
  200:Color.fromRGBO(195, 230, 228, .3),
  300:Color.fromRGBO(195, 230, 228, .4),
  400:Color.fromRGBO(195, 230, 228, .5),
  500:Color.fromRGBO(195, 230, 228, .6),
  600:Color.fromRGBO(195, 230, 228, .7),
  700:Color.fromRGBO(195, 230, 228, .8),
  800:Color.fromRGBO(195, 230, 228, .9),
  900:Color.fromRGBO(195, 230, 228, 1),

};
 

  @override
  Widget build(BuildContext context) {
     MaterialColor colorCustom =MaterialColor(0xFFC3E6E4, color);
    return MaterialApp(
      home: HomeScreen(),
      theme: new ThemeData(
        primarySwatch: colorCustom,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/auth':(BuildContext context)=>Auth(),
        '/home':(BuildContext context)=>MyHomePage(),
      }
    );
  }
}



