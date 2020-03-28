import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: "Developer Student Clubs, Chitkara University",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Color.fromRGBO(39, 39, 47, 1),
       child: Center(
         child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Container(child: Image.asset("images/dsc_trans.png",width: 150.0,),
             color: Color.fromRGBO(39, 39, 47, 1),
             ),
             SizedBox(height:70.0),
             Center(child: Text("Welcome to DSC Chitkara",style: TextStyle(color:Color.fromRGBO(55, 239, 187, 1),fontSize: 25.0,fontWeight: FontWeight.bold),),),
             SizedBox(height:20),
             Column(
               children: <Widget>[
                  
                     Card(
                       color: Colors.black,
                       elevation: 8.0,
                      margin: EdgeInsets.symmetric(horizontal:10.0,vertical:6.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                                decoration: new BoxDecoration(
                                    border: new Border(
                                        right: new BorderSide(width: 1.0, color: Colors.white24))),
                                child: Icon(Icons.mood, color: Colors.white),

                              ),
                              title: Text(
                              "Number Of people Recovered",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Row(
                                    children: <Widget>[
                                      Icon(Icons.linear_scale, color: Colors.green),
                                      Text("  Me",style: TextStyle(color:Colors.green),),
                                    ],
                                  ),
                        ),
                     ),
                   
               ],
             ),
             /*Card(
               shape: BeveledRectangleBorder(borderRadius:BorderRadius.circular(5.0)),
               color: Color.fromRGBO(55, 55, 63, 1),
               margin: EdgeInsets.only(top:30,bottom: 80,left:20,right:20),
               child:Column(
                 children: <Widget>[
                   
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: <Widget>[
                       Text("left is the big one here"),
                       Text("Right"),
                         
                     ],
                   ),

                 ],
               ),
             ),*/
           ],
         )
       )
      ),
    );
  }
}