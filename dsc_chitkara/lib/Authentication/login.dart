import 'package:flutter/material.dart';
import 'dart:ui';



class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      child: ListView(
      children: <Widget>[
        SizedBox(height: 30.0,),
        //have to add image here
        CircleAvatar(child:Image.asset("assets/stars.jpg"),maxRadius: 50,backgroundColor: Colors.transparent,),
        SizedBox(height: 20.0,),
        _buildLoginForm(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: (){},
              child: Text("Sign Up",style:TextStyle(color: Colors.blue,fontSize: 18.0),),
            )
          ],
        )
      ],
      )
    );
  }
}
// main form data
Container _buildLoginForm()
{
  return Container();
}