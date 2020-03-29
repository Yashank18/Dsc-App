import 'package:dsc_chitkara/events.dart';
import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {
  registerPage({Key key}) : super(key: key);

  @override
  _registerPageState createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        backgroundColor: Color.fromRGBO(52, 52, 62, 1),
        leading: FlatButton(child: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: (){
                                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventPage()),
                            );
                                },),
        title: Text("Registration Form"),
        
      ),
      body: Container(
         color: Color.fromRGBO(39, 39, 47, 1),
         child: ListView(
           children: <Widget>[
             SizedBox(height: 35,),
             Center(child:Text("Register Yourself",style: TextStyle(color: Color.fromRGBO(251, 219, 134, 1),fontSize: 30.0),)),
             SizedBox(height:40),
             Card(
                       color: Color.fromRGBO(52, 52, 62, 1),
                       elevation: 8.0,
                      margin: EdgeInsets.symmetric(horizontal:10.0,vertical:6.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                               
                                child: Icon(Icons.person_pin, color: Colors.green,size: 50,),

                              ),
                              title: TextField(
                                decoration: new InputDecoration(
                                  hintText: "  Roll Number",
                                  hintStyle: new TextStyle(fontSize:16,color:Colors.white30)
                                ),
                              ),
                              
                            
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.linear_scale, color: Colors.green),
                                      Text("  Roll Number",style: TextStyle(color:Colors.green),),
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
                                
                                   
                                child: Icon(Icons.alternate_email, color: Colors.red,size: 50,),

                              ),
                              title:TextField(
                                decoration: new InputDecoration(
                                  hintText: "  Email",
                                  hintStyle: new TextStyle(fontSize:16,color:Colors.white30)
                                ),
                              ),
                              
                            
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.linear_scale, color: Colors.red),
                                      Text("   Use Chitkara email Only",style: TextStyle(color:Colors.red),),
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
                                
                                child: Icon(Icons.event_seat, color: Colors.blue.shade700,size: 50,),

                              ),
                              title:  TextField(
                                decoration: new InputDecoration(
                                  hintText: "  Event",
                                  hintStyle: new TextStyle(fontSize:16,color:Colors.white30)
                                ),
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
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                          child: RaisedButton(
                          onPressed: () => {},
                                 
                          textColor: Colors.black,
                          color: Color.fromRGBO(251, 219, 134, .9),
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 20),
                )),
                      ),
           ],
         ),
      ),
    );
  }
}