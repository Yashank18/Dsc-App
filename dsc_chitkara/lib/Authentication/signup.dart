import 'package:dsc_chitkara/Authentication/login.dart';
import 'package:flutter/material.dart';
import 'dart:ui';



class SignupPage extends StatelessWidget {
   
  const SignupPage({Key key}) : super(key: key);

  Widget _buildPageContent(BuildContext context){
    
    return Container(
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
  
                  title: TextField(
  
                    keyboardType: TextInputType.text,
  
                    style: TextStyle(color: Colors.white),
  
                    decoration: InputDecoration(
  
                      hintText: "Username",
  
                      hintStyle: TextStyle(color: Colors.white70),
  
                      border: InputBorder.none,
  
                      icon: Icon(Icons.lock,color: Colors.white30,)
  
                    ),
  
                  ),
  
                ),
  
                Divider(color: Colors.grey.shade600,),
  
                ListTile(
  
                  title: TextField(
  
                    keyboardType: TextInputType.text,
  
                    style: TextStyle(color: Colors.white),
  
                    decoration: InputDecoration(
  
                      hintText: "Course / Batch",
  
                      hintStyle: TextStyle(color: Colors.white70),
  
                      border: InputBorder.none,
  
                      icon: Icon(Icons.lock,color: Colors.white30,)
  
                    ),
  
                  ),
  
                ),
  
                Divider(color: Colors.grey.shade600,),
  
                ListTile(
  
                  title: TextField(
  
                    keyboardType: TextInputType.emailAddress,
  
                    style: TextStyle(color: Colors.white),
  
                    decoration: InputDecoration(
  
                      hintText: "Email Adress",
  
                      hintStyle:TextStyle(color: Colors.white70),
  
                      border: InputBorder.none,
  
                      icon: Icon(Icons.email,color: Colors.white30,)
  
                    ),
  
                  ),
  
                ),
  
                Divider(color: Colors.grey.shade600,),
  
                ListTile(
  
                  title: TextField(
  
                    keyboardType: TextInputType.text,
  
                    obscureText: true,
  
                    style: TextStyle(color: Colors.white),
  
                    decoration: InputDecoration(
  
                      hintText: "Password",
  
                      hintStyle: TextStyle(color: Colors.white70),
  
                      border: InputBorder.none,
  
                      icon: Icon(Icons.lock,color: Colors.white30,)
  
                    ),
  
                  ),
  
                ),
  
                Divider(color: Colors.grey.shade600,),
  
                ListTile(
  
                  title: TextField(
  
                    keyboardType: TextInputType.text,
  
                    obscureText: true,
  
                    style: TextStyle(color: Colors.white),
  
                    decoration: InputDecoration(
  
                      hintText: " Confirm Password",
  
                      hintStyle:TextStyle(color: Colors.white70),
  
                      border: InputBorder.none,
  
                      icon: Icon(Icons.lock,color: Colors.white30,)
  
                    ),
  
                  ),
  
                ),
  
                Divider(color: Colors.grey.shade600,),
  
                SizedBox(height: 20,),
  
                Row(
  
                  children: <Widget>[
  
                    Expanded(
  
                      child: RaisedButton(
  
                        onPressed: (){},
  
                        color: Colors.cyan,
  
                        child: Text("SignUp",style: TextStyle(color: Colors.white70),),
  
                      ),
  
                    )
  
                  ],
  
                ),
  
                SizedBox(height: 40,),
  
                 new Text("Already Have a Account?"
  
                 ,style: TextStyle(color: Colors.white),
  
                 
  
                 ),
  
                  
  
                  
  
              ],
  
            )
  
          ],
  
        ),
],
     ), );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageContent( context),
    );
  }
}