import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:dsc_chitkara/Authentication/AuthPage.dart';

import 'package:flutter/material.dart' as prefix0;

class LoginPage extends StatelessWidget {
   
  const LoginPage({Key key}) : super(key: key);

  Widget _buildPageContent(BuildContext context){
    
    return Scaffold(
     appBar: new AppBar(
        leading: new FlatButton(
          child: Icon(Icons.arrow_back_ios,),
          onPressed: (){
             Navigator.push(
              context,
               MaterialPageRoute(builder: (context) => Auth()),
            );
          },
        ),
        title: new Text('Login Page'),
        backgroundColor: Color.fromRGBO(195, 230, 228, 1),
      ),
     body: Container(
       decoration: new BoxDecoration(
          image: new DecorationImage(image: new AssetImage("images/stars.jpg"),fit: BoxFit.cover)
        ),
      padding: EdgeInsets.all(20.0),
     
      child: Form(
              child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 50,),
                //have to add correct image source
                
                SizedBox(height: 50,),
                ListTile(
                  title: TextFormField(
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
                  title: TextFormField(
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
                        color: Color.fromRGBO(195, 230, 228, 1),
                        child: Text("Login",style: prefix0.TextStyle(color: Colors.white70),),
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
      ),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageContent(context),
    );
  }
}