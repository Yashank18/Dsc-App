import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart' as prefix0;

class LoginPage extends StatelessWidget {
   
  const LoginPage({Key key}) : super(key: key);

  Widget _buildPageContent(){
    
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.grey.shade500,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 50,),
              //have to add correct image source
              Container(width: 200,child: prefix0.Image.asset("assets/star.jpg"),),
              SizedBox(height: 50,),
              ListTile(
                title: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Email Adress",
                    hintStyle: prefix0.TextStyle(color: Colors.white70),
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
                    hintStyle: prefix0.TextStyle(color: Colors.white70),
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
                      child: Text("Logn",style: prefix0.TextStyle(color: Colors.white70),),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40,),
              Text("Forget your Password?",style: TextStyle(color: Colors.grey.shade500),)
            ],
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageContent(),
    );
  }
}