import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // here added app bar with white color
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                 backgroundColor: Colors.white,
            
                  title: Text("Developer Student Clubs",style: TextStyle(color: Colors.black),),
                  actions: <Widget>[
                      Icon(Icons.person ,color: Colors.black,size: 36.0,),
                      ],
            ),
          //New widget call
             body: newapp() 
        )       
    );
  }
}


class newapp extends StatelessWidget{

@override
  Widget build(BuildContext context) {

      return ListView(
        children: <Widget>[
          Image.asset('assets/dsc.png'),
          //Dsc image added can check it in pubspec.yaml
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              // round bordered container
              borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0),topRight: Radius.circular(100.0)),
            ),
            child: Column(
              // buttons
              children: <Widget>[
                Container(
                  height: 60.0,
                  margin: new EdgeInsets.only(left: 90.0,right: 90.0,top: 60.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  
                  ),
                  child: Center(
                    child: Text("Events",style: TextStyle(fontSize: 25.0),),
                  ),
                  
                ),
                 Container(
                   height: 60.0,
                  margin: new EdgeInsets.only(left: 90.0,right: 90.0,top: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  child: Center(
                    child: Text("Leaderboard",style: TextStyle(fontSize: 25.0),),
                  ),
                  
                ),
                 Container(
                 height: 60.0,
                  margin: new EdgeInsets.only(left: 90.0,right: 90.0,top: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  child: Center(
                    child: Text("Our Team",style: TextStyle(fontSize: 25.0),),
                  ),
                  
                ),
              ],
            )
          )
        ],
      );
  

}
}