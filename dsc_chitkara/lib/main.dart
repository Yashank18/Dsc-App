import 'package:dsc_chitkara/Event_home.dart';
import 'package:dsc_chitkara/aboutUs.dart';
import 'package:dsc_chitkara/resources.dart';
import 'package:dsc_chitkara/teampage.dart';
import 'package:flutter/material.dart';
import 'package:dsc_chitkara/Home_page.dart';
import 'splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Developer Student Clubs, Chitkara University",
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => SplashScreen(),
        '/screen0': (BuildContext context) => MyHome(),
        '/screen1': (BuildContext context) => HomeEvents(),
        '/screen2': (BuildContext context) => AboutUs(),
        '/screen3': (BuildContext context) => TeamPage(),
        '/screen4': (BuildContext context) => Resources(),
      },
    );
  }
}
