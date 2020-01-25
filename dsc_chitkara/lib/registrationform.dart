import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Authentication/AuthPage.dart';
import 'Events.dart';
import 'home.dart';


String name="Loading";
String emaill="Loading..";
String batchh="Batch";
String uploadevent="random";
String uploademail="random";
String uploaddate="random";

var formkey3 = GlobalKey<FormState>();

class registrationpage extends StatefulWidget {
  registrationpage({Key key,this.event,this.datee}) : super(key: key);
  String event;
  String datee;
  @override
  _registrationpageState createState() => _registrationpageState();
}

class _registrationpageState extends State<registrationpage> {
  @override
  Widget build(BuildContext context) {
FirebaseAuth.instance.currentUser().then((currentUser)=>{
    if(currentUser.email!=null)
    {
      emaill= currentUser.email,
      
      print(emaill)
    }
    else{
      print("error profile")
    }
    
                        
    });

    return new WillPopScope(
      onWillPop: () async => false,
          child: Scaffold(
        appBar: new AppBar(
          leading: new FlatButton(
            child: Icon(Icons.arrow_back_ios,),
            onPressed: (){
               Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => eventpage()),
              );
            },
          ),
          title: new Text('Regster'),
          backgroundColor: Color.fromRGBO(195, 230, 228, 1),
        ),
            body: Form(
             key: formkey3,
              child: Container(
          decoration: new BoxDecoration(
                image: new DecorationImage(image: new AssetImage("images/stars.jpg"),fit: BoxFit.cover)
              ),
          padding: EdgeInsets.all(20.0),
          
          child: Stack(
          children: <Widget>[
              
        ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ListTile(
                        title: TextFormField(
                          
                           validator: (String value){
                            if(value.isEmpty){
                              return'Please enter your Batch';

                            }
                            else{
                             uploadevent= widget.event;
                            }
                          },                        
                          keyboardType: TextInputType.text,
                          style: TextStyle(color: Colors.white),
                          enabled: false,
                          initialValue: widget.event,
                          decoration: InputDecoration(
                            
                            hintStyle: TextStyle(color: Colors.white70),
                            border: InputBorder.none,
                            icon: Icon(Icons.lock,color: Colors.white30,)
                          ),
                          
                        ),
                      ),

                      Divider(color: Colors.grey.shade600,),

                      ListTile(
                        title: TextFormField(
                          
                           validator: (String value){
                             
                            if(value.isEmpty){
                              return'Please enter Your email ';
                            }      
                            else{
                                uploadevent=emaill;
                            }                  
                            
                              
                            
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            
                            hintStyle:TextStyle(color: Colors.white70),
                            border: InputBorder.none,
                            icon: Icon(Icons.email,color: Colors.white30,)
                          ),
                          initialValue: emaill,
                          enabled: false,
                        ),
                      ),
                      Divider(color: Colors.grey.shade600,),
                      ListTile(
                        title: TextFormField(
                          
                           validator: (String value){
                            if(value.length<=2){
                              return 'Password should be more than 6';
                            }                        
                            else{
                              uploaddate=widget.datee;
                            }
                          },        
                          keyboardType: TextInputType.text,
                          
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white70),
                            border: InputBorder.none,
                            icon: Icon(Icons.lock,color: Colors.white30,)
                          ),
                          initialValue: widget.datee,
                          enabled: false,
                        ),
                      ),
                      
                     
                       Divider(color: Colors.grey.shade600,),
                      SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                              onPressed: ()  {
                                Firestore.instance
                                    .collection("users")
                                    .document(widget.event)
                                    .setData({
                                      
                                      "email": emaill,
                                      "event": widget.event,
                                      "date": widget.datee,
                                    });
                                     Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>HomeScreen())
                                );
                                    ;
                              },
                              color: Color.fromRGBO(195, 230, 228, 1),
                              child: Text("Register",style: TextStyle(color: Colors.black),),
                            ),
                          ) 
                          ],
                      ),
                      SizedBox(height: 40,),
                       
                    ],
                  )
                ],
              ),
          ],
         ), 
        ),
            ),
      ),
    );
         
    
  }
}