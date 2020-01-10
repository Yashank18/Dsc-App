import 'package:dsc_chitkara/pastevents.dart';
import 'package:dsc_chitkara/profile.dart';
import 'package:dsc_chitkara/teampage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import "Authentication/AuthPage.dart";
import 'Authentication/login.dart';
import 'dart:ui';




class HomeScreen extends StatelessWidget {
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
      home: MyHomePage(),
      theme: new ThemeData(
        primarySwatch: colorCustom,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}



class MyHomePage extends StatefulWidget {
 MyHomePage({Key key}) : super(key: key);
//update the construstor to include uid
  @override
  
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyHomePage> {


 
  @override
   initState()
{
  FirebaseAuth.instance.
  currentUser().
  then((currentUser)=>{
    if(currentUser==null)
    {
      Navigator.pushReplacementNamed(context, "/auth"),
    }
    else
    {
      Navigator.push(
              context,
               MaterialPageRoute(builder: (context) => HomeScreen()),
            ),
                        
    }
  })
  .catchError((err)=>print(err));
  super.initState();
}


  Widget build(BuildContext context) {
     
   return  Scaffold(
          appBar: new AppBar(
            title: new Text("DSC"),
            actions: <Widget>[
              
              FlatButton(
                child: CircleAvatar(
                  child: Text("Y"),
                ),
                onPressed: (){
                   Navigator.push(
                      context,
                        MaterialPageRoute(builder: (context) => profilePage()),
                         );
                },
              )
              
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
                  
                  color: Color.fromRGBO(195, 230, 228, 1),
                  borderRadius: new BorderRadius.only(topLeft: const Radius.circular(120.0),topRight: const Radius.circular(120.0)),
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
                         child: new Text("Upcoming Events",textAlign: TextAlign.center,
                            style: TextStyle( fontSize: 24.0,),),
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
                         child: new Text("Past Events",textAlign: TextAlign.center,
                            style: TextStyle(
                                   fontSize: 24.0
                                 ),),
                  
                        onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>pasteventpage())
                              );
                        },
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
                         child: new Text("Our Team",textAlign: TextAlign.center,
                            style: TextStyle(
                                   fontSize: 24.0
                                 ),
                        
                              ),
                  
                        onPressed: (){
                          Navigator.push(
                      context,
                        MaterialPageRoute(builder: (context) => teampage()),
                         );
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 50.0),)
                  ],
                ),
              )
            ],
           ),
         );
       
   
  }
}