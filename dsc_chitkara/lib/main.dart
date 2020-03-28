import 'package:dsc_chitkara/events.dart';
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
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(52, 52, 62, 1),
        title: Text("Developer Student Clubs"),
      ),
      body: Container(
        color: Color.fromRGBO(39, 39, 47, 1),
       child: Center(
         child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Container(child: Image.asset("images/dsc_trans.png",width: 150.0,),
             color: Color.fromRGBO(39, 39, 47, 1),
             ),
             SizedBox(height:50.0),
             Column(
               children: <Widget>[
                  
                     Card(
                       color: Color.fromRGBO(52, 52, 62, 1),
                       elevation: 8.0,
                      margin: EdgeInsets.symmetric(horizontal:10.0,vertical:6.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                               
                                child: Icon(Icons.event, color: Colors.green,size: 50,),

                              ),
                              title: FlatButton(
                                onPressed: (){
                                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventPage()),
                            );
                                },
                                padding: EdgeInsets.only(left: 0),
                              child:Text("Upcoming Events",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                              
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.linear_scale, color: Colors.green),
                                      Text("   April - August 2020",style: TextStyle(color:Colors.green),),
                                    ],
                                  ),
                        ),
                     ),
                     Card(
                       color: Color.fromRGBO(52, 52, 62, 1),
                       elevation: 8.0,
                      margin: EdgeInsets.symmetric(horizontal:10.0,vertical:19.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                                
                                   
                                child: Icon(Icons.group_work, color: Colors.red,size: 50,),

                              ),
                              title: FlatButton(
                                padding: EdgeInsets.only(left: 0),
                              child:Text("Our Team",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                              
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.linear_scale, color: Colors.red),
                                      Text("   2020-2021",style: TextStyle(color:Colors.red),),
                                    ],
                                  ),
                        ),
                     ),
                     Card(
                      color: Color.fromRGBO(52, 52, 62, 1),
                       elevation: 8.0,
                      margin: EdgeInsets.symmetric(horizontal:10.0,vertical:6.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                                
                                child: Icon(Icons.info_outline, color: Colors.blue.shade700,size: 50,),

                              ),
                              title: FlatButton(
                                padding: EdgeInsets.only(left: 0),
                              child:Text("About Us",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                              
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.linear_scale, color: Colors.blue.shade700),
                                      Text("   Our Story",style: TextStyle(color:Colors.blue.shade700),),
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