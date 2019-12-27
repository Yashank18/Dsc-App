import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import "Authentication/AuthPage.dart";
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyHomePage> {

 
  @override
  Widget build(BuildContext context) {

     
   return  Scaffold(
          appBar: new AppBar(
            title: new Text("DSC"),
            actions: <Widget>[
              
              FlatButton(child: Icon(Icons.account_circle,size: 36.0,),onPressed: (){ Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => Auth()),
                                            );},),
              
            ],
          ),
           body: new Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 70.0),),
              Image.asset("images/dsc.png",width: 320.0),
              Padding(
                padding: EdgeInsets.all(20.0),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                
                decoration: new BoxDecoration(
                  color: Colors.blue,
                  
                  borderRadius: new BorderRadius.only(topLeft: const Radius.circular(50.0),topRight: const Radius.circular(40.0)),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50.0,),
                    Container(
                        height: 70.0,
                        width: 200.0,
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.all( const Radius.circular(75.0)),
                          color: Colors.white,
                        ),
                      child: FlatButton(
                         child: new Text("Upcoming Events",
                            style: TextStyle(
                                   fontSize: 24.0
                                 ),
                        
                              ),
                  
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(height: 43.0,),
                    Container(
                        height: 70.0,
                        width: 200.0,
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.all( const Radius.circular(75.0)),
                          color: Colors.white,
                        ),
                      child: FlatButton(
                         child: new Text("Past Events",
                            style: TextStyle(
                                   fontSize: 24.0
                                 ),
                        
                              ),
                  
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(height: 43.0,),
                    Container(
                        height: 70.0,
                        width: 200.0,
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.all( const Radius.circular(75.0)),
                          color: Colors.white,
                        ),
                      child: FlatButton(
                         child: new Text("Upcoming Events",
                            style: TextStyle(
                                   fontSize: 24.0
                                 ),
                        
                              ),
                  
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(height: 8.5,)
                  ],
                ),
              )
            ],
           ),
         );
       
   
  }
}