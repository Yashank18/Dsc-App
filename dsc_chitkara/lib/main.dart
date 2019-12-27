import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import "Authentication/AuthPage.dart";
import 'dart:ui';

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